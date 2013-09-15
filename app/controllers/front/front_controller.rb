class Front::FrontController < ApplicationController
  layout 'front'
  before_action :horizontal_menu

  private
    def horizontal_menu
      @about = Post.tagged_with("about").first
    end
end