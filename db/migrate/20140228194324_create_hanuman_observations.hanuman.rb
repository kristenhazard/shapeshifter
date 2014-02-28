# This migration comes from hanuman (originally 20140228194214)
class CreateHanumanObservations < ActiveRecord::Migration
  def change
    create_table :hanuman_observations do |t|
      t.references :survey, index: true
      t.references :survey_question, index: true
      t.text :answer
      t.text :notes

      t.timestamps
    end
  end
end
