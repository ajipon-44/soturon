# == Schema Information
#
# Table name: posts
#
#  id              :bigint           not null, primary key
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
class Post < ApplicationRecord
  # 関連
  belongs_to :virtual_user
  has_many :goods
  has_many :replies, dependent: :destroy
  has_many :replyings, through: :replies, source: :replied
  has_many :passive_replies, class_name: 'Reply', foreign_key: 'replied_id', dependent: :destroy
  has_many :replieds, through: :passive_replies, source: :post


  # 委譲
  def virtual_user_name; virtual_user.name; end
  def virtual_user_sub_name; virtual_user.sub_name; end
  def goods_count; goods.count; end
  def virtual_user_image; virtual_user.image; end
  # def virtual_user_id; virtual_user.id; end # なぜかエラー吐く
  def replieds_count; replieds.where(display_flag: 1).count; end
  def replyings_virtual_user_name; replyings.first.virtual_user.name; end
  def replyings_virtual_user_id; replyings.first.virtual_user.id; end


  # バリデーション
  validates :body, presence: true
  validates :date, presence: true
  validates :virtual_user_id, presence: true
end
