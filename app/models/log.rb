class Log < ActiveRecord::Base
  belongs_to :contact
  validates :responsible, :comment, presence: true
  default_scope -> {order(created_at: :desc)}
end
