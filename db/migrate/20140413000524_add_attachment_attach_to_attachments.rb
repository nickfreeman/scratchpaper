class AddAttachmentAttachToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.attachment :attach
    end
  end

  def self.down
    drop_attached_file :attachments, :attach
  end
end
