class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}

    scope :active_only, -> { where(is_active: true) }
end
