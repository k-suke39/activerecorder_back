class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.references :chapter, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :question, null: false
      t.text :answer, null: false
      t.integer :order_number, null: false

      t.timestamps
    end
  end
end
