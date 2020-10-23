require 'faker'

FactoryBot.define do
  factory :blog do
    user {create(:user)}
    title {Faker::String.random(length: 2..50).tr("\u0000", '')}
    content_text {Faker::String.random(length: 2..1000).tr("\u0000", '')}
  end
end
