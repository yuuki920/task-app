class Day < ApplicationRecord
  validates :start_time, presence: true
  belongs_to :user
end
