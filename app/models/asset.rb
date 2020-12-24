class Asset < ActiveRecord::Base
  include Paperclip::Glue
  belongs_to :movie

  # Paperclip
  has_attached_file :image,
    :styles => {
      :thumb=> "80x80#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg",     "image/png", "image/gif"] }
  validates_attachment_content_type :image, content_type: /\Aimage/
  # Validate filename
  do_not_validate_attachment_file_type :image
  
end
