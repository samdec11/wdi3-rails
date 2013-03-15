# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  plan       :string(255)
#  duration   :integer
#  cost       :decimal(, )      default(0.0)
#  num_photos :integer          default(1)
#  num_emails :integer          default(0)
#  num_texts  :integer          default(0)
#  is_a_list  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :plan, :duration, :cost, :num_photos, :num_emails, :num_texts, :is_a_list
  has_many :subscribers
end
