# == Schema Information
#
# Table name: virtual_users
#
#  id         :bigint           not null, primary key
#  catch_copy :text
#  follow     :integer
#  follower   :integer
#  image      :string
#  name       :string
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
