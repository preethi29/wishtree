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
#

class Wish < ActiveRecord::Base
end
