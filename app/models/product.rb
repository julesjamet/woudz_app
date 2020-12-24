class Product < ApplicationRecord
    validates :title, :desc, :photo, presence: true
    has_one_attached :photo
    belongs_to :picture
end
