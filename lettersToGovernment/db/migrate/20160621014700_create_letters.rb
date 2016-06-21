class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :title
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
