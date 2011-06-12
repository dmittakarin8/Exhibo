class Activity
  include Mongoid::Document
  field :name
  field :created_dt, :type => DateTime, default: -> { DateTime.now }
  embedded_in :talent, :inverse_of => :activities
end
