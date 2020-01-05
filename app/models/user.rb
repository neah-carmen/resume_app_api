class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_skills

  has_many :skills, through: :user_skills
  has_many :experiences
  has_many :educations
  has_many :capstones
end
