class ListsController < ApplicationController
  def index
		@lists = List.all
  end

  def show
		@list = List.find params[:id]
		@entries = @list.entries
  end

	def create
		list = List.create! params_accept(:list)
		redirect_to list_path list
	end

	def new_entry
		# New Entry in List
		@list = List.find params[:id]
		@entry = Entry.new
		@method = "post"
		@url = create_entry_path
	end

	def update
		list = List.find params[:id]
		if (list.update_attributes! params_accept(:list))
			flash[:success] = "Updated List."
		else
			flash[:danger] = "There was a problem updating this List."
		end
		redirect_to list_path list
	end

  def destroy
		list = List.find params[:id]
		if (list.destroy!)
			flash[:success] = "List has been deleted."
			redirect_to root_path
		else
			flash[:danger] = "There was a problem deleting the List."
			redirect_to list_path list
		end
  end

	private

		def params_accept target
			case target
			when :list
				params.require(:list).permit(:name)
			end
		end

end
