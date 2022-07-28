# == Schema Information
#
# Table name: replies
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :bigint
#  replied_id :bigint
#
# Indexes
#
#  index_replies_on_post_id                 (post_id)
#  index_replies_on_post_id_and_replied_id  (post_id,replied_id) UNIQUE
#  index_replies_on_replied_id              (replied_id)
#
# Foreign Keys
#
#  fk_rails_...  (replied_id => posts.id)
#
require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
