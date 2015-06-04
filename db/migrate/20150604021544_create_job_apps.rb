class CreateJobApps < ActiveRecord::Migration
  def change
    create_table :job_apps do |t|
      t.string :link
      t.date :date_saved
      t.date :date_applied

      t.timestamps
    end
  end
end
