class Article < ActiveRecord::Base
  has_many :comments
  belongs_to :team
  belongs_to :user
  
end
