class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps
    end
    create_table :questions_tags do |t|
      t.belongs_to :tags
      t.belongs_to :question
      t.timestamps
    end
  end
end
