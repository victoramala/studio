class AddAccountIdToNodes < ActiveRecord::Migration[6.0]
  def change
  	add_column :nodes, :account_id, :integer
  end
end
