class Publisher < ActiveRecord::Base

  # Establish many:1 relationship.  A publisher has many books.
  has_many :books

  # Add validation
  validates :name, presence: true

end
