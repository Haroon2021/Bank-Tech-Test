class Bank
  def initialize
    @balance = 0
    @statementarray = []
  end

  attr_reader :balance

  def deposit(amount_deposited,date)
    @balance += amount_deposited
    @statementarray.push([date, amount_deposited , " ", @balance]) 
  end

  def widthdrew(amount_widthdrew,date)
    @balance -= amount_widthdrew
    @statementarray.push([date, " ", amount_widthdrew, @balance]) 
  end

# Statement mentod here for testing purposes
  def statement
    @statementarray 
  end
# To work on
  # def printstatement
  #   numberoftransactions = @statementarray[0].length
  #   @statementarray.each do |item|
  #     puts @statementarray[numberoftransactions][0]
  #   end
  # end

end
