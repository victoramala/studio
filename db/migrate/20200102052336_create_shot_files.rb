class CreateShotFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :shot_files do |t|
      t.attachment :shot_files, :shot_image
      t.references :node, null: false, foreign_key: true
      t.timestamps
    end
  end
end
