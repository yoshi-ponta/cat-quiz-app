class AddAudioFileToQuizzes < ActiveRecord::Migration[7.1]
  def change
    add_column :quizzes, :audio_file, :string
  end
end
