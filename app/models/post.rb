class Post < ActiveRecord::Base
  validate :title, presence: true
  validates_length_of :title, within: 2..127, on: :create, message: "must be present"
  validate :body, presence: true
end
