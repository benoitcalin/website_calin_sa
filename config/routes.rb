Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/presentation', to: "pages#presentation", as: :presentation
  get '/organisation', to: "pages#organisation", as: :organisation
  get '/moyens_et_chiffres', to: "pages#figures", as: :figures
  get '/historique', to: "pages#history", as: :history
  get '/sites', to: "pages#sites", as: :sites
  get '/filiales', to: "pages#subsidiaries", as: :subsidiaries
  get '/beton', to: "pages#concrete", as: :concrete
  get '/carrieres', to: "pages#quarries", as: :quarries
  get '/tavaux_publics', to: "pages#publics", as: :publics
  get '/mentions_legales', to: "pages#mentions", as: :mentions
end
