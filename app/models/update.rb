class Update
  include Mongoid::Document
  field :phone, type: String
  field :message, type: String
end
