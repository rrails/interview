# == Schema Information
#
# Table name: attempts
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  challenge_id :integer
#  fails        :integer
#  passes       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Attempt < ActiveRecord::Base
  attr_accessible :user_id,:challenge_id,:fails,:passes
  belongs_to :user
end
