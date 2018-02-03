# dec2bin.py
# FB - 201012057
import math
def dec2bin(f):
    if f >= 0:
        g = int(math.log(f, 2))
    else:
        g = -1
    h = g + 1
    ig = math.pow(2, g)
    st = ""    
    while f > 0 or ig >= 1: 
        if f < 1:
            if len(st[h:]) >= 23: # 10 fractional digits max
                   break
        if f >= ig:
            st += "1"
            f -= ig
        else:
            st += "0"
        ig /= 2
    st = st[:h] + "." + st[h:]
    return st

# MAIN
while True:
    sign = ""
    f = float(raw_input("Enter decimal number ->: "))
    if f < 0: 
        sign = "1"
        f = abs(f) 
    else:
        sign = "0"
    Bin = dec2bin(f)
    print "Binary #: ", Bin
    #print "bin(int(f)): ", bin(int(f)) # for comparison
    pos = 0
    while Bin[pos]!='.':
        pos = pos + 1
    pos = pos - 1
    #print("Dot is at "+ str(pos+1))
    mantissa = ""
    Before = ""
    After = ""
    for y in range(1,len(Bin)):
        if(y<=pos):
            Before = Before + Bin[y]
        else:
            After = After + Bin[y]
    #print("Before: "+Before)
    After= After[1:]
    #print("After: "+After)
    mantissa = Before + After
    exponent = bin(pos+127)
    exponent = exponent[2:]
    print("mantissa: "+mantissa)
    print("exponent:" +exponent)
    zero = ""
    if(len(mantissa)>23):
        mantissa = mantissa[:23]
    else:
        mantissa = mantissa + zero.zfill(23-len(mantissa))
    print(sign + " " + exponent + " " + mantissa)