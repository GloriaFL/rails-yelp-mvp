class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, length: { minimum: 2 }
  validates :address, length: { minimum: 6 }
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: 'That is not a valid category' }

end
