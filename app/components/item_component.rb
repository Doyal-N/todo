# frozen_string_literal: true

class ItemComponent < ViewComponent::Base
  def initialize(description:, completed_at:, notice:)
    @description = description
    @completed_at = completed_at
    @notice = notice
  end

end
