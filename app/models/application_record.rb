class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

has_attached_file :image
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
end
