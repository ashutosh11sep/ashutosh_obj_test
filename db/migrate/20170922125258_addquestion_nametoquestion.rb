class AddquestionNametoquestion < ActiveRecord::Migration[5.1]
  def change
  	    add_column :questions, :test_id, :integer
  	    add_column :questions, :question_name, :string


  end
end
