wifi.setmode(wifi.STATION)
wifi.sta.config("virginmedia6527155","bgbhjamw")
while ip == nil do
  ip=wifi.sta.getip()
  print(ip)
end