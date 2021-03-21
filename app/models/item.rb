class Item < ApplicationRecord
  validates :description, presence: true
  belongs_to :list

  scope :completed, -> { where(completed: true) }

  def completed?
    self.completed
  end
end
