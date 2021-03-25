# README
Iteration 1
CRUD
[ ] done

User Story 1, library Index (x2)

For each library table
As a visitor
When I visit '/libraries'
Then I see the name of each library record in the system
[x] done

User Story 2, library Show (x2)

As a visitor
When I visit '/librarys/:id'
Then I see the library with that id including the library's attributes:
- data from each column that is on the library table
[x] done

User Story 3, book Index (x2)

As a visitor
When I visit '/book_table_name'
Then I see each book in the system including the book's attributes:
[ ] done

User Story 4, book Show (x2)

As a visitor
When I visit '/book_table_name/:id'
Then I see the book with that id including the book's attributes:
[ ] done

User Story 5, library books Index (x2)

As a visitor
When I visit '/librarys/:library_id/book_table_name'
Then I see each book that is associated with that library with each book's attributes:
ActiveRecord
[ ] done

User Story 6, library Index sorted by Most Recently Created (x2)

As a visitor
When I visit the library index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created
[ ] done

User Story 7, library book Count (x2)

As a visitor
When I visit a library's show page
I see a count of the number of books associated with this library
Usability
[ ] done

User Story 8, book Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the book Index
[ ] done

User Story 9, library Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the library Index
[ ] done

User Story 10, library book Index Link

As a visitor
When I visit a library show page ('/librarys/:id')
Then I see a link to take me to that library's `book_table_name` page ('/librarys/:id/book_table_name')
