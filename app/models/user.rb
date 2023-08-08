require 'bcrypt'

class User < ApplicationRecord
<<<<<<< HEAD
  include BCrypt
  has_secure_password
  validates :username, presence: true
=======
  has_secure_password
  validates :name, presence: true
>>>>>>> refs/remotes/origin/main
  validates :password, presence: true, length: { minimum: 6 }
end
