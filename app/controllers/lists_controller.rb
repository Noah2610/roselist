class ListsController < ApplicationController
  def index
		@lists = List.all
  end

  def show
		@list = List.find params[:id]
		@entries = @list.entries
  end

	def new_list
		@list = List.create! name: "(New List)"
		redirect_to lists_path
	end

	def new_entry
		# New Entry in List
		@list = List.find params[:id]
		@entry = Entry.new
		@method = "post"
		@url = create_entry_path
	end

  def create
  end

  def destroy
  end
end
