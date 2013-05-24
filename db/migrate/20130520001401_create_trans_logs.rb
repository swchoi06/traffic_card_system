class CreateTransLogs < ActiveRecord::Migration
  def change
    create_table :trans_logs do |t|
	    t.integer  "cardID"
	    t.integer  "busRouteNm"
	 	t.string   "boardingPlace"
	    t.datetime "boardingTime"
	    t.string   "landingPlace"
	    t.datetime "landingTime"
	    t.integer  "transfer"
	    t.integer  "cost"
		t.timestamps
    end
  end
end
