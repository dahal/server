# == Schema Information
#
# Table name: participants
#
#  id           :integer          not null, primary key
#  email        :string
#  rating       :integer
#  feedback     :string
#  feedback_url :string
#  survey_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Participant < ActiveRecord::Base
  validates :email, presence: true
  validates :survey_id, presence: true
end
