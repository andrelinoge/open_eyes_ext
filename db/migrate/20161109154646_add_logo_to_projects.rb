class AddLogoToProjects < ActiveRecord::Migration
  def up
    add_attachment :projects, :logo
  end

  def down
    remove_attachment :projects, :logo
  end
end
