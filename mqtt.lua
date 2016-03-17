m = mqtt.Client("nodemcu", 120)
c = false
m:on("connect", function(con) print ("mqtt connected") end)
m:on("offline", function(con) print ("mqtt offline");c = false end)

-- on publish message receive event
m:on("message", function(conn, topic, data)
  print(topic .. ":" )
  if data ~= nil then
    print(data)
  end
  if data == "on" then
    gpio.write(pin,gpio.HIGH)
  elseif data == "off" then
    gpio.write(pin,gpio.LOW)
  end
end)
m:connect("192.168.0.101", 1883, 0, function(conn) print("connected");c = true; dofile("subscribe.lc") end)
