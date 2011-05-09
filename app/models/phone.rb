class Phone < ActiveRecord::Base
  acts_as_audited :associated_with => :phonable
  belongs_to :phonable, :polymorphic => true
end
