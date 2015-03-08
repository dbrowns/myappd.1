class Firm < ActiveRecord::Base
  has_many :users
  has_many :posts
  validates_formatting_of :email, using: :email
end
