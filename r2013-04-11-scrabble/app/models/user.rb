# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  is_online  :boolean          default(FALSE)
#  channel    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :username, :is_online, :channel
  validates :username, :uniqueness => true
  has_and_belongs_to_many :games
end
