bmp085 = require("bmp085")
sda = 1
scl = 2
bmp085.init(sda, scl)
p = bmp085.getUP(oss)
print("Pressure is "..p)
t = bmp085.getUT(true)
print("Temperature is "..t)
bmp085 = nil
package.loaded["bmp085"]=nil