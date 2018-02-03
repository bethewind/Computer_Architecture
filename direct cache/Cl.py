# import math
# cache_size = 1024
# f = open("CACHE.txt","a");
# for x in range(cache_size):
# 	f.write("cache[" + str(x) + "] = 64'd0;\n")
# f.close()
import math
cache_size = 1024
f = open("CACHE.txt","a");
for x in range(cache_size):
	f.write("tag[" + str(x) + "] = 19'd0;\n")
f.close()