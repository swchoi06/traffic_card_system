class CreateErrorLogs < ActiveRecord::Migration
  def change
    create_table :error_logs do |t|
	  t.integer	 "cardID"
	  t.string	 "errorMessage"
	  t.datetime "errorOccurTime"
      t.timestamps
    end
  end
end
