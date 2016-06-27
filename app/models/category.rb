class Category < ActiveRecord::Base

  # Establish many:1 relationship.  A category has many books.
  has_many :books

  # Add validation
  validates :name, presence: true, length: {minimum: 3}

end
