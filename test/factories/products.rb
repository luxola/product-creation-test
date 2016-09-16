FactoryGirl.define do
  factory :product do
    sequence(:name) {|n| "Product #{n}"}
    description 'Test Description'
    price 100
    picture_url 'https://test.host'
    state 'unpublished'

    trait :published do
      state 'published'
    end
  end
end
