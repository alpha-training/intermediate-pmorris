pub fn add(left: u64, right: u64) -> u64 {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}

// Minimal kdb+ FFI header
#[repr(C)]
pub struct K {
    pub t: i8,
    pub attr: i8,
    pub refcount: i16,
    pub n: i32,
    pub data: *mut u8, // vector payload
}

// C functions from k.h
unsafe extern "C" {
    fn ktn(t: i8, n: i32) -> *mut K;      // create list
    fn r1(x: *mut K) -> *mut K;           // increment refcount
}

// q type for generic list
const KT_LIST: i8 = 0;

#[unsafe(no_mangle)]
pub unsafe extern "C" fn rustReverse(x: *mut K) -> *mut K {
    // If it's an atom (t >= 0), return it unchanged
    if (*x).t >= 0 {
        return r1(x);
    }

    let count = (*x).n;

    // allocate an output list of the same type
    let out = ktn((*x).t, count);

    // source and destination element pointers
    let src = (*x).data as *mut *mut K;
    let dest = (*out).data as *mut *mut K;

    for i in 0..count {
        *dest.add(i as usize) = r1(*src.add((count - 1 - i) as usize));
    }

    out
}
