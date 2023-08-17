require 'rails_helper'

RSpec.describe "/consumidores", type: :request do

  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  describe "GET /index" do
    it "renderiza uma resposta de sucesso" do
      build(:consumidor)
      get consumidores_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renderiza uma resposta de sucesso" do
      consumidor = create(:consumidor)
      get consumidor_url(consumidor.id)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renderiza uma resposta de sucesso" do
      get new_consumidor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renderiza uma resposta de sucesso" do
      consumidor = create(:consumidor)
      get edit_consumidor_url(consumidor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "com parâmetros válidos" do
      it "cria um novo Consumidor" do
        expect {
          post consumidores_url, params: { consumidor: attributes_for(:consumidor) }
        }.to change(Consumidor, :count).by(1)
      end

      it "redirects to the created consumidor" do
        post consumidores_url, params: { consumidor: attributes_for(:consumidor) }
        expect(response).to redirect_to(consumidor_url(Consumidor.last))
      end
    end

    context "com parâmetros inválidos" do
      it "não cria um novo Consumidor" do
        expect {
          post consumidores_url, params: { consumidor: attributes_for(:consumidor, :invalid) }
        }.to change(Consumidor, :count).by(0)
      end


      it "renderiza resposta com status 422 (para exibir o template new)" do
        post consumidores_url, params: { consumidor: attributes_for(:consumidor, :invalid) }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "atualiza o consumidor do request" do
        consumidor = create(:consumidor)
        patch consumidor_url(consumidor), params: { consumidor: new_attributes }
        consumidor.reload
        # skip("Add assertions for updated state")
      end

      it "redireciona para o consumidor" do
        consumidor = create(:consumidor)
        patch consumidor_url(consumidor), params: { consumidor: new_attributes }
        consumidor.reload
        expect(response).to redirect_to(consumidor_url(consumidor))
      end
    end

    context "com parâmetros inválidos" do

      it "renderiza resposta com status 422 (para exibir o template edit)" do
        consumidor = create(:consumidor)
        patch consumidor_url(consumidor), params: { consumidor: attributes_for(:consumidor, :invalid) }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "DELETE /destroy" do
    it "deleta o consumidor da requisição" do
      consumidor = create(:consumidor)
      expect {
        delete consumidor_url(consumidor)
      }.to change(Consumidor, :count).by(-1)
    end

    it "redireciona para a lista de consumidores" do
      consumidor = create(:consumidor)
      delete consumidor_url(consumidor)
      expect(response).to redirect_to(consumidores_url)
    end
  end
end
