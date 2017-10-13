class EntriesController < ApplicationController
  def index
		@entries = Entry.all
  end

	def new
	end

  def edit
  end
end
