class Like < ApplicationRecord
  belongs_to :geektoeic
  belongs_to :user

  validates_uniqueness_of :geektoeic_id, scope: :user_id
end

