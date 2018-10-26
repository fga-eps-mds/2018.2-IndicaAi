# Classe responsable to upload an Image
class ImageUploader < CarrierWave::Uploader::Base
  belongs_to :locals
  validates :file, presence: true

  mount_uploader :file, FileUploader
  storage :file
end
