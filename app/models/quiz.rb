class Quiz < ApplicationRecord
  def choices_array
    [choice1, choice2, choice3, choice4].compact
  end
end
