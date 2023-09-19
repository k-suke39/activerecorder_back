# frozen_string_literal: true

class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :slug, null: false
      t.integer :order_number, null: false

      t.timestamps
    end
  end
end
