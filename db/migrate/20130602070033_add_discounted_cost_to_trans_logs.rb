class AddDiscountedCostToTransLogs < ActiveRecord::Migration
  def change
    add_column :trans_logs, :discountedCost, :integer
  end
end
