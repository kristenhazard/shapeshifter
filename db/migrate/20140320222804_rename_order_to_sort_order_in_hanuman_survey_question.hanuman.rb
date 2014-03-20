# This migration comes from hanuman (originally 20140320222656)
class RenameOrderToSortOrderInHanumanSurveyQuestion < ActiveRecord::Migration
  def change
    rename_column :hanuman_survey_questions, :order, :sort_order
  end
end
