class Transaction < ApplicationRecord
  belongs_to :portfolio


  $stocks = ['FB', 'GOOG', 'NFLX']
  $cryptos = ['BTC', 'BTG']

  def update_last_price
    case
    when $stocks.include?(self.asset)
      response = RestClient.get('https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol='+self.asset+'&apikey=FJB91XTDD6DUEDP8')
      data = JSON.parse(response)
      if data['Global Quote'].present?
        last_price = data['Global Quote']['05. price']
      end
    when $cryptos.include?(self.asset)
      response = RestClient.get('https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency='+self.asset+'&to_currency=USD&apikey=FJB91XTDD6DUEDP8')
      data = JSON.parse(response)
      if data['Realtime Currency Exchange Rate'].present?
        last_price = data['Realtime Currency Exchange Rate']['5. Exchange Rate']
      end
    end
    if last_price
      self.update(last_price: last_price)
    end
  end

end
