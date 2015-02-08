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
#  status             :string
#

class User < ActiveRecord::Base
  include Clearance::User
  extend Enumerize

  enumerize :status, in: [:active, :inactive], default: :inactive
end
