# == Schema Information
#
# Table name: surveys
#
#  id                :integer          not null, primary key
#  company_name      :string           not null
#  email_from        :string
#  reply_to_email    :string
#  survey_subject    :string
#  survey_body       :string
#  survey_body_color :string
#  button_text_color :string
#  brand_logo        :string
#  survey_hash       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Survey < ActiveRecord::Base
end
