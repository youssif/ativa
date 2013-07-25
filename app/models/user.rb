class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
  has_secure_password
  before_save :downcase_email
  def downcase_email
    self.email = email.downcase
  end
end
