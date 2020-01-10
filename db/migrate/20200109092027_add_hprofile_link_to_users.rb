class AddHprofileLinkToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :hprofile_link, :string
  end
end
