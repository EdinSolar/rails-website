class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :title, within: 2..127, on: :create, message: "must be present"
  validates :body, presence: true

  belongs_to :user

  # Have all the tags!
  acts_as_taggable

  STAGED  = 0
  LIVE    = 1
  DELETED = 2
end
