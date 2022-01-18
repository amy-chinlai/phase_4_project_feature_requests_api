class ChangeVoteColumnToBoolean < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :vote, :boolean
  end
end
