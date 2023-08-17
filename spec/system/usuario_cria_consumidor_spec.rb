require 'rails_helper'


describe 'Usuário cria novo consumidor' do
  it 'com sucesso' do
    visit root_path

    within('nav') do
      click_on 'Clientes'
    end
    click_on 'Novo cliente'
    fill_in 'Nome', with: 'Sílvia Maneira'
    fill_in 'Telefone', with: '67123456789'
    fill_in 'Email', with: 'selvia@paz.com'
    click_on 'Salvar'

    expect(page).to have_content 'Cliente registrado com sucesso'
    expect(page).to have_content 'Sílvia Maneira'
    expect(page).to have_content '67123456789'
  end
end