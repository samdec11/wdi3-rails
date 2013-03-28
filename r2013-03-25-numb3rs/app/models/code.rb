# == Schema Information
#
# Table name: codes
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  symbol     :string(255)
#  hex        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Code < ActiveRecord::Base
  attr_accessible :url
  has_many :characters

  before_save :nuke_data
  after_save :get_data
  private
  def nuke_data
    Character.delete_all
    Code.delete_all
  end
  def get_data
    url = self.url
    result = Nokogiri::HTML(HTTParty.get(url))

    td_hex = result.xpath('//body/table[2]/tr[5]/td/table[2]/tr/td[3]').to_a
    td_sym = result.xpath('//body/table[2]/tr[5]/td/table[2]/tr/td[5]').to_a

    td_hex.shift
    td_sym.shift

    td_hex.each_with_index do |td, index|
      hex = td.content
      sym = td_sym[index].content
      self.characters << Character.create(hex: hex, symbol: sym)
    end
  end
end
