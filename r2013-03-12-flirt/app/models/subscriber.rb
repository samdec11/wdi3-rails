# == Schema Information
#
# Table name: subscribers
#
#  id                    :integer          not null, primary key
#  username              :string(255)
#  email                 :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Subscriber < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation
end
