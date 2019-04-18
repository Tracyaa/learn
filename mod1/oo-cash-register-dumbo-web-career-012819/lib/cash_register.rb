class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times {@items << title} 

  end

  def apply_discount # 1000 to 800
    if @discount == nil
      return "There is no discount to apply."
    else
      @total -= (@total * @discount / 100)
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end
end
