class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name1,  presence: true, length: { maximum: 126 }
  validates :name2,  presence: true, length: { maximum: 126 }, format: { with: /\A[ぁ-んァ-ヶー－]+\z/ }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: { case_sensitive: false }
  validates :address, length: { maximum: 126 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
