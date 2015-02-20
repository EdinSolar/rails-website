class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :title, within: 2..127, on: :create, message: "must be present"
  validates :body, presence: true
end
