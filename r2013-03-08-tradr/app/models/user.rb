# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  balance         :decimal(, )
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :balance, :password, :password_confirmation
  has_many :stocks, :inverse_of => :user
  validate :email, :presence => true, :uniqueness => true
  validate :balance, :numericality => {:greater_than_or_equal_to => 0}

  def portfolio
    if
      stocks.present?
      (stocks.map(&:value).inject(:+))
    else
      0
    end
  end
  def total_value
    if
      stocks.present?
      (stocks.map(&:value).inject(:+)) + balance
    else
      balance
    end
  end
end
