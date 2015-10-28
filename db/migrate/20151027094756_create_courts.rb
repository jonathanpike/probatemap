class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.float :latitude
      t.float :longitude 
      t.timestamps null: false
    end
  end
end
