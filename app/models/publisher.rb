class Publisher < ActiveRecord::Base

  # Establish many:1 relationship.  A publisher has many books.
  has_many :books

end
