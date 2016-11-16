class User
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :name, :age, :address

  def initialize
  end

  def persisted?
    false
  end
end
