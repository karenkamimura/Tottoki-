class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :entry, counter_cache: :favorites_count, optional: true
  
end
