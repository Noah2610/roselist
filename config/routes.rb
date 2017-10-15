Rails.application.routes.draw do

	root 'lists#index'

  get   'lists',              to: 'lists#index',     as: 'lists'
  get   'lists/:id',          to: 'lists#show',      as: 'show_list'
	get   'lists/new',          to: 'lists#new',       as: 'new_list'
  get   'lists/:id/edit',     to: 'lists#edit',      as: 'edit_list'
	get   'lists/:id/new',      to: 'lists#new',       as: 'new_entry'

	post  'lists/:id/create',   to: 'entries#create',  as: 'create_entry'
  get   'entry/:id/edit',     to: 'entries#edit',    as: 'edit_entry'
  patch 'entry/:id/update',   to: 'entries#update',  as: 'update_entry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
