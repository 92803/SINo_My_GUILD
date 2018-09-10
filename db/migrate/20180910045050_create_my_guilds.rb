class CreateMyGuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :my_guilds do |t|
      t.string :g_name
      t.string :password_digest
      t.string :image

      t.timestamps
    end
  end
end
