class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :asset
      t.integer :quantity
      t.integer :unit_price_paid
      t.integer :last_price
      t.integer :total_paid

      t.timestamps
    end
  end
end
