class TopsController < ApplicationController
	def index
		@tops = top.all
		
	end
end
