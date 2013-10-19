# == Schema Information
#
# Table name: needies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  country    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Needy < ActiveRecord::Base
  has_many :wish
end
