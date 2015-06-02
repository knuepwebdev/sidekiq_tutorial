class Borrower
  include Mongoid::Document

  field :email, type: String
end
