wifi.setmode(wifi.STATION)
wifi.sta.config("virginmedia6527155","bgbhjamw")
wifi.sta.connect()
pin = 1
gpio.mode(pin,gpio.OUTPUT)
tmr.alarm(1, 5000, 1, function() 
    if wifi.sta.getip()== nil then 
        print("IP unavaiable, waiting...") 
    else 
        tmr.stop(1)
        print("IP is "..wifi.sta.getip())
        --dofile("mqttp.lc")
    end 
 end)
