class StockController < ApplicationController
  def index
  end

  def lookup
    @stock = params['sym'].upcase
    @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade
  end
end