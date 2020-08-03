class Transaction < ApplicationRecord
  belongs_to :portfolio


  $stocks = ['MSFT', 'FB', 'GOOG', 'NFLX', 'AMZN']
  $cryptos = []
end
