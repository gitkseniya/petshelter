class LibrariesController < ApplicationController
  def index
    @libraries = Library.order(id: :desc)
  end

  def show
    @library = Library.find(params[:id])
  end

  def books
    @library = Library.find(params[:id])
    @books = @library.books.all
  end

  def new
  end

  def create
    library = Library.new({
      name: params[:library][:name],
      district_num: params[:library][:district_num],
      public: params[:library][:public]
      })
      library.save

      redirect_to '/libraries'
    end

  def edit
    @library = Library.find(params[:id])
  end

  def update
    library = Library.find(params[:id])
    library.update({
      name: params[:library][:name],
      district_num: params[:library][:district_num],
      public: params[:library][:public]
      })
      library.save

      redirect_to "/libraries/#{library.id}"
    end


    end
