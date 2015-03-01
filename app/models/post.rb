class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :title, within: 2..127, on: :create, message: "must be present"
  validates :body, presence: true

  belongs_to :user

  # Have all the tags!
  acts_as_taggable

  DELETED = 0
  LIVE    = 1
  STAGED  = 2
end
