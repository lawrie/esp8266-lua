if c then
  v = t/10 .. "," .. h/10 .. "," .. adc.read(0)/10
  print("Publishing " .. v)
  m:publish("emonhub/rx/12/values",v,0,0, function(conn) print("values published") end)
end
