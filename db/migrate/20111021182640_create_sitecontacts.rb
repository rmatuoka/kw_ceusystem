class CreateSitecontacts < ActiveRecord::Migration
  def self.up
    create_table :sitecontacts do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :empresa
      t.text :mensagem

      t.timestamps
    end
  end

  def self.down
    drop_table :sitecontacts
  end
end
