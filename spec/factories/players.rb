FactoryBot.define do
  factory :player do
    sequence(:uid, &:to_s)
    provider    'slack'
    nickname    'ben'
    first_name  'Ben'
    last_name   'Boost'
    image_url   'http://image.jpg'

    trait :unique do
      sequence :uid do |id|
        id
      end
    end
  end
end
