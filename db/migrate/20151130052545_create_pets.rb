class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.belongs_to :color, index: true, foreign_key: true
      t.belongs_to :shape, index: true, foreign_key: true
      t.string :last_name

      t.timestamps null: false
    end
  end
end
