print ("Enter floating point: ")
i = str(input())
l = i.split('.')
output = ""
if i[0] == '+':
    output+=str(0)
else:
    output+=str(1)

b = bin(int(l[0][1:]))[2:]
output = output + bin(int(l[0][1:]))[2:]

temp = ""
exp = 1
temp = temp + b[1:]
k =23
frac = "0."+l[1]
num = float(frac)
for m in range(k):
    num = num * 2
    if num >= 1:
        temp+= '1'
        num -=1
    else:
        temp += '0'
print(output)
