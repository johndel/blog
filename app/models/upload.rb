class Upload < ActiveRecord::Base
  belongs_to :uploadable, polymorphic: true
  mount_uploader :upload, UploadUploader
end
