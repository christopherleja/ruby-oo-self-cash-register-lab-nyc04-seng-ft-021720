require 'pry'

class CashRegister
  
  attr_accessor :total, :title, :price, :num, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity)
  end
  
  def total_reduce(total, discount)
    if 
  end
  
  def apply_discount
    if @discount != 0
      puts "After the discount, the total comes to #{@total}"
    else
      @total
      puts "There is no discount to apply."
    end
  end

  def total
    @total
  end
  
end