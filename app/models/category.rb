# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  internal_id :integer
#  title       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
  translates :title
end
