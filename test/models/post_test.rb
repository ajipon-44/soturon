# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  body            :text
#  date            :date
#  display_flag    :integer
#  good            :integer
#  image1          :string
#  image2          :string
#  image3          :string
#  image4          :string
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
