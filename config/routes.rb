Rails.application.routes.draw do

	root 'lists#index'

	# LISTS
  get   'lists',              to: 'lists#index',     as: 'lists'
  get   'lists/:id/show',     to: 'lists#show',      as: 'list'
	post  'lists/create',       to: 'lists#create',    as: 'create_list'
  get   'lists/:id/edit',     to: 'lists#edit',      as: 'edit_list'
	# ENTRIES via LIST
	get   'lists/:id/new',      to: 'lists#new_entry', as: 'new_entry'
	post  'lists/:id/create',   to: 'entries#create',  as: 'create_entry'
	# ENTRIES
  get   'entry/:id/edit',     to: 'entries#edit',    as: 'edit_entry'
  patch 'entry/:id/update',   to: 'entries#update',  as: 'update_entry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
