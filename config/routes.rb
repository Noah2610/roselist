Rails.application.routes.draw do

	root 'entries#index'

  get 'list',      to: 'entries#index',  as: 'entries'
  get 'edit/:id',  to: 'entries#edit',   as: 'edit'
	get 'new',       to: 'entries#new',    as:'new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
