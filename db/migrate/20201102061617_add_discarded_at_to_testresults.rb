class AddDiscardedAtToTestresults < ActiveRecord::Migration[5.2]
  def change
    add_column :testresults, :discarded_at, :datetime
    add_index :testresults, :discarded_at
  end
end
