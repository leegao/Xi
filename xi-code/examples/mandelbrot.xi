// Xi Graphical Mandelbrot Set Explorer
// Spring 2011.
// Aleksey Kliger, Sunny Gleason, Michael Clarkson, Andrew Myers. Spring 2001.

use qt
use io
use conv
use assert

WINSIZE:int = 256
MAXITER:int = 2000
HISTLEN:int = 2001 // MAXITER+1
maxiter:int = 100
GROW_ITER_PERCENT:int = 1
SCALEROOT:int = 4096 // square root of the fixed-point scaling factor
scale:int
final_size:int = 200000
buffer:int = 0
done:bool = false

RAMPSIZE:int = 8
RAMPS:int = 12

size, zoom:int
x_offset, y_offset:int
x_final, y_final:int

histogram: int[HISTLEN]
colors: Color[HISTLEN]

plots: int[2][][]

// if done, plots[buffer] is where completed frame is for redraws. If !done,
// calculations are done in plots[buffer] and the last completed frame is in
// plots[1-buffer]
// workaround for bugs in depth 2 initialization.

mkMatrix(d: int): int[][] {
    arr: int[d][]
    c: int
    while (c < d) {
	row: int[d]
	arr[c] = row
	c = c + 1
    }
    return arr
}

setupGlobals() {
    scale = SCALEROOT*SCALEROOT
    size = 6*scale // initial size is 6x6
    zoom = size/WINSIZE
    final_size = 200000
    buffer = 0
    done = false
    i:int = 0
    while (i < 2) {
	buf: int[][] = mkMatrix(WINSIZE+1)
	// buf: int[WINSIZE+1][WINSIZE+1] // this should work instead
	plots[i] = buf
	i = i + 1
    }
}

main(origArgs:int[][]) {
    setupGlobals()
    theApp:QApplication, args:int[][] = qapplication(origArgs)
    choice:int = 0
    if (length(args) >= 2) {
	c:int, _ = parseInt(args[1])
	choice = c
    }
    if (choice == 8) {
// "Another Mini-Mandelbrot"
	x_offset = -2670932
        y_offset = 17309052
	final_size = 200000
    } else if (choice == 1) {
// "Seahorse valley"
	x_offset = -12560912
        y_offset = 1677722
	final_size = 20000
    } else if (choice == 2) {
// Quad Spiral Valley
	x_offset = 4563275
        y_offset = 8073700
	final_size = WINSIZE*2
    } else if (choice == 3) {
// "Scepter Valley"
	x_offset = -22960316
        y_offset = 83888
	final_size = 10000
    } else if (choice == 4) {
// "Mini-Mandelbrot"
	x_offset = -29490000
        y_offset = 0
	final_size = 400000
    } else if (choice == 5) {
// "Triple Spiral Valley"
	x_offset = -1476396
        y_offset = 10978300
	final_size = 20000
    } else if (choice == 7) {
// another spot in Seahorse Valley
	x_offset = -11884460
        y_offset = 5703649
	final_size = WINSIZE*2
    } else {
	x_offset = 0; y_offset = 0; final_size = size
    }
    x_offset = x_offset - size/2
    y_offset = y_offset - size/2
    x_final = x_offset + size
    y_final = y_offset + size

// set up UI
    f:MdbWidget = new MdbWidget.init()
    f.show()

    c:MdbCalc = new MdbCalc.init(f)
    c.setSingleShot(false)
    c.setInterval(5)
    c.start()
    theApp.exec()
}

update_maxiter() {
  i: int = maxiter - 5
  count: int = 0
  while (i < maxiter) {
    count = count + histogram[i]
    i = i + 1
  }
  if ((10000*count)/WINSIZE/WINSIZE > GROW_ITER_PERCENT) {
    maxiter = (maxiter*3)/2
    if (maxiter > MAXITER) maxiter = MAXITER
    print("maxiter = ")
    print(unparseInt(maxiter))
    print("\n")
  }
}

reset_histogram() {
  i: int = 0
  while (i <= maxiter) {histogram[i] = 0; i = i + 1 }
}

print_histogram() {
  i: int = 0
  while (i <= maxiter) {
    if (histogram[i] != 0) {
      print(unparseInt(i))
      print(":")
      print(unparseInt(histogram[i]))
      print(" ")
      i = i + 1
    }
  }
  print("\n")
}

class MdbCalc extends QTimer {
    w:MdbWidget
    i,j,curx,cury:int

    init(w_:MdbWidget):MdbCalc {
	w = w_
	curx = x_offset; cury = y_offset
	i = 0; j = 0
	reset_histogram()
	return this
    }


    timeout() {
	work_unit:int = 2000 // how many pixels to compute per UI check
	if (done) {return}
	while (!done & work_unit>0) {
	    calc()
	    work_unit = work_unit - 1
	}
    
	if (!done) {return}
	w.update(qrect(0, 0, WINSIZE, WINSIZE))
	//print_histogram()
	size = size/2
	print("current size = ")
	print(unparseInt(size))
	print("\n")
	if (size <= final_size) { stop(); return }
	zoom = zoom/2
	x_offset = x_offset + size/2
	y_offset = y_offset + size/2
	x_final = x_offset + size
	y_final = y_offset + size
	curx = x_offset; cury = y_offset
	i = 0; j = 0
	update_maxiter()
	reset_histogram()
	done = false
	buffer = 1 - buffer
    }

    calc() {
	plot: int[][] = plots[buffer]
	if (i < WINSIZE) {
	    if (j < WINSIZE) {
		plot[i][j] = mandelbrot(curx, cury)
		cury = cury + zoom
		j = j + 1
	    } else {
		curx = curx + zoom
		cury = y_offset
		j = 0
		i = i + 1
	    }
	} else {
	    done = true
	}
    }
}

class MdbWidget extends QWidget {
    init():MdbWidget {
        setWindowTitle(qs("Mandelbrot"))
        setFixedSize(qsize(WINSIZE, WINSIZE))
        return this
    }

    paintEvent(pe: QPaintEvent) {
	pe.accept()
	p: QPainter = qpainter(this)

	buf:int
	if (done) buf = buffer
	else buf = 1-buffer

	plot: int[][] = plots[buf]
	i:int = 0
	j:int = 0
	while (i < WINSIZE) {
	    j = 0
	    while (j < WINSIZE) {
		co:Color = assign_color(plot[i][j])
		p.setPen  (qpen   (qcolor (co.r, co.g, co.b)))
		p.setBrush(qbrush (qcolor (co.r, co.g, co.b)))
		p.fillRect(qrect(i,j,2,2), p.brush())
		j = j + 1
	    }
	    i = i + 1
	}
	p.end()
    }
}

class Color {
  r,g,b: int
  init(r_: int, g_: int, b_: int): Color { r = r_; g = g_; b = b_; return this}
}

wheel(i: int): int { // assumes RAMPS = 12
    j: int = i % 12
    if (j == 5 | j == 11) {return 128} // ideally 128; 192 for gamma correction
    else if (j < 5) {return 255}
    else {return 0}
}

base_color(i: int): Color {
    return new Color.init(wheel(i+6), wheel(i+10), wheel(i+2))
}

// Return the color that is used to color pixels that take
// "iterations" iterations to escape.
assign_color(iterations: int): Color {
    c: Color = colors[iterations]
    if (c != null) {return c}
    if (iterations == maxiter) { c = new Color // black
			         colors[maxiter] = c
                                 return c }
    ramp_end:int = (iterations/RAMPSIZE) % RAMPS
    index:int = iterations % RAMPSIZE
    ramp_start:int = ((iterations/RAMPSIZE)/RAMPS) % RAMPS
    e: Color = base_color(ramp_end)
    s: Color
    if (ramp_start == 0) s = new Color
    else s = base_color(ramp_start)
    s.r = s.r/2; s.g = s.g/2; s.b = s.b/2
    r: int = s.r + (e.r - s.r) * index / (RAMPSIZE-1) // interpolate the ramp
    g: int = s.g + (e.g - s.g) * index / (RAMPSIZE-1)
    b: int = s.b + (e.b - s.b) * index / (RAMPSIZE-1)
    r = 255 - (255 - r)*(255 - r)/255 // cut-rate gamma correction
    g = 255 - (255 - g)*(255 - g)/255
    b = 255 - (255 - b)*(255 - b)/255
    colors[iterations] = new Color.init(r,g,b)
    return colors[iterations]
}

// Return number of iterations before the point c = x + y*i escapes
// via repeated application of function f(z) = z^2 + c.
// Returns maxiter if it doesn't escape in maxiter iterations.
mandelbrot(x:int, y:int):int {
    a:int = 0
    b:int = 0
    a_2:int = 0
    b_2:int = 0
    hpos:int = 0

    i:int = 0
    // escapes if |z| > 4
    while ((a_2 + b_2 < 4*SCALEROOT*SCALEROOT) & (i < maxiter)) {
	// Note: (a+bi)^2 = (a^2-b^2) + (2*a*b)i
	ah:int = a/SCALEROOT
	al:int = a%SCALEROOT
	bh:int = b/SCALEROOT
	bl:int = b%SCALEROOT
	a_2 = ah*ah + 2*(ah*al)/SCALEROOT
	b_2 = bh*bh + 2*(bh*bl)/SCALEROOT
	a = x + a_2 - b_2
	b = y + 2*ah*bh + 2*(ah*bl)/SCALEROOT + 2*(bh*al)/SCALEROOT

	i = i + 1
    }
    histogram[i] = histogram[i] + 1
    return i
}
