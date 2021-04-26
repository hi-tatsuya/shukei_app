class Mikomi < ApplicationRecord
  belongs_to :user

  validates :kansan, presence: true, length: { maximum: 10 }
  validates :shohin, presence: true
end
