class StaticPage < ActiveRecord::Base
  has_many :file_attachments, as: :attachable

end
