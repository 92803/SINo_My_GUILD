class CreateGuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :guilds do |t|
      t.string :gname
      t.index :gname,unique: true
      t.string :image
      t.string :password_digest

      t.timestamps
    end
  end
end
