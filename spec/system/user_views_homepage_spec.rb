require 'rails_helper'


describe 'Usuário visualiza homepage' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_content 'APP SALES'
  end

  it 'após clicar na logo/ nome do site' do
    visit consumidores_path

    within('a#logo') do
      click_on 'APP SALES'
    end

    expect(current_path).to eq root_path
  end
end