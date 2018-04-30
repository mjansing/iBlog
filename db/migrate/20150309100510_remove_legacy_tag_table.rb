class RemoveLegacyTagTable < ActiveRecord::Migration[4.2]
  def up
    execute <<-SQL
DROP TABLE tags_legacy;
SQL
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
