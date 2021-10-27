# == Schema Information
#
# Table name: tests
#
#  id           :integer          not null, primary key
#  score        :integer
#  teacher      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  real_user_id :integer
#
class Test < ApplicationRecord
end
