# == Schema Information
#
# Table name: virtual_users
#
#  id                    :bigint           not null, primary key
#  address               :string
#  address_explanation   :text             default("特になし"), not null
#  belonging             :string
#  belonging_explanation :text             default("特になし"), not null
#  catch_copy            :text
#  image                 :string
#  name                  :string
#  real_name             :string
#  real_name_explanation :text             default("特になし"), not null
#  sub_name              :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
require 'test_helper'

class VirtualUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
