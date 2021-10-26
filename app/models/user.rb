class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {minimum:3, maximum:25}, uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:105}, uniqueness: {case_Sensitive: false}, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end
