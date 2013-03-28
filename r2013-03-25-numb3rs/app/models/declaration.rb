# == Schema Information
#
# Table name: declarations
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Declaration < ActiveRecord::Base
  attr_accessible :url, :text
  has_many :words

  after_save :get_text
  private
  def get_text
    response = HTTParty.get(self.url).to_s
    self.text = response
    self.words = self.text.split(' ').map{|w| Word.new(value: w)}
  end
end
