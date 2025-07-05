class AddChoicesAndCorrectAnswerToQuizzes < ActiveRecord::Migration[7.1]
  def change
    add_column :quizzes, :choices, :text
    add_column :quizzes, :correct_answer, :string
  end
end
