require "spec_helper"

describe Admin::AdminController do
  describe "routing" do
    it "routes to admin index action" do
      get( "/admin/" ).should route_to( "admin/admin#index" )
    end
  end
end