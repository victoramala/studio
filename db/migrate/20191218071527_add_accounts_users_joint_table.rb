class AddAccountsUsersJointTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :accounts, :users do |t|
     t.index :account_id
     t.index :user_id
   end
  end
end
