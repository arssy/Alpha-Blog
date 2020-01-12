class User < ApplicationRecord
  has_many :articles
  
  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  before_save { self.email = email.downcase}
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25}
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEXP }
  validates :password, presence: true, confirmation: true

  has_secure_password
end
