class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
    # Do SOME STUFF
    # Maybe you should initialize a new film
    # instance...
  end

  def edit
    # DO MORE STUFF
    # FIND THE SPECIFIC FILM FIRST
  end

  def create
    #Take info from the form action and make
    #a NEW instance of the film model
  end

  def update
    #Take info from the form action in the
    #edit view, and then UPDATE the 
    # specific instance of the film model
  end
  
  def delete
    #FIND which particular film you're deleting
    # (from the params)
    # and then take that instance, and DESTROY it
  end

  private
  def film_params
    params.require(:film)
          .permit(:title, :genre, :year, :synopsis, :picture)
  end
end
