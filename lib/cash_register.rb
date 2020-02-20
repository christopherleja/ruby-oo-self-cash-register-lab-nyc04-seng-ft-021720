require 'pry'

class CashRegister
  
  @@all = []
  
  attr_accessor :total, :title, :price, :num, :discount, :item
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity)
    @@all << item
  end
  
  def apply_discount
    if @discount != 0
      @total = (total*(0.01*(100-@discount))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def self.all
    @@all
  end

  def total
    @total
  end
  
end