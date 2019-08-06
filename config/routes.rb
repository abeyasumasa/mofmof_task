Rails.application.routes.draw do
  resources :rentals do
    collection do
      post :confirm
    end
  end
end
