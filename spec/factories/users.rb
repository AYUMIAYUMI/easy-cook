FactoryBot.define do
  factory :user do
    nick_name {'あゆみ'}
    email {Faker::Internet.free_email}
    password { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end