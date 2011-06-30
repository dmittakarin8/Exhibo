class Talent
  include Mongoid::Document
  field :fname 
  field :lname 
  field :email 
  field :summary 
  field :relocate
  field :travel
  field :job_type
  field :zip_code
  field :zip_distance
  field :updated_dt, :type => DateTime, default: -> { DateTime.now }
  embeds_many :activities
  referenced_in :industry
end
