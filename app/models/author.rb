class Author < ActiveRecord::Base

  # Establish many:1 relationship.  An author has many books.
  has_many :books

  # Add validation
  validates :first_name, presence: true
  validates :last_name, presence: true

end
