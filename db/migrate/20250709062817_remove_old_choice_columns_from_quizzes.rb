class RemoveOldChoiceColumnsFromQuizzes < ActiveRecord::Migration[7.2]
  def change
    remove_column :quizzes, :choice1, :string
    remove_column :quizzes, :choice2, :string
    remove_column :quizzes, :choice3, :string
    remove_column :quizzes, :choice4, :string
    remove_column :quizzes, :answer, :string
  end
end
