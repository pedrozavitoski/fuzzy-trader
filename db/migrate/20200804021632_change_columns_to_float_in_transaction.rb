class ChangeColumnsToFloatInTransaction < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :quantity, :float
    change_column :transactions, :unit_price_paid, :float
    change_column :transactions, :last_price, :float
    change_column :transactions, :total_paid, :float
  end
end
