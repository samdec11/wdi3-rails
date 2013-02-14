# == Schema Information
#
# Table name: oceans
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  area       :float
#  volume     :float
#  max_depth  :float
#  max_width  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ocean < ActiveRecord::Base
  attr_accessible :name, :image, :area, :volume, :max_depth, :max_width
end
