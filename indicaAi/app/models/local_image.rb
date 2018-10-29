# Model of LocalImage
class LocalImage < ApplicationRecord
    belongs_to :local
    mount_uploaders :images, ImageUploader
end
