class Task < ApplicationRecord
  belongs_to :project

  def complete
    !completed_at.nil?
  end

  def complete=(value)
    if value.to_i.zero?
      self.completed_at = nil
    else
      self.completed_at = Time.zone.now
    end
  end
end
