# frozen_string_literal: true

class Bank
  def initialize
    @balance = 0
    @statementarray = [[],[],[],[]]
  end

  attr_reader :balance

  def deposit(amount_deposited,date)
    @balance += amount_deposited
    @statementarray[1].push(amount_deposited)
    @statementarray[2].push(" ")
    @statementarray[3].push(@balance)
    @statementarray[0].push(date)
  end

  def widthdrew(amount_widthdrew,date)
    @balance -= amount_widthdrew
    @statementarray[2].push(amount_widthdrew)
    @statementarray[1].push(" ")
    @statementarray[3].push(@balance)
    @statementarray[0].push(date)
  end

  def statement
    @statementarray 
  end

end
