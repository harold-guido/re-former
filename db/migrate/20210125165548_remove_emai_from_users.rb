class RemoveEmaiFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :emai, :string
  end
end
