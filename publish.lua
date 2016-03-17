f = false
tmr.alarm(1, 10000, 1, function()
    dofile("bmp180test.lc")
    if not c then
      print("Reconnecting")
      m:close()
      c = false
      m:connect("192.168.0.101", 1883, 0, function(conn) print("mqtt connected"); c = true; dofile("weather.lc") end)
    end
   dofile("weather.lc")
 end)
