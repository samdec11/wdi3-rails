# == Schema Information
#
# Table name: authors
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  dob            :date
#  place_of_birth :string(255)
#  dod            :date
#  place_of_death :string(255)
#  image          :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Author < ActiveRecord::Base
  attr_accessible :name, :dob, :place_of_birth, :dod, :place_of_death, :image
  has_many :books
end