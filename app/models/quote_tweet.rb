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
class QuoteTweet < ApplicationRecord
end
