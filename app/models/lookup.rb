class Lookup
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :snippet_id
  
  validates :snippet_id, :numericality => true, :presence => true
  
  def initialize(attributes={})
    attributes && attributes.each do |name, value|
      send("#{name}=", value) if respond_to? name.to_sym
    end
  end
  
  def persisted?
    false
  end
end
