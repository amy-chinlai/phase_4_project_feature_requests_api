class AddVoteColumnToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :vote, :integer
  end
end
