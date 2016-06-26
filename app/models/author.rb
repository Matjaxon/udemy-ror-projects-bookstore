class Author < ActiveRecord::Base

  # Establish many:1 relationship.  An author has many books.
  has_many :books

end
