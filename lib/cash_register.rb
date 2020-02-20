class CashRegister
  
  attr_accessor :total, :title, :price, :num, :discount
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity)
  end
  
  def discount_exists
    @discount
  end
  
  def apply_discount(discount, total)
    if discount
    @total = total - total * (@discount / 100.0)
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