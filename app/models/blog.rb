class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum:2, maximum:30}
  validates :content_text, presence: true, length: {minimum:2, maximum:1000}
end
