FactoryBot.define do
  factory :mikomi do
    kansan { rand(121) } 
    shohin { "既成緩和" }
    constract_date {"2021-04-20"}
    user
  end
end