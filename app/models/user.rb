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
#

class User < ActiveRecord::Base
  include Clearance::User
  extend Enumerize
  has_one :survey

  enumerize :state_enum, in: { active: 1, inactive: 2 }, default: :active, predicates: true, scope: true
end
