require 'rails_helper'

RSpec.describe "consumidores/edit", type: :view do
  let(:consumidor) {
    Consumidor.create!(
      nome: "MyString",
      telefone: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:consumidor, consumidor)
  end

  it "renders the edit consumidor form" do
    render

    assert_select "form[action=?][method=?]", consumidor_path(consumidor), "post" do

      assert_select "input[name=?]", "consumidor[nome]"

      assert_select "input[name=?]", "consumidor[telefone]"

      assert_select "input[name=?]", "consumidor[email]"
    end
  end
end
