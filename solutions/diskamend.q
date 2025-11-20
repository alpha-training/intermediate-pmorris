diskAmend:{[fp;index;newData]
    if[1=count index;index:enlist index];
    @[fp;index;:;newData]
    }