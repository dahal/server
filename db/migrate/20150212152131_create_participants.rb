class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string   :email
      t.integer  :rating
      t.string   :feedback
      t.string   :feedback_url
      t.belongs_to :survey

      t.timestamps null: false
    end
  end
end
