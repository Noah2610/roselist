Rails.application.routes.draw do

	root 'lists#index'

	# LISTS
  get    'lists/:id',          to: 'lists#show',      as: 'list'
  patch  'lists/:id',          to: 'lists#update'
	delete 'lists/:id',          to: 'lists#destroy'
  get    'lists',              to: 'lists#index',     as: 'lists'
	post   'lists',              to: 'lists#create'
  get    'lists/:id/edit',     to: 'lists#edit',      as: 'edit_list'
	# ENTRIES via LIST
	get    'lists/:id/new',      to: 'lists#new_entry', as: 'new_entry'
	post   'lists/:id/create',   to: 'entries#create',  as: 'create_entry'
	# ENTRIES
  get    'entry/:id',          to: 'entries#edit',    as: 'edit_entry'
  post   'entry/:id',          to: 'entries#create',  as: 'entries'
  patch  'entry/:id',          to: 'entries#update',  as: 'entry'
  delete 'entry/:id',          to: 'entries#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
