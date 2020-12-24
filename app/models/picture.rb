class Picture < ApplicationRecord
    validates :title, :desc, :photo, presence: true
    has_one_attached :photo
    has_many :products
end
