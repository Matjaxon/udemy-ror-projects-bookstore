class Category < ActiveRecord::Base

  # Establish many:1 relationship.  A category has many books.
  has_many :books
  
end
