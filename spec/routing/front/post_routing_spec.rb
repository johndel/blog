require "spec_helper"

describe Front::PostsController do
  describe "routing" do
    it "routes to homepage action" do
      get( "/" ).should route_to( "front/posts#homepage" )
    end

    it "routes to blog index action" do
      get( "/blog" ).should route_to( "front/posts#index" )
    end

    it "routes to tags action" do
      get( "/blog/tags/test" ).should route_to( "front/posts#index", tag: "test" )
    end

    it "routes to search action" do
      get( "/blog/search" ).should route_to( "front/posts#search" )
    end

    it "calls the posts show action" do
      get( "/blog/1" ).should route_to( "front/posts#show", id: "1" )
    end
  end
end