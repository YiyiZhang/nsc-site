class FileAttachment < ActiveRecord::Base

  belongs_to :attachable, polymorphic: true

  has_attached_file :attachment, styles: { medium: "300x300>", thumb: "80x80>" }#, default_url: "/images/:style/missing.png"
  do_not_validate_attachment_file_type :attachment

  def self.IMAGE_TYPES
    ["image/jpeg", "image/png", "image/gif"]
  end
end
