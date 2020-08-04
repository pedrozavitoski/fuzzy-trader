class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :transactions


  def update_total
    total = 0
    self.transactions.each do |transaction|
      if transaction.last_price
        total += transaction.last_price * transaction.quantity
      else
        total += transaction.unit_price_paid * transaction.quantity
      end
    end
    self.update(total: total)
  end
end
