class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new({
       name: params[:book][:name],
       author: params[:book][:author]
       })
     @book.save

     redirect_to '/books'
   end

   def edit
     @book = Book.find(params[:id])
   end

   def update
     book = Book.find(params[:id])
     book.update({
       name: params[:book][:name],
       author: params[:book][:author]
       })
       book.save

       redirect_to "/books/#{book.id}"
     end
end
