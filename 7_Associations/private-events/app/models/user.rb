class User < ActiveRecord::Base
  attr_accessor :remember_token
  validates :name, presence: true
  has_many :events, foreign_key: :creator_id
  has_many :attended_event, through: :events_users, foreign_key: :event_id, class_name: :event

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  def authenticated_cookie?(remember_token)
    return false if remember_digest.nil?
    Bcrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
