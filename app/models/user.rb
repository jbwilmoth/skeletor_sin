class User < ActiveRecord::Base
  has_secure_password
  validates :email, :format => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
