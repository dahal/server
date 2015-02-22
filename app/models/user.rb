# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  email              :string           not null
#  encrypted_password :string(128)      not null
#  confirmation_token :string(128)
#  remember_token     :string(128)      not null
#  state_enum         :integer
#  api_key            :string
#

class User < ActiveRecord::Base
  include Clearance::User
  extend Enumerize
  has_one :survey
  before_create :generate_api_key

  enumerize :state_enum, in: { active: 1, inactive: 2 }, default: :active

  private
  def generate_api_key
    begin
      self.api_key = SecureRandom.hex
    end while self.class.exists?(api_key: api_key)
  end
end
