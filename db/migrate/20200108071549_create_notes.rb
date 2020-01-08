class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :notes_subject
      t.integer :user_id
      t.integer :assignment_id
      t.integer :account_id

      t.timestamps
    end
  end
end
