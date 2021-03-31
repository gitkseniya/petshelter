class BooksController < ApplicationController
  def index
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
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(books_params)

    book.save

    redirect_to "/books/#{book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to '/books'
  end

  private

  def books_params
    params.permit(:name, :author, :rating, :available)
  end
end
