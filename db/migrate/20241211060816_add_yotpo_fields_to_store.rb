class AddYotpoFieldsToStore < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_stores, :yotpo_script, :text
    add_column :spree_stores, :yotpo_enabled,  :boolean, default: false
  end
end
