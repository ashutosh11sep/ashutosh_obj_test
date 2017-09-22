class CreateTestcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :testcategories do |t|
      t.string :testname

      t.timestamps
    end
  end
end
