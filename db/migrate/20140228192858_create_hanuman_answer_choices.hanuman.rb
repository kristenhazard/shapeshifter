# This migration comes from hanuman (originally 20140228192639)
class CreateHanumanAnswerChoices < ActiveRecord::Migration
  def change
    create_table :hanuman_answer_choices do |t|
      t.references :question, index: true
      t.string :option_text

      t.timestamps
    end
  end
end
