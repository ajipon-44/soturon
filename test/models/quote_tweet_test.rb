# == Schema Information
#
# Table name: quote_tweets
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  user_id    :integer
#
require 'test_helper'

class QuoteTweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
