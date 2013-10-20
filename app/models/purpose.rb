# == Schema Information
#
# Table name: purposes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Purpose < ActiveRecord::Base
  attr_accessible :name, :description
end
