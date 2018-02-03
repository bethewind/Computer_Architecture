import math

mm_size = pow(2, 19)
f = open('memory.v','w')
f.close()
f = open('memory.v', "a")
for i in range(mm_size):
    f.write("MM["+str(i)+"] = 64'b"+bin(pow(2,64)-1-i)[2:]+";\n")

f.close()
print('end')
