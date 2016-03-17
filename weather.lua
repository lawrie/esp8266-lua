if c then
  m:publish("/house/rooms/ground-floor/utility/pressure",p/100,0,0, 
    function(conn) 
      print("pressure published")  
      m:publish("/house/rooms/ground-floor/utility/temperature",t/10,0,0, function(conn) print("temperature published") end)
    end)
end
