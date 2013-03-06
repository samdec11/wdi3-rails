# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation
  has_many :priorities, :inverse_of => :user
  has_many :tasks, :inverse_of => :user
  validates :name, :presence => true, :length => {:minimum => 2}
  validates :email, :presence => true, :uniqueness => true

  before_save :completed_priority
  private
  def completed_priority
    p = Priority.create(:name =>'Complete', :color => '#ccc', :value => 0)
    self.priorities << p
  end
end
