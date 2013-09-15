require "spec_helper"

describe Admin::UsersController do
  describe "routing" do
    it "routes to admin user index action" do
      get( "/admin/users" ).should route_to( "admin/users#index" )
    end

    it "calls the admin users new action" do
      get( "/admin/users/new" ).should route_to( "admin/users#new" )
    end

    it "calls the admin users create action" do
      post( "/admin/users" ).should route_to( "admin/users#create" )
    end

    it "calls the admin users delete action" do
      delete( "/admin/users/1" ).should route_to( "admin/users#destroy", id: "1" )
    end
  end
end