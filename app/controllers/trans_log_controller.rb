class TransLogController < ApplicationController

	layout 'producers'
	def index
		@trans_logs = TransLog.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @trans_logs }
		end
	end

	def statistic
		@trans_logs = TransLog.all
		@total_cost = Array.new(5) { Array.new(3) }
		@total_cost[0][0] = 5513
		@total_cost[0][1] = 0
		@total_cost[0][2] = 0 
		@total_cost[1][0] = 5516
		@total_cost[1][1] = 0
		@total_cost[1][2] = 0
		@_total_cost = 0
		@_total_discounted_cost =0

		@trans_logs.each do |log|
			if log.busRouteNm == 5513
				@total_cost[0][2] += log.cost
				@total_cost[0][1] += log.discountedCost
			elsif log.busRouteNm == 5516
				@total_cost[1][2] += log.cost
				@total_cost[1][1] += log.discountedCost
			end
			@_total_cost += log.cost
			@_total_discounted_cost += log.discountedCost
		end

		respond_to do |format|
			format.html #statistic.html.erb
			format.json { render json: @trans_logs }
		end
	end
end
