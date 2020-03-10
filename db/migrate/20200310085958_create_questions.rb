class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false

      t.timestamps
    end
  end
end
