class AddAttachmentToFile < ActiveRecord::Migration
  def change
		add_column :file_uploads, :attachment_file_name, :string
		add_column :file_uploads, :attachment_content_type, :string
		add_column :file_uploads, :attachment_file_size, :integer
		add_column :file_uploads, :attachment_updated_at, :datetime
  end
end
