require 'rails_helper'

RSpec.describe "consumidores/new", type: :view do
  before(:each) do
    assign(:consumidor, Consumidor.new(
      nome: "MyString",
      telefone: "MyString",
      email: "MyString"
    ))
  end

  it "renders new consumidor form" do
    render

    assert_select "form[action=?][method=?]", consumidores_path, "post" do

      assert_select "input[name=?]", "consumidor[nome]"

      assert_select "input[name=?]", "consumidor[telefone]"

      assert_select "input[name=?]", "consumidor[email]"
    end
  end
end
