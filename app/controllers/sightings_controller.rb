class SightingsController < ApplicationController

  def index
    @animals = Animal.all
    @regions = Region.all
    if params[:person_name]
      @sightings = Sighting.all.pname(params[:person_name])
    elsif params[:region_name]
      @sightings = Sighting.all.rname(params[:region_name])
    elsif params[:animal_name]
      @sightings = Sighting.all.aname(params[:animal_name])
    render('sightings/index.html.erb')
  end

  def new
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.new(params[:sighting])
    render ('sightings/new.html.erb')
  end

  def create
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      redirect_to ('/sightings')
    else
      render ('sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @animals = Animal.all
    @regions = Region.all
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      render ('sightings/index.html.erb')
    else
      render ('sightings/edit.html.erb')
    end
  end

  def delete
    @sighting = Sighting.find(params[:id])
    if @sighting.destroy(params[:id])
      render ('sightings/delete.html.erb')
    else
      render ('sightings/index.html.erb')
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
  end


end
