module Card::Multistep
  extend ActiveSupport::Concern

  included do
    has_many :steps, -> { order(completed: :asc, created_at: :asc) }, dependent: :destroy
  end
end
