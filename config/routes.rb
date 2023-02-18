Rails.application.routes.draw do
  # sidekiqの管理画面のルーティング
  require 'sidekiq/web'
  mount Sidekiq::Web, at: "/sidekiq"

  resources :emails
end
