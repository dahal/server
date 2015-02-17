class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :brand_name,       null:false
      t.string :reply_to_email,   null: false
      t.string :survey_subject
      t.string :survey_body,      limit: 255
      t.string :brand_color
      t.string :brand_logo
      t.string :survey_hash

      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
