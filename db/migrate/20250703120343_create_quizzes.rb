class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :answer
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.text :explanation
      t.text :nation

      t.timestamps
    end
  end
end
