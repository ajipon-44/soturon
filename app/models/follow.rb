# == Schema Information
#
# Table name: follows
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  follow_user_id   :integer
#  follower_user_id :integer
#
class Follow < ApplicationRecord
end
