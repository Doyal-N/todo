class Item < ApplicationRecord
  validates :description, :completed_at, presence: true
  belongs_to :list

  scope :completed, -> { where(completed: true) }

  def completed?
    self.completed
  end
end
