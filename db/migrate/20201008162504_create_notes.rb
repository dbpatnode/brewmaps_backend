class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :review
      t.string :atmosphere
      t.string :rating
      t.references :user, null: false, foreign_key: true
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
