Rails.application.routes.draw do
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
