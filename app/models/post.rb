class Post < ActiveRecord::Base
  belongs_to :firm
  belongs_to :user
end
