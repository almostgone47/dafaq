class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.datetime :when
      t.integer :cost
      t.boolean :status
      t.integer :no_of_people
      t.boolean :private
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
