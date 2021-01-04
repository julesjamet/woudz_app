class Picture < ApplicationRecord
    validates :title, presence: true
    has_one_attached :photo
    has_many :cards
    has_many :products, through: :cards
end
