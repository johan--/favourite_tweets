class Synchronization < ActiveRecord::Base
  scope :success, -> { where(is_success: true) }

  def self.is_allowed
    !success.where(arel_table[:created_at].gt(1.minute.ago)).any?
  end
end
