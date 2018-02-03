# import math
# cache_size = 1024
# f = open("CACHE.txt","a");
# for x in range(cache_size):
# 	f.write("cache[" + str(x) + "] = 64'd0;\n")
# f.close()
import math
cache_size = 1024
f = open(".txt","a");
for x in range(cache_size):
	f.write("tag[" + str(x) + "] = 9'd0;\n")
f.close()


import math

mm_size = pow(2, 19)
f = open('memory.v','w')
f.close()
f = open('memory.v', "a")
for i in range(mm_size):
    f.write("MM["+str(i)+"] = 64'b"+bin(pow(2,64)-1-i)[2:]+";\n")

f.close()
print('end')
