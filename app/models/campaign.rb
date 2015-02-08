# == Schema Information
#
# Table name: campaigns
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  description     :string(128)
#  brand_color     :string
#  body_text_color :string
#  button_color    :string
#  body_text       :string(128)
#  brand_logo      :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Campaign < ActiveRecord::Base
  validates :title, :brand_logo, presence: true
end
