Rails.application.routes.draw do

	root 'lists#index'

	# LISTS
  get    'lists',              to: 'lists#index',     as: 'lists'
  get    'lists/:id',          to: 'lists#show',      as: 'list'
	post   'lists',              to: 'lists#create'
  patch  'lists/:id',          to: 'lists#update'
	delete 'lists/:id',          to: 'lists#destroy'
  get    'lists/:id/edit',     to: 'lists#edit',      as: 'edit_list'
	# ENTRIES via LIST
	get    'lists/:id/new',      to: 'lists#new_entry', as: 'new_entry'
	post   'lists/:id/create',   to: 'entries#create',  as: 'create_entry'
	# ENTRIES
  get    'entry/:id',          to: 'entries#edit',    as: 'edit_entry'
  patch  'entry/:id/update',   to: 'entries#update',  as: 'update_entry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
