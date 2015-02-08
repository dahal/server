class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title, null: false
      t.string :description, limit: 128
      t.string :brand_color
      t.string :body_text_color
      t.string :button_color
      t.string :body_text, limit: 128
      t.string :brand_logo, null: false

      t.timestamps null: false
    end
  end
end
