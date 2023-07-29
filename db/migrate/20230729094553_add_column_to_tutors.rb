class AddColumnToTutors < ActiveRecord::Migration[6.1]
  def change
    add_column :tutors, :experience, :string
    add_column :tutors, :age, :integer
  end
end
