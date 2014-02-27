# This migration comes from hanuman (originally 20140227210007)
class CreateHanumanOrganizations < ActiveRecord::Migration
  def change
    create_table :hanuman_organizations do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
