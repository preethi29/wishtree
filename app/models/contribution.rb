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
  belongs_to :user
  belongs_to :wish
end
