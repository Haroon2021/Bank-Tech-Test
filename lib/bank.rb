# frozen_string_literal: true

class Bank
  def initialize
    @balance = 0
  end

  attr_reader :balance

  def deposit(amount_deposited)
    @balance += amount_deposited
  end

  def widthdrew(amount_widthdrew)
    @balance -= amount_widthdrew
  end
end
