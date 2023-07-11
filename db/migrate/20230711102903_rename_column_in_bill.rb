class RenameColumnInBill < ActiveRecord::Migration[7.0]
  def change
    rename_column :bills, :type, :bill_type
  end
end
