require "rails_helper"

RSpec.describe ConsumidoresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/consumidores").to route_to("consumidores#index")
    end

    it "routes to #new" do
      expect(get: "/consumidores/new").to route_to("consumidores#new")
    end

    it "routes to #show" do
      expect(get: "/consumidores/1").to route_to("consumidores#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/consumidores/1/edit").to route_to("consumidores#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/consumidores").to route_to("consumidores#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/consumidores/1").to route_to("consumidores#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/consumidores/1").to route_to("consumidores#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/consumidores/1").to route_to("consumidores#destroy", id: "1")
    end
  end
end
