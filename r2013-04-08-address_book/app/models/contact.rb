# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  first      :string(255)
#  last       :string(255)
#  dob        :date
#  phone      :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  attr_accessible :first, :last, :dob, :phone, :email
end
