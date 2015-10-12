FactoryGirl.define do
  factory :room do
    name  { Faker::Internet.user_name }
  end

end
