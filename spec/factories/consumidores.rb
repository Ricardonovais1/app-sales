FactoryBot.define do
  factory :consumidor do
    nome { 'Roberto Souto' }
    telefone { '6712345678' }
    email { 'roberto@exemplo.com' }
  end

  trait :invalid do
    nome { '' }
  end
end
