require 'rails_helper'


describe 'Usuário visualiza homepage' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_content 'APP SALES'
  end
end