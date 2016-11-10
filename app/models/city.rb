# == Schema Information
#
# Table name: cities
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  identity            :string(255)
#  color               :string(255)
#  internal_id         :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  emblem_file_name    :string(255)
#  emblem_content_type :string(255)
#  emblem_file_size    :integer
#  emblem_updated_at   :datetime
#

class City < ActiveRecord::Base
  include ValidationPatterns
  include PaperclipAttachmentRemovable

  translates :title, :identity

  # Attachments
  has_attached_file :emblem, styles: { medium: '200x100>', small: '150x75>', thumb: '100x50>', little: '50x30>' }
  has_removable_attachments :emblem

  # Validations
  validates_attachment_content_type :emblem, content_type: REGEXP_IMAGE_CONTENT_TYPE
  validates :title, presence: true, length: { maximum: 255 }
  validates :identity, presence: true
  validates :color, presence: true, format: { with: REGEXP_COLOR_FORMAT_FULL }
end
