use io
use conv

//
//  Adapted from Blitz::contrast in QImageBlitz, which was available
//  under the following terms:
//
//     Copyright (C) 1998, 1999, 2001, 2002, 2004, 2005, 2007
//         Daniel M. Duley <daniel.duley@verizon.net>
//        (C) 2000 Josef Weidendorfer <weidendo@in.tum.de>
//        (C) 1999 Geert Jansen <g.t.jansen@stud.tue.nl>
//
//        Redistribution and use in source and binary forms, with or without
//        modification, are permitted provided that the following conditions
//        are met:
//
//        1. Redistributions of source code must retain the above copyright
//        notice, this list of conditions and the following disclaimer.
//        2. Redistributions in binary form must reproduce the above copyright
//        notice, this list of conditions and the following disclaimer in the
//        documentation and/or other materials provided with the distribution.
//
//        THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
//        IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
//        OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
//        IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
//        INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
//        NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES LOSS OF USE,
//        DATA, OR PROFITS OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//        THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//        (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
//        THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//


convertRGB2HSV(r: int, g: int, b:int): int, int, int {
    h:int   = 0
    max:int = r                               // maximum RGB component
    whatmax:int = 0                           // r=>0, g=>1, b=>2
    if (g > max) { max = g whatmax = 1; }
    if (b > max) { max = b whatmax = 2; }
    min:int = r                               // find minimum value
    if (g < min) min = g
    if (b < min) min = b
    delta:int = max-min
    v:int = max                                   // calc value
    s:int = 0
    if (max != 0)
        s = (510*delta+max)/(2*max)
    if (s == 0) {
        h = -1                                // undefined hue
    } else {
        if (whatmax == 0) {  // red is max component
            if (g >= b)
                h = (120*(g-b)+delta)/(2*delta)
            else
                h = (120*(g-b+delta)+delta)/(2*delta) + 300
        } else if (whatmax == 1) { // green is max component
            if (b > r)
                h = 120 + (120*(b-r)+delta)/(2*delta)
            else
                h = 60 + (120*(b-r+delta)+delta)/(2*delta)
        } else { // blue is max component
            if (r > g)
                h = 240 + (120*(r-g)+delta)/(2*delta)
            else
                h = 180 + (120*(r-g+delta)+delta)/(2*delta)
        }
    }

    return h, s, v
}

convertHSV2RGB(h: int, s: int, v:int): int, int, int {
    if (h < -1 | s > 255 | v > 255) {
        return -1, -1, -1
    }

    r:int = v
    g:int = v
    b:int = v
    if (s > 0 & h != -1) {
        if (h >= 360)
            h = h % 360
        f:int = h % 60
        h = h/60
        p:int = (2*v*(255-s)+255)/510
        if ( (h % 2) == 1) {
            q:int = (2*v*(15300-s*f)+15300)/30600

            if (h == 1) {
                return q, v, p
            } else if (h == 3) {
                return p, q, v
            } else { // h == 5
                return v, p, q
            }
        } else {
            t:int = (2*v*(15300-(s*(60-f)))+15300)/30600
            if (h == 0) {
                return v, t, p
            } else if (h == 2) {
                return p, v, t
            } else { // h = 4
                return t, p, v
            }
        }
    }
    return r, g, b
}


contrastAndSharpen(image: int[], weight:int) {
    // Precalculated increment values for HSV contrast. Saves some expensive
    // floating point math. These are half the integer results of:
    //
    //  alpha*(alpha*(sin(M_PI*(brightness-alpha))+1.0)-brightness)
    //
    // where alpha is 0.5+M_EPSILON and brightness is the percentage for values
    // ranging from 0 to 255, (Qt compatible HSV brightness values). The other
    // half of the lookup table is the inverse of these values. I am so clever :)
    // (mosfet)
    //
    contrast_table: int[] = (
        0, 1, 1, 2, 3, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9, 9,
        10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17,
        17, 18, 18, 19, 19, 19, 20, 20, 21, 21, 21, 22, 22, 22, 23,
        23, 23, 24, 24, 24, 24, 25, 25, 25, 25, 25, 26, 26, 26, 26,
        26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27,
        27, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 24, 24, 24,
        23, 23, 23, 22, 22, 21, 21, 20, 20, 20, 19, 18, 18, 17, 17,
        16, 16, 15, 14, 14, 13, 12, 11, 11, 10, 9, 8, 7, 7, 6, 5,
        4, 3, 2, 1, 0
    )

    c: int = 0
    while (c < length(image)) {
        h: int, s:int, v: int = convertRGB2HSV(image[c], image[c+1], image[c+2])
        if (v > 127) {
            v = v + contrast_table[v-128] + weight
            if (v > 255)
                v = 255
        } else {
            v = v - contrast_table[v] - weight
            if (v < 0)
                v = 0
        }

        r: int, g: int, b: int = convertHSV2RGB(h, s, v)
        image[c]     = r
        image[c + 1] = g
        image[c + 2] = b

        c = c + 3
    }
}

main(args: int[][]) {
    PIXELS: int = 5000000

    // We read stuff from standard input -- we will be run on ourself
    // by the test script

    buffer: int[PIXELS * 3]

    // Just gen it cyclically, with different growth rates.
    r: int = 0
    g: int = 0
    b: int = 0
    i: int = 0
    while (i < (length(buffer))) {
        buffer[i] = r
        buffer[i + 1] = g
        buffer[i + 2] = b
        r = (r + 1) % 256
        g = (g + 2) % 256
        b = (b + 3) % 256
        i = i + 3
    }

    contrastAndSharpen(buffer, 12)

    // print a sample of output for checking
    i = 0
    while (i + 2 < length(buffer)) {
        print("@")
        println(unparseInt(i))
        println(unparseInt(buffer[i]))
        println(unparseInt(buffer[i+1]))
        println(unparseInt(buffer[i+2]))
        i = i + 3 + i/3
    }
}
