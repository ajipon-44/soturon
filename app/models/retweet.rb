# == Schema Information
#
# Table name: retweets
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  user_id    :integer
#
class Retweet < ApplicationRecord
end
