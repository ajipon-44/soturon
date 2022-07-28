# == Schema Information
#
# Table name: follows
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  follower_id     :bigint
#  virtual_user_id :bigint
#
# Indexes
#
#  index_follows_on_follower_id                      (follower_id)
#  index_follows_on_virtual_user_id                  (virtual_user_id)
#  index_follows_on_virtual_user_id_and_follower_id  (virtual_user_id,follower_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (follower_id => virtual_users.id)
#
require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
