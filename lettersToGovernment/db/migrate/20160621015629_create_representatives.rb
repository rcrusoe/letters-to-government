class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :first_name
      t.string :last_name
      t.string :state
      t.string :party
      t.string :office
      t.string :email

      t.timestamps null: false
    end
  end
end
