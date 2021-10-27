# == Schema Information
#
# Table name: replies
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  replied_post_id :integer
#  reply_post_id   :integer
#
class Reply < ApplicationRecord
end
