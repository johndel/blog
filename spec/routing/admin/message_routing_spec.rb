require "spec_helper"

describe Admin::MessagesController do
  describe "routing" do
    it "routes to admin message index action" do
      get( "/admin/messages" ).should route_to( "admin/messages#index" )
    end

    it "calls the admin messages new action" do
      get( "/admin/messages/new" ).should route_to( "admin/messages#new" )
    end

    it "calls the admin messages edit action" do
      get( "/admin/messages/1/edit" ).should route_to( "admin/messages#edit", id: "1" )
    end

    it "calls the admin messages create action" do
      post( "/admin/messages" ).should route_to( "admin/messages#create" )
    end

    it "calls the admin messages update action" do
      put( "/admin/messages/1" ).should route_to( "admin/messages#update", id: "1" )
    end

    it "calls the admin messages delete action" do
      delete( "/admin/messages/1" ).should route_to( "admin/messages#destroy", id: "1" )
    end
  end
end
