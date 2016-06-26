class Book < ActiveRecord::Base

  # Establish 1:many relationships.  Each of these can have many books.
  belongs_to :category
  belongs_to :author
  belongs_to :publisher

end
