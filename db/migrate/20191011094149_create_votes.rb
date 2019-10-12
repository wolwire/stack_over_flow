class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :up_vote , default: 0
      t.integer :down_vote , default: 0
      t.belongs_to :user
      t.references :votable, polymorphic: true
    end
  end
end
