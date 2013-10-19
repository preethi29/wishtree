# == Schema Information
#
# Table name: wishes
#
#  id                 :integer          not null, primary key
#  due_date           :date
#  wish_item          :string(255)
#  percent_fullfilled :decimal(6, 5)
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  needy_id           :integer
#  purpose_id         :integer
#  help_type_id       :integer
#  quantity           :integer
#

class Wish < ActiveRecord::Base
  has_many :contributions
  belongs_to :user
  belongs_to :needy
  has_one :purpose
  has_one :help_type
end
