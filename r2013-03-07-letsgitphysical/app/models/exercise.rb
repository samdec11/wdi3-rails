# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  activity   :string(255)
#  value      :float
#  unit       :string(255)
#  completed  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exercise < ActiveRecord::Base
  attr_accessible :activity, :value, :unit, :completed
  belongs_to :user, :inverse_of => :exercises
end
