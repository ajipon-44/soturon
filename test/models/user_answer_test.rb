# == Schema Information
#
# Table name: user_answers
#
#  id         :integer          not null, primary key
#  image      :binary(1048576)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :string
#
require 'test_helper'

class UserAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
