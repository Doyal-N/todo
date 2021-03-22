class ItemDecorator < Draper::Decorator
  delegate_all

  def formatted_date
    object.completed_at.strftime('%d.%m.%y')
  end
end
