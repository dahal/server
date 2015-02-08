class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :company_name, null: false
      t.string :email_from
      t.string :reply_to_email
      t.string :survey_subject
      t.string :survey_body
      t.string :survey_body_color
      t.string :button_text_color
      t.string :brand_logo

      t.timestamps null: false
    end
  end
end
