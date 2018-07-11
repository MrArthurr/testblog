class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id]) #shows author of your choice
  end

  def new
    @author = Author.new #add new author
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path, success: 'Author was created.' #if save=true redirecting to List of all authors
    else
      render :new #if save=false render new view of adding new author
    end
  end
# edit & update same as new & create
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
      redirect_to authors_path, notice: 'Author was updated.'
    else
      render :edit
    end
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy
    if redirect_to authors_path, notice: 'Author was deleted.'
    else
      redirect_to authors_path, alert: 'There was an error.'
    end
  end
  private

  def author_params
    params.require(:author).permit(:name, :surname, :age)
  end
end
