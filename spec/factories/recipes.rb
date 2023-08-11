FactoryBot.define do
  factory :recipe do
    dish { 'オムライス' }
    persons { '一人' }
    material { 'たまご' }
    amount { '一個' }
    make_one { '卵をまぜる' }
    make_two { '焼く' }
    make_three { 'ケチャップライスをつくる' }
    make_four { '焼いた卵で３を包む' }
    make_five { '盛り付けて完成' }
    association :user

    after(:build) do |recipe|
      recipe.image.attach(io: File.open('app/assets/images/food_pork_chup.png'), filename: 'food_pork_chup.png')
    end
  end
end
