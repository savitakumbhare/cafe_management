class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :email, { presence: true, uniqueness: true }

  def self.of_user(user)
    all.where(user_id: user.id)
  end

  def find_role(id)
    User.find(id).role
  end
end
