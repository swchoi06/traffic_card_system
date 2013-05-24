class TransferLogController < ApplicationController
	def index
		@transfer_logs = TransferLog.all	
		respond_to do |format|
			format.html #index.html.erb
			format.json { render json: @trans_logs }
		end
	end
end
