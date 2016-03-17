m = mqtt.Client("nodemcu2", 120)
c = false
m:on("connect", function(con) print ("mqtt connected") end)
m:on("offline", function(con) print ("mqtt offline");c = false end)

m:connect("192.168.0.101", 1883, 0, function(conn) print("connected");c = true end)
f = false
tmr.alarm(1, 10000, 1, function()
    dofile("dht22test.lc")
    if not c then
      print("Reconnecting")
      m:close()
      c = false
      m:connect("192.168.0.101", 1883, 0, function(conn) print("mqtt connected"); c = true; dofile("dht22pub.lc") end)
    end
   dofile("dht22pub.lc")
 end)