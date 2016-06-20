class User < ActiveRecord::Base
  has_secure_password
  before_create :check_first
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }   
     
  def self.authenticate(email, password)
    user = User.where(email: email).first

    if user && user.approved && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt) 
      user
    else
      nil
    end
  end
  
  def check_first
    if User.all.count == 0
      self.approved=true
    end
  end
end
