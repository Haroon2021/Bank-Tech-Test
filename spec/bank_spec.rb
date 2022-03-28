# frozen_string_literal: true

require 'bank'

describe 'Bank' do
  context 'Open a bank account and have 0 balance initially' do
    it '' do
      bank = Bank.new
      expect(bank.balance).to eq 0
    end
  end
  context 'Open a bank account deposit 1000.00 and see a balance of 1000.00' do
    it '' do
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.balance).to eq 1000
    end
  end
  context 'Open a bank account widthdraw 1000.00 and see a balance of -1000.00' do
    it '' do
      bank = Bank.new
      bank.widthdrew(1000)
      expect(bank.balance).to eq -1000
    end
  end
end
