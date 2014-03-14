# This migration comes from hanuman (originally 20140314040542)
class AddAncestryIndexToHanumanAnswerChoices < ActiveRecord::Migration
  def change
    add_index :hanuman_answer_choices, :ancestry
  end
end
