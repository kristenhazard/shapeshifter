# This migration comes from hanuman (originally 20140320052544)
class RemoveMultiAnswerFromHanumanObservationAnswer < ActiveRecord::Migration
  def change
    remove_column :hanuman_observation_answers, :multi_answer, :string
  end
end
