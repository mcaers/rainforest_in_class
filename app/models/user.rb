class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation   # NOT :password_digest

  has_secure_password

  validates_presence_of :password, :on => :create
  validates :name,  :presence => true
  validates :email, :presence => true, :uniqueness => true
end
