class TransLogController < ApplicationController

	layout 'producers'
	def index
		@trans_logs = TransLog.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @trans_logs }
		end
	end
end
