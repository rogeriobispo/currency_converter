require 'rest-client'
require 'json'

module Currency
  def self.exchange(currency, currency_destination, quantity)
    begin
      url = 'http://api.fixer.io/latest?base='\
            "#{currency}&symbols=#{currency_destination}"
      res = RestClient.get(url)
      value = JSON.parse(res.body)['rates'][currency_destination]
      return (value * quantity).round(2)
    rescue
      return 'Conversion failed'
    end
  end
end
