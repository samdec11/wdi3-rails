# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :name, :url, :album_id, :remote_url_url
  validates :url, :presence => true
  belongs_to :album
  mount_uploader :url, PicUploader
end
