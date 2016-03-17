print("Subscribing")
if c then
  m:subscribe("/relay",0, function(conn) print("subscribe success") end)
end