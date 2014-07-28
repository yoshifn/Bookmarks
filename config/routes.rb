Rails.application.routes.draw do
   get '/links' => 'application#index'
   get '/new_link' => 'application#new'
   get '/link/:id' => 'application#show'
   get '/create_link' => 'application#create'
   get '/link/:id/edit' => 'application#edit'
   get '/update_link/:id' => 'application#update'
  
  
end