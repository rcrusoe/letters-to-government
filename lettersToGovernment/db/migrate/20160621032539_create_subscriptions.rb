class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :letter, index: true, foreign_key: true
      t.references :representative, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
