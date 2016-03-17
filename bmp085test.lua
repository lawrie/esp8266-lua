bmp085 = require("bmp085")
sda = 1
scl = 2
bmp085.init(sda, scl)
p = bmp085.getUP(oss)
print(p)
-- Don't forget to release it after use
bmp085 = nil
package.loaded["bmp085"]=nil