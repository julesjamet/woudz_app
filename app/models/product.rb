class Product < ApplicationRecord
    validates :title, presence: true
    has_one_attached :photo
    has_many :cards
    has_many :pictures, through: :cards
end
