class ListDecorator < Draper::Decorator
  delegate_all

  def total_items
    @all_items ||= items.count
  end

  def count_completed_items
    @completed_items ||= items.completed.count
  end

  def percent_done
    return 0 if total_items.zero?
    (count_completed_items.to_f * 100 / total_items).round
  end

end
