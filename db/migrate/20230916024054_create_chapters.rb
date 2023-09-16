class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.references :work, null: false, foreign_key: true
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :order_number, null: false

      t.timestamps
    end
  end
end
