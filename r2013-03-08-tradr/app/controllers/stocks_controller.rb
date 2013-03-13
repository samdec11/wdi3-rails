class StocksController < ApplicationController
  def index
    @stocks = @auth.stocks.order(:symbol)
  end
  def new
    @stock = Stock.new
  end
  def create
    stock = Stock.new(params[:stock])
    symbol = params[:stock][:symbol]
    price = Stock.quote(symbol)
    stock.purchase_price = price
    if (stock.value <= @auth.balance)
      stock.save
      @auth.stocks << stock
      @auth.balance -= stock.value
      @auth.save
      @stocks = @auth.stocks.order(:symbol)
    else
      render :json => ('Insufficient balance')
    end
  end
  def quote
    symbol = params[:symbol]
    price = Stock.quote(symbol)
    render :json => [price, @auth.balance]
  end
end