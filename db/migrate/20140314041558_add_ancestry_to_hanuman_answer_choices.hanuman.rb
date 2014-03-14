# This migration comes from hanuman (originally 20140314035719)
class AddAncestryToHanumanAnswerChoices < ActiveRecord::Migration
  def change
    add_column :hanuman_answer_choices, :ancestry, :string
  end
end
