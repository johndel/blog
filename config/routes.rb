JohnDelBlog::Application.routes.draw do

  devise_for :users

  namespace :admin do
    root to: "admin#index"
    get 'tags/:tag', to: 'posts#index', as: :tag
    resources :posts,    except: :show
    resources :messages, except: :show
    resources :users,    except: :show
    resources :uploads,  only: [:index, :new, :create, :destroy]
  end

  scope module: :front do
    resources :posts, path: "/blog", only: [:index, :show] do
      get 'tags/:tag', to: 'posts#index', as: :tag, on: :collection
      get "search", to: "posts#search", on: :collection
    end
  end
  root to: 'front/posts#homepage'
end
