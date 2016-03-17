PIN = 4 --  data pin, GPIO2

dht22 = require("dht22")
dht22.read(PIN)
t = dht22.getTemperature()
h = dht22.getHumidity()