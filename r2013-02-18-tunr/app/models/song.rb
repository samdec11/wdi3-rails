# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  filename   :string(255)
#  artist_id  :integer
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :artist_id, :album_id
  belongs_to :artist
  belongs_to :album
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :mixtapes
end