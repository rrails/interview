# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_text :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  challenge_id  :integer
#

class Question < ActiveRecord::Base
  attr_accessible :question_text,:choices_attributes
  belongs_to :challenge
  has_many :choices,:dependent => :destroy
  accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:choice].blank? }, :allow_destroy => true

end
