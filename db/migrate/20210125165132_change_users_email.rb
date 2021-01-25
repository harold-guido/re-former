class ChangeUsersEmail < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :users do |t|
        dir.up { t.change :emai, :string }
        dir.down { t.change :email, :string }
      end
    end
  end
end
