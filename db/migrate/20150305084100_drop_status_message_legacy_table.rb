class DropStatusMessageLegacyTable < ActiveRecord::Migration[4.2]
  def up
    execute <<-SQL
DROP TABLE status_messages;
SQL
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
