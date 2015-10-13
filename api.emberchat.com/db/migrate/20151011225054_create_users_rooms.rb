class CreateUsersRooms < ActiveRecord::Migration
  def change
    create_table :users_rooms, id: false do |t|
      t.belongs_to :room, index: true
      t.belongs_to :user, index: true
    end
  end
end
