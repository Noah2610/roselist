class EntriesController < ApplicationController
  def index
		@entries = Entry.all
  end

	def new
	end

	def create
		@list = List.find params[:id]
		@entry = @list.entries.create! params_accept(:entry)
		redirect_to show_list_path @list
	end

  def edit
		@entry = Entry.find params[:id]
		@method = "patch"
		@url = update_entry_path
  end

	def update
		@entry = Entry.find params[:id]
		redirect_to edit_entry_path @entry
	end

	private

		def params_accept target
			case (target)
			when :entry
				return params.require(:entry).permit(:name, :description, :quantity)
			end
		end

end
