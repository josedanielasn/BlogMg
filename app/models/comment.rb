class Comment < ApplicationRecord
  belongs_to :blog
  validates :commenter, presence: true, length: {minimum:2, maximum:30}
  validates :comment_text, presence: true, length: {minimum:2, maximum:300}
end
