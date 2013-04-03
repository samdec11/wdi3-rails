# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image
  belongs_to :artist
  has_many :songs
end
