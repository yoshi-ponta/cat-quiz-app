class AddChoicesColumnsAndRemoveChoicesFromQuizzes < ActiveRecord::Migration[7.1]
  def up
    # choice1〜4 カラムを追加
    add_column :quizzes, :choice1, :string
    add_column :quizzes, :choice2, :string
    add_column :quizzes, :choice3, :string
    add_column :quizzes, :choice4, :string

    # choices カラムから値を分解してchoice1〜4にコピーする処理（もし既存データがあれば）
    Quiz.reset_column_information
    Quiz.find_each do |quiz|
      choices = JSON.parse(quiz.choices) rescue []
      quiz.update_columns(
        choice1: choices[0],
        choice2: choices[1],
        choice3: choices[2],
        choice4: choices[3]
      )
    end

    # choices カラムを削除
    remove_column :quizzes, :choices
  end

  def down
    # 元に戻す処理

    add_column :quizzes, :choices, :text

    Quiz.reset_column_information
    Quiz.find_each do |quiz|
      choices = [quiz.choice1, quiz.choice2, quiz.choice3, quiz.choice4].compact
      quiz.update_columns(choices: choices.to_json)
    end

    remove_column :quizzes, :choice1
    remove_column :quizzes, :choice2
    remove_column :quizzes, :choice3
    remove_column :quizzes, :choice4
  end
end
