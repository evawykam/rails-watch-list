class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'list/show'
    end
  end

  def destroy
    # @book = Movi.find(params[:id])
    # @movie.destroy

    # redirect_to lists_path
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
