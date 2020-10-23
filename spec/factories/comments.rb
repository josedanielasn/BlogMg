require 'faker'

FactoryBot.define do
  factory :comment do
    blog {create(:blog)}
    commenter {Faker::String.random(length: 2..30).tr("\u0000", '')}
    comment_text {Faker::String.random(length: 2..300).tr("\u0000", '')}
  end
end
