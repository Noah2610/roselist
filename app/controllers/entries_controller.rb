class EntriesController < ApplicationController
  def index
		@entries = Entry.all
  end

	def new
	end

	def create
		list = List.find params[:id]
		@entry = list.entries.new params_accept(:entry)
		if (@entry.save)
			flash[:success] = "New entry added."
			redirect_to list_path list
		else
			render "new"
		end
	end

  def edit
		@entry = Entry.find params[:id]
		@method = "patch"
  end

	def update
		@entry = Entry.find params[:id]
		if (@entry.update_attributes! params_accept(:entry))
			flash[:success] = "Updated entry."
			redirect_to list_path @entry.list
		else
			flash[:danger] = "Couldn't update entry."
			redirect_to edit_entry_path @entry
		end
	end

	def destroy
		entry = Entry.find params[:id]
		if (entry.destroy!)
			flash[:success] = "Entry has been deleted."
			redirect_to list_path entry.list
		else
			flash[:danger] = "Entry couldn't be deleted."
			redirect_to entry_path entry
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
