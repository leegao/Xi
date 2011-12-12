use io;
use conv;

// An implementation of Turing's "bombe" attack on the Enigma cipher.
// Essentially, given a crib, it's possible to figure out the position of the
// rotors independently from plugboard (which has far more settings); this does
// involve bruteforce, by 26^3 is doable even with electromechanical means.
//
// (With rotors known, the plugboard can be reverse-engineered by hand...)
//
// This was originally a student solution to a homework
// given in CSC290, Fall 2002 @ University of Rochester
//
// The crib from which the loops were extracted as:
//             1         2        3          4         5
//   0123456789012345678901234567890123456789012345678901234567
//   theenigmacipheriscertainlystrongbutnotwithoutitsweaknesses
//   JCJYROSNHZXNTNGQPXHADDUSNKCGWZEOQFVLBDLFFDZQLJSHYMFNHWLYXY

toLower(c: int): int {
    if (c >= 'A' & c <= 'Z') {
        return c - 'A' + 'a';
    }
    return c;
}

///////////////////////////////////////////////////////////////////////////////
/// Rotor

makeInverse(base: int[], inv: int[]) {
    c: int = 0;
    while (c < 26) {
        //We have c->base[c], inv has base[c] going to c.
        inv[base[c]] = c;
        c = c + 1;
    }
}

// Rotor encoding: forward map, reverse map, position
makeRotor(sig: int[]): int[][], int[][], int {
    forward:  int[26][26]
    backward: int[26][26]

    base: int[26];

    c: int = 0;
    while (c < 26) {
        cd: int = toLower(sig[c]) - 'a';
        base[c] = cd;
        c = c + 1;
    }

    inv: int[26];

    rot: int = 0;
    while (rot < 26) {
        //Fill in forward direction for this..
        c = 0;
        while (c < 26) {
            forward[rot][c] = base[c];
            c = c + 1;
        }

        //Make inverse..
        makeInverse(base, inv);

        //Fill in backward
        c = 0;
        while (c < 26) {
            backward[rot][c] = inv[c];
            c = c + 1;
        }

        //Simulate rotation..
        first:int = (base[0] - 1 + 26)%26;
        pos:int = 1;
        while (pos < 26) {
            base[pos-1] = (base[pos] - 1 + 26)%26;
            pos = pos + 1;
        }

        base[25] = first;

        rot = rot + 1;
    }

    return forward, backward, 0;
}

rotorEncryptForward(forward: int[][], backward: int[][], pos: int, letter: int): int {
    return forward[pos][letter];
}

rotorEncryptBack(forward: int[][], backward: int[][], pos: int, letter: int): int {
    return backward[pos][letter];
}

rotorSetPosition(forward: int[][], backward: int[][], oldPos: int, pos: int): int[][], int[][], int {
    return forward, backward, pos;
}

///////////////////////////////////////////////////////////////////////////////
/// Reflector

// This is just a permutation, so its state is an int[]

makeReflector(encoding: int[]): int[] {
    perm:int[26];

    //Extract the base permutation.
    c: int = 0;
    while (c < 26) {
        cd: int = toLower(encoding[c])-'a';
        perm[c] = cd;
        c = c + 1;
    }
    return perm;
}

reflectorEncrypt(perm: int[], l:int): int {
    return perm[l];
}

main(a: int[][]) {
   loops: int[][] = (
    (12, 27, 6, 57, 25, 51, 52, -1),
    (12, 27, 6, 55, 25, 51, 52, -1),
    (12, 46, 47, -1),
    (12, 27, 6, 16, 11, 52, -1)
   );

    //Setup components
    f1: int[][], b1: int[][], p1: int = makeRotor("EKMFLGDQVZNTOWYHXUSPAIBRCJ");
    f2: int[][], b2: int[][], p2: int = makeRotor("AJDKSIRUXBLHWTMCQGZNPYFVOE");
    f3: int[][], b3: int[][], p3: int = makeRotor("BDFHJLCPRTXVZNYEIWGAKMUSQO");
    mb: int[] = makeReflector("YRUHQSLDPXNGOKMIEBFZCWVJAT");

    pos: int = 0;
    while (pos<26*26*26) {
        //Guess where the first letter in the loop goes to..
        guess: int = 0;
        while (guess < 26) {
            allMatch: bool = true;

            loop: int = 0;
            while (loop < length(loops)) {
                l: int = guess;
                //Try to go through the possible values..
                loopPos: int = 0;
                while (loops[loop][loopPos] != -1) {
                    epos: int = pos + loops[loop][loopPos];
                    
                    // this was much cleaner in i9 with first-class tuples
                    f1': int[][], b1': int[][], p1': int = rotorSetPosition(f1, b1, p1, epos % 26);
                    f1 = f1' b1 = b1' p1 = p1'
                    f2': int[][], b2': int[][], p2': int = rotorSetPosition(f2, b2, p2, (epos/26) % 26);
                    f2 = f2' b2 = b2' p2 = p2'
                    f3': int[][], b3': int[][], p3': int = rotorSetPosition(f3, b3, p3, (epos/(26*26) % 26));
                    f3 = f3' b3 = b3' p3 = p3'
                    l = rotorEncryptForward(f1, b1, p1, l);
                    l = rotorEncryptForward(f2, b2, p2, l);
                    l = rotorEncryptForward(f3, b3, p3, l);
                    l = reflectorEncrypt(mb, l);
                    l = rotorEncryptBack(f3, b3, p3, l);
                    l = rotorEncryptBack(f2, b2, p2, l);
                    l = rotorEncryptBack(f1, b1, p1, l);
                    loopPos = loopPos + 1;
                }

                if (l != guess)
                    allMatch = false;

                loop = loop + 1;
            } // while loop

            if (allMatch) {
                posStr: int[3];
                posStr[0] = (pos%26)+'A';
                posStr[1] = ((pos/26)%26)+'A';
                posStr[2] = ((pos/(26*26))%26)+'A';
                print ("MATCH At rotor pos:");
                print (posStr);
                print (" first comes in from:");
                guessStr:int[1];
                guessStr[0] = guess+'A';
                println(guessStr);
            }

            guess = guess + 1;
        } // while guess

        pos = pos + 1;
    } // while pos
}
