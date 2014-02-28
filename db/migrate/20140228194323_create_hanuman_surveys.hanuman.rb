# This migration comes from hanuman (originally 20140228193927)
class CreateHanumanSurveys < ActiveRecord::Migration
  def change
    create_table :hanuman_surveys do |t|
      t.references :survey_template, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
