class User < ActiveRecord::Base
include Clearance::User

  include Clearance::User
  has_many :comments
  has_many :articles
  has_many :likes

  def like(article)
    likes.create(likable: article)
  end
end
