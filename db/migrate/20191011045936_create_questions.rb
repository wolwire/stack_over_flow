class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :picture
      t.timestamps
      t.references :user , foreign_key: true, null:false
      t.index :id
    end
  end
end
