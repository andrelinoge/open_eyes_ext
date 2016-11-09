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

require 'rails_helper'

RSpec.describe City, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
