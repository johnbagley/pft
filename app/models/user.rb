class User < ActiveRecord::Base
include Clearance::User

  include Clearance::User
  has_many :comments
  has_many :articles
end
