require 'rails_helper'

RSpec.describe Consumidor, type: :model do
  describe '#valid?' do
    it 'deve ter um nome' do
      consumidor = build(:consumidor, nome: '')

      consumidor.valid?
      result = consumidor.errors.full_messages

      expect(result).to include('Nome não pode ficar em branco')
    end

    it 'deve ter um telefone' do
      consumidor = build(:consumidor, telefone: '')

      consumidor.valid?
      result = consumidor.errors.full_messages

      expect(result).to include('Telefone não pode ficar em branco')
    end

    it 'deve ter um email' do
      consumidor = build(:consumidor, email: '')

      consumidor.valid?
      result = consumidor.errors.full_messages

      expect(result).to include('Email não pode ficar em branco')
    end
  end
end
