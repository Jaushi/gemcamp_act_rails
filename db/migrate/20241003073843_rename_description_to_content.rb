class RenameDescriptionToContent < ActiveRecord::Migration[6.0]
  def change
    rename :products, :description, :content
  end
end