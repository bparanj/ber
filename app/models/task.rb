class Task < ApplicationRecord
  belongs_to :project

  def complete
    !completed_at.empty?
  end

  def complete=(value)
    if value.zero?
      self.completed_at = nil
    else
      self.completed_at = Time.zone.now
    end
  end
end
