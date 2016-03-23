load 'checkout.rb'
co = Checkout.new()
co.scan("APL1")
co.scan("COCA1")
co.scan("APL1")
co.scan("CHOC1")
co.scan("APL1")
co.total

co=Checkout.new()
co.scan("CHOC1")
co.scan("BRE1")
co.scan("CHOC1")
co.scan("REB1")
co.scan("REB1")
co.scan("CHOC1")  
co.total

co=Checkout.new()
co.scan("REB1")
co.scan("COCA1")
co.scan("APL1")
co.scan("REB1")
co.scan("CHOC1") 
co.scan("REB1")
co.scan("APL1")
co.scan("APL1")
co.scan("BRE1")
co.total

