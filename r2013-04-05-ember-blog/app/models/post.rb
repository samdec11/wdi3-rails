# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  posted     :date
#

class Post < ActiveRecord::Base
  attr_accessible :title, :author, :body, :posted
end
