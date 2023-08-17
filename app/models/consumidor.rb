class Consumidor < ApplicationRecord
  validates :nome, :telefone, :email, presence: true
end
