# == Schema Information
#
# Table name: contributions
#
#  id              :integer          not null, primary key
#  contributed_qty :integer
#  created_at      :datetime
#  updated_at      :datetime
#  wish_id         :integer
#  user_id         :integer
#

class Contribution < ActiveRecord::Base
  attr_accessible :contributed_qty, :user_id, :wish_id
  belongs_to :user
  belongs_to :wish
end
