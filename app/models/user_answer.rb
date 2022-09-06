# == Schema Information
#
# Table name: user_answers
#
#  id               :integer          not null, primary key
#  address          :string
#  belonging        :string
#  name             :string
#  result_address   :string
#  result_belonging :string
#  result_name      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class UserAnswer < ApplicationRecord
end
