conn=net.createConnection(net.TCP, 0)
conn:on("connection", function(conn, payload) print("Connected") end )
conn:on("disconnection", function(conn, payload) print("Disconnected") end )
conn:on("receive", function(conn, payload) print("Reply is "..payload); conn:close();conn = nil end )
conn:connect(50000,"192.168.0.100")
conn:send("power\n")
 