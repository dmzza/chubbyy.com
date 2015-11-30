class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :hex_value

      t.timestamps null: false
    end
  end
end
