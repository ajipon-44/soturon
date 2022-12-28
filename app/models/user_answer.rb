# == Schema Information
#
# Table name: user_answers
#
#  id         :bigint           not null, primary key
#  address    :string
#  belonging  :string
#  real_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserAnswer < ApplicationRecord
end
