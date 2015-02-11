Rails.application.routes.draw do
  resources :employees

  resources :companies do
    collection { post :import }
  end

  devise_for :users
  #static pages don't have resources.
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  get 'welcome/features'

  #dynamic pages have resources.
  resources :invoices

  root to: 'welcome#index'

  
end
