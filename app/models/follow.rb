# == Schema Information
#
# Table name: follows
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  follower_id     :bigint
#  virtual_user_id :bigint
#
# Indexes
#
#  index_follows_on_follower_id                      (follower_id)
#  index_follows_on_virtual_user_id                  (virtual_user_id)
#  index_follows_on_virtual_user_id_and_follower_id  (virtual_user_id,follower_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (follower_id => virtual_users.id)
#
class Follow < ApplicationRecord
  # 関連
  belongs_to :virtual_user
  belongs_to :follower, class_name: 'VirtualUser'

  # 委譲
  def follower_name; follower.name; end
  def virtual_user_name; virtual_user.name; end

  # バリデーション
  validates :virtual_user_id, uniqueness: { scope: :follower_id, message: 'このフォロー関係はすでに存在します' }
end
