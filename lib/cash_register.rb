require 'pry'

class CashRegister

    attr_accessor :total, :discount
    attr_reader :items, :last_item

    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {self.items << title}
        @last_item = price * quantity
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = (self.total * (1 - self.discount * 0.01)).to_i
            "After the discount, the total comes to $#{self.total}."
        end

    end

    def void_last_transaction
        # binding.pry
        self.total -= self.last_item
                
    end



end
