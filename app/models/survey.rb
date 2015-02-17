# == Schema Information
#
# Table name: surveys
#
#  id             :integer          not null, primary key
#  brand_name     :string           not null
#  reply_to_email :string           not null
#  survey_subject :string
#  survey_body    :string(255)
#  brand_color    :string
#  brand_logo     :string
#  survey_hash    :string
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Survey < ActiveRecord::Base
  extend Enumerize
  belongs_to :user
  has_many :participants
  before_save :default_values

  def default_values
    self.survey_hash ||= SecureRandom.urlsafe_base64.downcase
  end
end
