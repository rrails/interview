# == Schema Information
#
# Table name: choices
#
#  id          :integer          not null, primary key
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  choice      :string(255)
#  is_correct  :boolean
#

class Choice < ActiveRecord::Base
  attr_accessible :choice,:is_correct
  belongs_to :question
end
