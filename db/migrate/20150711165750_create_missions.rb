class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.boolean :private

      t.timestamps
    end

    create_join_table :missions, :users do |t|
      t.index :mission_id
      t.index :user_id
    end
  end
end
