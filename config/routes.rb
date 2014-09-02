Rails.application.routes.draw do

match('/', {:via => :get, :to => 'sightings#index'})
match('sightings', {:via => :get, :to => 'sightings#index'})
match('sightings/new', {:via => :get, :to => 'sightings#new'})
match('sightings', {:via => :post, :to => 'sightings#create'})
match('sightings/:id', {:via => :get, :to => 'sightings#show'})
match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
match('sightings/by_animal', {:via => :get, :to => 'sightings#by_animal'})
match('sightings/by_region', {:via => :get, :to => 'sightings#by_region'})
match('sightings/by_name', {:via => :get, :to => 'sightings#by_name'})

match('animals', {:via => :get, :to => 'animals#index'})
match('animals/new', {:via => :get, :to => 'animals#new'})
match('animals', {:via => :post, :to => 'animals#create'})
match('animals/:id', {:via => :get, :to => 'animals#show'})
match('animals/:id/edit', {:via => :get, :to => 'animals#edit'})

match('regions', {:via => :get, :to => 'regions#index'})
match('regions/new', {:via => :get, :to => 'regions#new'})
match('regions', {:via => :post, :to => 'regions#create'})
match('regions/:id', {:via => :get, :to => 'regions#show'})
match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})

end
