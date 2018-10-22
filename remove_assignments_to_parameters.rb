class Ledger
  attr_reader :balance

  def initialize(balances)
    @balance = balance
  end

  def add(arg)
    @balance += arg
  end
end

class Product
  class << self
    def add_price_by_updating(ledger, price)
      ledger.add(price)
      puts "ledger in add_price_by_updating: #{ledger.balance}"
    end

    def add_price_by_replacing(ledger, price)
      new_ledger = Ledger.new(ledger.balance + price)
      puts "ledger in add_price_by_replacing: #{new_ledger.balance}"
    end
  end
end
