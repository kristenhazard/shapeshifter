# This migration comes from hanuman (originally 20140314035640)
class AddScientificTextToHanumanAnswerChoices < ActiveRecord::Migration
  def change
    add_column :hanuman_answer_choices, :scientific_text, :string
  end
end
