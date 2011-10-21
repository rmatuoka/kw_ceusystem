class AddAttachmentCurriculumToWork < ActiveRecord::Migration
  def self.up
    add_column :works, :curriculum_file_name, :string
    add_column :works, :curriculum_content_type, :string
    add_column :works, :curriculum_file_size, :integer
    add_column :works, :curriculum_updated_at, :datetime
  end

  def self.down
    remove_column :works, :curriculum_file_name
    remove_column :works, :curriculum_content_type
    remove_column :works, :curriculum_file_size
    remove_column :works, :curriculum_updated_at
  end
end
