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
class Reply < ApplicationRecord
  # 関連
  belongs_to :post
  belongs_to :replied, class_name: 'Post'


  # 委譲
  def replied_body; replied.body; end
  def post_body; post.body; end


  # バリデーション
  validates :post_id, uniqueness: { scope: :replied_id, message: "このリプライはすでに存在します" }
end
