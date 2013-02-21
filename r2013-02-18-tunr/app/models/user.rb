# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  balance         :decimal(, )      default(0.0)
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :image, :password, :password_confirmation, :balance
  has_and_belongs_to_many :albums
  has_many :mixtapes
  validates :image, :presence => true
  validates :name, :uniqueness => true, :length => { :minimum => 2 }
  validates :balance, :numericality => { :greater_than_or_equal_to => 0}
end
