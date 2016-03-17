wifi.setmode(wifi.STATION)
wifi.sta.config("virginmedia6527155","bgbhjamw")
ip = wifi.sta.getip()
print(ip)