# == Schema Information
#
# Table name: user_answers
#
#  id         :bigint           not null, primary key
#  image      :binary
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :string
#
class UserAnswer < ApplicationRecord
end
