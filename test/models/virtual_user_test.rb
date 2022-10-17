# == Schema Information
#
# Table name: virtual_users
#
#  id         :bigint           not null, primary key
#  address    :string
#  belonging  :string
#  catch_copy :text
#  image      :string
#  name       :string
#  real_name  :string
#  sub_name   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class VirtualUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
