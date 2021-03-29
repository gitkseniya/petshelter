# README
Iteration 1
CRUD

User Story 1, library Index (x2)

For each library table
As a visitor
When I visit '/libraries'
Then I see the name of each library record in the system
[x] done

User Story 2, library Show (x2)

As a visitor
When I visit '/libraries/:id'
Then I see the library with that id including the library's attributes:
- data from each column that is on the library table
[x] done

User Story 3, book Index (x2)

As a visitor
When I visit '/books'
Then I see each book in the system including the book's attributes:
[x] done

User Story 4, book Show (x2)

As a visitor
When I visit '/books/:id'
Then I see the book with that id including the book's attributes:
[x] done

User Story 5, library books Index (x2)

As a visitor
When I visit '/libraries/:id/books'
Then I see each book that is associated with that library with each book's attributes:
ActiveRecord
[x] done

User Story 6, library Index sorted by Most Recently Created (x2)

As a visitor
When I visit the library index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created
[x] done

User Story 7, library book Count (x2)

As a visitor
When I visit a library's show page
I see a count of the number of books associated with this library
Usability
[x] done

User Story 8, book Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the book Index
[x] done

User Story 9, library Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the library Index
[x] done

User Story 10, library book Index Link

As a visitor

When I visit a library show page ('/libraries/:id')
Then I see a link to take me to that library's `books` page ('/libraries/:id/books')
[x] done




***********************************************************************



Iteration 2
CRUD

[x] done
User Story 11, Library Creation (x2)

As a visitor
When I visit the Library Index page
Then I see a link to create a new Library record, "New Library"
When I click this link
Then I am taken to '/libraries/new' where I  see a form for a new library record
When I fill out the form with a new library's attributes:
And I click the button "Create Library" to submit the form
Then a `POST` request is sent to the '/libraries' route,
a new library record is created,
and I am redirected to the Library Index page where I see the new Library displayed.


[ ] done
User Story 12, Library Update (x2)

As a visitor
When I visit a library show page
Then I see a link to update the library "Update Library"
When I click the link "Update Library"
Then I am taken to '/libraries/:id/edit' where I  see a form to edit the library's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/libraries/:id',
the library's info is updated,
and I am redirected to the Library's Show page where I see the library's updated info
[ ] done

User Story 13, Library Book Creation (x2)

As a visitor
When I visit a Library Books Index page
Then I see a link to add a new adoptable book for that library "Create Book"
When I click the link
I am taken to '/libraries/:library_id/book_table_name/new' where I see a form to add a new adoptable book
When I fill in the form with the book's attributes:
And I click the button "Create Book"
Then a `POST` request is sent to '/libraries/:library_id/book_table_name',
a new book object/row is created for that library,
and I am redirected to the Library Books Index page where I can see the new book listed
[ ] done

User Story 14, Book Update (x2)

As a visitor
When I visit a Book Show page
Then I see a link to update that Book "Update Book"
When I click the link
I am taken to '/book_table_name/:id/edit' where I see a form to edit the book's attributes:
When I click the button to submit the form "Update Book"
Then a `PATCH` request is sent to '/book_table_name/:id',
the book's data is updated,
and I am redirected to the Book Show page where I see the Book's updated information
ActiveRecord
[ ] done

User Story 15, Book Index only shows `true` Records (x2)

As a visitor
When I visit the book index
Then I only see records where the boolean column is `true`
[ ] done

User Story 16, Sort Library's Books in Alphabetical Order by name (x2)

As a visitor
When I visit the Library's books Index Page
Then I see a link to sort books in alphabetical order
When I click on the link
I'm taken back to the Library's books Index Page where I see all of the library's books in alphabetical order
Usability
[ ] done

User Story 17, Library Update From Library Index Page (x2)

As a visitor
When I visit the library index page
Next to every library, I see a link to edit that library's info
When I click the link
I should be taken to that libraries edit page where I can update its information just like in User Story 4
[ ] done

User Story 18, Book Update From Books Index Page (x1)

As a visitor
When I visit the `book_table_name` index page or a library `book_table_name` index page
Next to every book, I see a link to edit that book's info
When I click the link
I should be taken to that `book_table_name` edit page where I can update its information just like in User Story 11

************************************************************

Iteration 3
CRUD
[ ] done

User Story 19, Library Delete (x2)

As a visitor
When I visit a library show page
Then I see a link to delete the library
When I click the link "Delete Library"
Then a 'DELETE' request is sent to '/libraries/:id',
the library is deleted, and all book records are deleted
and I am redirected to the library index page where I no longer see this library
[ ] done

User Story 20, Book Delete (x2)

As a visitor
When I visit a book show page
Then I see a link to delete the book "Delete Book"
When I click the link
Then a 'DELETE' request is sent to '/book_table_name/:id',
the book is deleted,
and I am redirected to the book index page where I no longer see this book
ActiveRecord
[ ] done

User Story 21, Display Records Over a Given Threshold (x2)

As a visitor
When I visit the Library's books Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
Then I am brought back to the current index page with only the records that meet that threshold shown.
Usability
[ ] done

User Story 22, Library Delete From Library Index Page (x1)

As a visitor
When I visit the library index page
Next to every library, I see a link to delete that library
When I click the link
I am returned to the Library Index Page where I no longer see that library
[ ] done

User Story 23, Book Delete From Books Index Page (x1)

As a visitor
When I visit the `book_table_name` index page or a library `book_table_name` index page
Next to every book, I see a link to delete that book
When I click the link
I should be taken to the `book_table_name` index page where I no longer see that book


***************************************************************

Extensions
[ ] done

Sort Libraries by Number of Books (x2)

As a visitor
When I visit the Libraries Index Page
Then I see a link to sort libraries by the number of `book_table_name` they have
When I click on the link
I'm taken back to the Library Index Page where I see all of the libraries in order of their count of `book_table_name` (highest to lowest) And, I see the number of books next to each library name
[ ] done

Search by name (exact match)

As a visitor
When I visit an index page ('/libraries') or ('/book_table_name')
Then I see a text box to filter results by keyword
When I type in a keyword that is an exact match of one or more of my records and press the Search button
Then I only see records that are an exact match returned on the page
[ ] done

Search by name (partial match)

As a visitor
When I visit an index page ('/libraries') or ('/book_table_name')
Then I see a text box to filter results by keyword
When I type in a keyword that is an partial match of one or more of my records and press the Search button
Then I only see records that are an partial match returned on the page

This functionality should be separate from your exact match functionality.
