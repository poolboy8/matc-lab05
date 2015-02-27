class User < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  validates :email, presence: true, length: {minimum: 6}
  has_secure_password

end
