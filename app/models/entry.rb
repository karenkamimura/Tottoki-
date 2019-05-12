class Entry < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :favorites, dependent: :destroy

  def favorite_user(user_id)
    favorites.find_by(user_id: user_id)
  end
end
