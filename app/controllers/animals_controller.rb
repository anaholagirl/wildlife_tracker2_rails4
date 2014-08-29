class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render('animals/index.html.erb')
  end

  def new
    @animal = Animal.new
    render ('animals/new.html.erb')
  end

  def create

    @animal = Animal.new
    if animal.save
      render ('animals/index.html.erb')
    else
      render ('animals/new.html.erb')
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
    render('animals/edit.html.erb')
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(params[:animal])
      render ('animals/index.html.erb')
    else
      render ('animals/edit.html.erb')
    end
  end

  def delete
    @animal = Animal.find(params[:id])
    if @animal.destroy(params[:id])
      render ('animals/delete.html.erb')
    else
      render ('animals/index.html.erb')
    end
  end


end
