json.extract! transaction, :id, :asset, :quantity, :unit_price_paid, :last_price, :total_paid, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
