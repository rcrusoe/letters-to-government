class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :first_name
      t.string :last_name
      t.string :state
      t.string :position
      t.string :party
      t.string :email
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
