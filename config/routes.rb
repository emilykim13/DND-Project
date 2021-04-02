Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get  '/encounters/enter_combat/:id' => 'encounters#enter_combat'
  get  '/encounters/in_combat/:id' => 'encounters#in_combat'
  get  '/encounters/end_combat/:id'=> 'encounters#end_combat'
  post  '/encounters/escape_combat/:id'=> 'encounters#escape_combat'
  post '/encounters/character_attack/:id' => 'encounters#character_attack'
  post '/encounters/enemy_attack/:id' => 'encounters#enemy_attack'
  #post '/encounters/vibe_check/:id' => 'encounters#vibe_check'
  post '/encounters/character_heal/:id' => 'encounters#character_heal'
  post '/encounters/enemy_heal/:id' => 'encounters#enemy_heal'


  # get '/equipweapon' => 'sessions#equip_weapon'
  # post '/equipweapon/:character_id' => 'sessions#weapon'
  # get '/equipshield' => 'sessions#equip_shield'
  # post '/equipshield/:character_id' => 'sessions#shield'

  get '/equipweapon' => 'characters#equip_weapon'
  post '/equipweapon/:character_id' => 'characters#weapon'
  get '/equipshield' => 'characters#equip_shield'
  post '/equipshield/:character_id' => 'characters#shield'

  get '/instructions' => 'welcome#howtoplay'
  
  resources :users
  resources :characters
  resources :enemies
  resources :encounters

  # patch '/characters/:id/edit', to:"characters#edit", as: "edit"

  root 'welcome#home'
end
