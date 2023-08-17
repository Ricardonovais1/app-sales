require 'rails_helper'

RSpec.describe "consumidores/index", type: :view do
  before(:each) do
    assign(:consumidores, [
      Consumidor.create!(
        nome: "Nome",
        telefone: "Telefone",
        email: "Email"
      ),
      Consumidor.create!(
        nome: "Nome",
        telefone: "Telefone",
        email: "Email"
      )
    ])
  end

  it "renders a list of consumidores" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Telefone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
