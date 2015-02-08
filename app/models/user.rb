class User < ActiveRecord::Base
  include Clearance::User
  extend Enumerize

  enumerize :status, in: [:active, :inactive], default: :inactive
end
