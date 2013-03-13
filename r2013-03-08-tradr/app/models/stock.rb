# == Schema Information
#
# Table name: stocks
#
#  id             :integer          not null, primary key
#  symbol         :string(255)
#  purchase_price :decimal(, )
#  quantity       :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :purchase_price, :quantity
  belongs_to :user, :inverse_of => :stocks

  def Stock.quote(symbol)
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end
  def value
    Stock.quote(symbol) * quantity
  end
end