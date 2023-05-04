Rails.application.routes.draw do
  post '/api/v2/create_blob', to: 'et_gds_design_system/blobs#create'
end
