require "active_record"

class Cafe < ApplicationRecord
  validates :first_name, presence: true
  validates :email, { presence: true, uniqueness: true }
  belongs_to :user

  def self.of_user(user)
    all.where(user_id: user.id)
  end
end
