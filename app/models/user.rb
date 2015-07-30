class User < ActiveRecord::Base

  has_many :micro_posts

  before_save { self.email.downcase! }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 255 }, format: VALID_EMAIL_REGEX

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end
