class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :status
      t.date :start_date
      t.date :end_date
      t.date :completition_date
      t.text :description
      t.references :node, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
