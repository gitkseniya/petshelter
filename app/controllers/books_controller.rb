class BooksController < ApplicationController
  def index
    # abstract onto model
    @books = Book.where(available: :true)
  end

  def new
    @library = Library.find(params[:id])
  end

  def create
    @library = Library.find(params[:id])
    book = @library.books.create(books_params)

    book.save

    redirect_to "/libraries/#{@library.id}/books"

  end

  def show
    @book = specific_book
  end

  def edit
    @book = specific_book
  end

  def update
    book = specific_book
    book.update(books_params)
    book.save

    redirect_to "/books/#{book.id}"
  end

  private

  def specific_book
    Book.find(params[:id])
  end

  def books_params
    params.permit(:name, :author, :rating, :available, :library_id)
  end
end
