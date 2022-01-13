class Micropost < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :content, presence: true, length: { maximum: 255 }
  
   has_many :favorites, foreign_key: "micropost_id", dependent: :destroy
   has_many :favers,through: :favorites, source: :user
  
end
