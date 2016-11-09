class AddEmblemToCities < ActiveRecord::Migration
  def up
    add_attachment :cities, :emblem
  end

  def down
    remove_attachment :cities, :emblem
  end
end
