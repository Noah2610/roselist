class ListsController < ApplicationController
  def index
		@lists = List.all
  end

  def show
		@list = List.find params[:id]
		@entries = @list.entries
  end

	def new
	end

  def create
  end

  def destroy
  end
end
