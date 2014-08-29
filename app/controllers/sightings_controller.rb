class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def new
    @sighting = Sighting.new
    render ('sightings/new.html.erb')
  end

  def create

    @sighting = Sighting.new
    if sighting.save
      render ('sightings/index.html.erb')
    else
      render ('sightings/new.html.erb')
    end
  end

  def between
    @sighting = Sighting.where(sighting_start_date < @sighting.date && @sighting.date < sighting_end_date)
    render ('sightings/index.html.erb')
  end

  def animal_sighting(animal)
    @sighting = Sighting.where(sightings.animal.name = animal)
    render ('sightings/animal_sighting.html.erb')
  end

  def region_sighting(region)
    @sighting = Sighting.where(sightings.region.name = region)
    render ('sightings/region_sighting.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
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


end
