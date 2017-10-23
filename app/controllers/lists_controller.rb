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

  def destroy
  end

	private

		def params_accept target
			case target
			when :list
				params.require(:list).permit(:name)
			end
		end

end
