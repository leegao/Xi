test(a:int):bool {
    
    if (a) {
        p1(1)
    } else {
        p2(2)
    }

    if (a)
        if (b)
            p1(1)
        else
            p2(2)

    while (a) p1(1)

    while (a) {
        p1(1)
    	return 42
    }


    a:int
    b:int = 43

    a = 54
}
