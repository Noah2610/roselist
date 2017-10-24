class EntriesController < ApplicationController
  def index
		@entries = Entry.all
  end

	def new
	end

	def create
		@list = List.find params[:id]
		@entry = @list.entries.create! params_accept(:entry)
		redirect_to list_path @list
	end

  def edit
		@entry = Entry.find params[:id]
		@method = "patch"
  end

	def update
		@entry = Entry.find params[:id]
		if (@entry.update_attributes! params_accept(:entry))
			flash[:success] = "Updated entry."
			redirect_to edit_entry_path @entry
		else
			flash[:danger] = "Couldn't update entry."
		end
	end

	private

		def params_accept target
			case (target)
			when :entry
				return params.require(:entry).permit(:name, :description, :quantity)
			end
		end

end
