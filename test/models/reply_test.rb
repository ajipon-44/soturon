# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  reply_id   :integer
#
# Indexes
#
#  index_replies_on_post_id               (post_id)
#  index_replies_on_post_id_and_reply_id  (post_id,reply_id) UNIQUE
#  index_replies_on_reply_id              (reply_id)
#
require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
