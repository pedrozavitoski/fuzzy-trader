class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.integer :initial_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
