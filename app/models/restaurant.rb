class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :category, inclusion: { in: Restaurant::CATEGORIES }

    validates :name, :address, :category, presence: :true
end
