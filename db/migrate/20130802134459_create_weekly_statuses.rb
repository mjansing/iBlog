class CreateWeeklyStatuses < ActiveRecord::Migration[4.2]
  def change
    create_table :weekly_statuses do |t|
      t.string :author
      t.text :status
      t.text :status_html

      t.timestamps
    end
  end
end
