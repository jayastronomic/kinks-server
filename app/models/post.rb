class Post < ApplicationRecord
    belongs_to :user

    has_one_attached :photo

    validates :description, length: { maximum: 160 }
end
