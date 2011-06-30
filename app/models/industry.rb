class Industry
  include Mongoid::Document
  field :name
  key :name
  references_many :talents
end
