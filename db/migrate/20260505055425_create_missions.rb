class CreateMissions < ActiveRecord::Migration[8.1]
  def change
    create_table :missions do |t|
      t.bigint :agent_id, null: false
      t.string :title, null: false
      t.string :status, null: false

      t.timestamps
    end

    add_index :missions, :agent_id
    add_check_constraint :missions, "status IN ('assigned', 'in_progress', 'completed')", name: "missions_status_valid"
  end
end
