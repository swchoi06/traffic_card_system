class ErrorLogController < ApplicationController
	layout 'producers'
	def index
		@error_logs = ErrorLog.all

		respond_to do |format|
			format.html #index.html.erb
			format.json { render json: @error_logs }
		end
	end
end
