# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  cost        :decimal(, )
#  lat         :float            default(0.0)
#  long        :float            default(0.0)
#  address     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :cost, :address
  belongs_to :user, :inverse_of => :products
  has_and_belongs_to_many :tags
  mount_uploader :image, PicUploader

  def tag_list
    self.tags.map(&:name).join(', ')
  end

  before_save :geocode
  private
  def geocode
    result = Geocoder.search(self.address).first
    if result.present?
      self.lat = result.latitude
      self.long = result.longitude
    end
  end
end
