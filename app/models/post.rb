class Post < ActiveRecord::Base
  validates :content, length: {maximum: 254}

  belongs_to :users
end
