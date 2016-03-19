class Checkout
  attr_accessor :coca1, :reb1,  :apl1, :choc1, :bre1
   
  def  initialize(pricing=nil)
      #declaration of the variables that will count the number of products bought
      @coca = @reb = @apl = @choc = @bre = 0
      #if no pricing is provided then everything will be set according to the default values provided in the exercise
      #pricing should be a hash - easier to provide values in according to key/value association
      if pricing.kind_of?(Hash) && !pricing.nil?
        @coca1=pricing[:coca]
        @reb1=pricing[:reb]
        @apl1=pricing[:apl]
        @choc1=pricing[:choc]
        @bre1=pricing[:bre]
      else
        @coca1=0.89
        @reb1=2.20
        @apl1=3.45
        @choc1=5.25
        @bre1=1.19 
      end
  end
  
  
  #check what was scanned and increase the afferent count
  def scan(item)
      case item
        when "COCA1" then @coca += 1
        when "REB1" then @reb += 1
        when "APL1" then @apl += 1
        when "CHOC1" then @choc += 1
        when "BRE1" then @bre += 1
      end
  end
  
  def total()
      total=0
      #apply a discount of 10% if the total nb of drinks is greater than 4
      drinks = @reb+@coca>=5 ? (@reb*@reb1+@coca*@coca1 - (@reb*@reb1+@coca*@coca1)*10/100) : (@reb*@reb1+@coca*@coca1)
      #set the price of chocolate to 4.70 if the total number of chocolates if greater than 2
      chocs = @choc>=3 ? @choc*4.70 : @choc*@choc1
      #every third apple is free
      if (@apl>=3)
       free = @apl/3
       apples = (@apl-free)*3.45
      else
        apples = @apl*3.45
      end
      total = drinks + apples + chocs + @bre*@bre1
      total.round(2)
  end
end