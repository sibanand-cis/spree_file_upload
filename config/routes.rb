Spree::Core::Engine.routes.draw do
  resources :file_uploads

  namespace :admin do
  	resources :file_uploads
  end


  # Add your extension routes here
end
