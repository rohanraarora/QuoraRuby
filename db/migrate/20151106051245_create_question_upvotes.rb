class CreateQuestionUpvotes < ActiveRecord::Migration
  def change
    create_table :question_upvotes do |t|
      t.integer :question_id
      t.integer :upvoter_id
      
      t.timestamps null: false
    end
  end
end
