class Transaction < ApplicationRecord
  belongs_to :portfolio


  $stocks = ['FB', 'GOOG', 'NFLX']
  $cryptos = ['BTC', 'BTG']
end
