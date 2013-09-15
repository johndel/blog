require "spec_helper"

describe Admin::PostsController do
  describe "routing" do
    it "routes to admin post index action" do
      get( "/admin/posts" ).should route_to( "admin/posts#index" )
    end

    it "calls the admin posts new action" do
      get( "/admin/posts/new" ).should route_to( "admin/posts#new" )
    end

    it "calls the admin posts edit action" do
      get( "/admin/posts/1/edit" ).should route_to( "admin/posts#edit", id: "1" )
    end

    it "calls the admin posts create action" do
      post( "/admin/posts" ).should route_to( "admin/posts#create" )
    end

    it "calls the admin posts update action" do
      put( "/admin/posts/1" ).should route_to( "admin/posts#update", id: "1" )
    end

    it "calls the admin posts delete action" do
      delete( "/admin/posts/1" ).should route_to( "admin/posts#destroy", id: "1" )
    end

    it "calls the admin posts tags action" do
      get( "/admin/tags/test" ).should route_to( "admin/posts#index", tag: "test" )
    end
  end
end