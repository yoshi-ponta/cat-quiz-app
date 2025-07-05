class Quiz < ApplicationRecord
  serialize :choices, coder: JSON
end
