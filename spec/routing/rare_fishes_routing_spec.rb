require "rails_helper"

RSpec.describe RareFishesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/rare_fishes").to route_to("rare_fishes#index")
    end

    it "routes to #new" do
      expect(get: "/rare_fishes/new").to route_to("rare_fishes#new")
    end

    it "routes to #show" do
      expect(get: "/rare_fishes/1").to route_to("rare_fishes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/rare_fishes/1/edit").to route_to("rare_fishes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/rare_fishes").to route_to("rare_fishes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/rare_fishes/1").to route_to("rare_fishes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/rare_fishes/1").to route_to("rare_fishes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/rare_fishes/1").to route_to("rare_fishes#destroy", id: "1")
    end
  end
end
