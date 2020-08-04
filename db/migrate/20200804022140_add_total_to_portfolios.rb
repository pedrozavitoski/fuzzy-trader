class AddTotalToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :total, :float
  end
end
