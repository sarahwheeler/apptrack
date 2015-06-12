class CreateJobListings < ActiveRecord::Migration
  def change
    create_table :job_listings do |t|
      t.string :url
      t.string :company
      t.string :title
      t.date :date_posted

      t.timestamps
    end
  end
end
