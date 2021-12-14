# == Schema Information
#
# Table name: answers
#
#  id              :integer          not null, primary key
#  danger_level    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  virtual_user_id :integer
#
class Answer < ApplicationRecord
  # 関連
  belongs_to :virtual_user


  # バリデーション
  validates :virtual_user_id, uniqueness: true
  validates :danger_level, presence: true
end
