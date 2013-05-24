class CreateTransferLogs < ActiveRecord::Migration
  def change
    create_table :transfer_logs do |t|
	  t.integer "cardID"
	  t.integer "transferFrom"
	  t.integer "transferTo"
      t.timestamps
    end
  end
end
