require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  has_secure_password
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
