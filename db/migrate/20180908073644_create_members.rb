class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :m_name
      t.integer :role
      t.string :job
      t.string :sub_job
      t.integer :my_guild_id

      t.timestamps
    end
  end
end
