class CreateTestresults < ActiveRecord::Migration[5.2]
  def change
    create_table :testresults do |t|
      t.string :name1
      t.integer :jap_result
      t.integer :math_result
      t.integer :eng_result
      t.integer :soci_result
      t.integer :sci_result

      t.timestamps
    end
    add_index :testresults, :user_id
  end
end
