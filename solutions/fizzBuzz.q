fizzBuzz:{[x]
    a:1+til x;
    L:(``Fizz`Buzz`FizzBuzz) sum (1;2)*(0=a mod/:3 5);
    L:(`$string a)^L;
    a!L
    }