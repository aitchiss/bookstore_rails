class CreateBookstores < ActiveRecord::Migration
  def change
    create_table :bookstores do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end
