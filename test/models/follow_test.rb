# == Schema Information
#
# Table name: follows
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  follower_id     :integer
#  virtual_user_id :integer
#
# Indexes
#
#  index_follows_on_follower_id                      (follower_id)
#  index_follows_on_virtual_user_id                  (virtual_user_id)
#  index_follows_on_virtual_user_id_and_follower_id  (virtual_user_id,follower_id) UNIQUE
#
require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
