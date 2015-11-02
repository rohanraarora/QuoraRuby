class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.integer :upvotes
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
