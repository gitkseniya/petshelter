class LibrariesController < ApplicationController
  def index
    @libraries = Library.order(id: :desc)
  end

  def show
    @library = specific_library
  end

  def books
    @library = specific_library
    @books = @library.books.all
  end

  def new; end

  def create
    library = Library.new(library_params)
    library.save

    redirect_to '/libraries'
  end

  def edit
    @library = specific_library
  end

  def update
    library = specific_library
    library.update(library_params)
    library.save

    redirect_to "/libraries/#{library.id}"
  end

  private

  def specific_library
    Library.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:name, :district_num, :public)
  end
end
