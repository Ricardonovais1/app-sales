require 'rails_helper'

RSpec.describe "consumidores/show", type: :view do
  before(:each) do
    assign(:consumidor, Consumidor.create!(
      nome: "Nome",
      telefone: "Telefone",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Email/)
  end
end
