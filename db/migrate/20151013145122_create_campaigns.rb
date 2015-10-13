class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :top
      t.text :body
      t.text :bottom
      t.text :stylesheet
      t.string :page_id

      t.timestamps null: false
    end
    add_index :campaigns, :page_id, unique: true
  end
end
