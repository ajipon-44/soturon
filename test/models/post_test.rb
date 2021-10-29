# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  body            :text
#  date            :date
#  good            :integer
#  image           :text
#  quote_tweet     :integer
#  retweet         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  virtual_user_id :integer
#
require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
