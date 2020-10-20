class User < ApplicationRecord
  has_many :blogs
  validates :firstname, presence: true, length: {minimum:2, maximum:15}
  validates :lastname, presence: true, length: {minimum:2, maximum:15}
  validates :username, presence: true, length: {minimum:2, maximum:15}, uniqueness: true
  validates :password, presence: true, length: {minimum:6}
end
