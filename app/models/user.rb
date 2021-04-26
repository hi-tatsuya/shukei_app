class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :mikomis, dependent: :destroy

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, 
            presence: true,
            uniqueness: true,
            length: { maximum: 50 },
            format: { with: VALID_EMAIL_REGEX }
end
