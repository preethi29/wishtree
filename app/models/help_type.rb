# == Schema Information
#
# Table name: help_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class HelpType < ActiveRecord::Base
  attr_accessible :name
end
