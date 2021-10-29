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
require 'test_helper'

class TestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
