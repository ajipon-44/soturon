# == Schema Information
#
# Table name: answers
#
#  id              :integer          not null, primary key
#  address         :string
#  belonging       :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  virtual_user_id :integer
#
class Answer < ApplicationRecord
  # 関連
  belongs_to :virtual_user


  # 委譲
  def virtual_user_name; virtual_user.name; end


  # バリデーション
  validates :virtual_user_id, uniqueness: true
end
