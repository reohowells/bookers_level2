class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
    validates :body, presence: true, length: { maximum: 50 }
    has_many :post_comments, dependent: :destroy
end
