# == Schema Information
#
# Table name: answers
#
#  id              :integer          not null, primary key
#  danger_level    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  virtual_user_id :integer
#
require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
