class CreateUserReports < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reports do |t|
      t.references :reporter, foreign_key: {to_table: :users}
      t.references :reported, foreign_key: {to_table: :users}
      t.string :comment

      t.timestamps
    end
  end
end
