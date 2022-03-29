class Bank
  def initialize
    @balance = 0
    @statementarray = []
  end

  attr_reader :balance

  def deposit(amount_deposited,date)
    @balance += amount_deposited
    @statementarray.insert(0,[date, " || ", '%.2f' % amount_deposited , " ||   || ", '%.2f' % @balance]) 
  end

  def widthdrew(amount_widthdrew,date)
    @balance -= amount_widthdrew
    @statementarray.insert(0,[date," ||   || ", '%.2f' % amount_widthdrew ," || ", '%.2f' % @balance]) 
  end

# Statement mentod here for testing purposes
  def statement
    @statementarray 
  end

  def printstatement
    puts "date || credit || debit || balance"
    @statementarray.reverse
    @statementarray.each do |item|
      puts item[0]+item[1]+item[2].to_s+item[3].to_s+item[4].to_s
    end
  end

end
