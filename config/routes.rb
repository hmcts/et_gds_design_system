EtGdsDesignSystem::Engine.routes.draw do
  post '/api/v2/create_blob', to: 'blobs#create'
  get '/api/v2/blobs/:signed_id/*filename', to: 'blobs#show'
end
