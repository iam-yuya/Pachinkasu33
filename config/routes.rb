Rails.application.routes.draw do


  # 会員側のルーティング
  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"

    get "end_users" => "end_users#index", as: "end_users"
    get "end_users/mypage" => "end_users#show", as: "mypage"
    get "end_users/information/edit" => "end_users#edit", as: "edit_information"
    patch "end_users/information" => "end_users#update", as: "update_information"
    resources :posts, only: [:new, :index, :show, :create, :destroy, :update] do
      resources :book_comments, only: [:create, :destroy]
    end
  end


  # 管理者側のルーティング
  namespace :admin do
    get "top" => "homes#top"
  end




  # 会員用
  devise_for :end_users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
end
