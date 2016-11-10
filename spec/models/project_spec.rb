# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  category_id       :integer
#  title             :string(255)
#  slug              :string(255)
#  description       :text(65535)
#  summary           :text(65535)
#  amount            :decimal(10, )
#  rate_exchange     :decimal(10, )
#  external_url      :string(255)
#  start_at          :datetime
#  end_at            :datetime
#  status            :integer
#  featured          :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
