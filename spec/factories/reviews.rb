FactoryBot.define do
  factory :review do
    user { nil }
    reviewer { "MyString" }
    content { "MyText" }
    rating { 1 }
    reply_content { "MyText" }
  end
end
