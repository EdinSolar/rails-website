class User < ActiveRecord::Base

  has_and_belongs_to_many :roles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Virtual attribute for authenticating by either username or email
  attr_accessor :login

  def role?(role)
    !roles.find_by_name(role.to_s.camelize).nil?
  end
end
