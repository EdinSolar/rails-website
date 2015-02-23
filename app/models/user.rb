class User < ActiveRecord::Base
  # Virtual attribute for authenticating by either username or email
  attr_accessor :login

  has_and_belongs_to_many :roles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def role?(role)
    !roles.find_by_name(role.to_s.camelize).nil?
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).
        where(['lower(username) = :value OR lower(email) = :value',
              {value: login.downcase}]).first
    else
      where(conditions.to_h)
    end
  end
end
