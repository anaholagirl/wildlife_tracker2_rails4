class RegionsController < ApplicationController

  def index
    @region = Region.between(params[:regions])
    render('regions/index.html.erb')
  end

  def new
    @region = Region.new
    render ('regions/index.html.erb')
  end

  def create

    @region = Region.new
    if region.save
      render ('regions/index.html.erb')
    else
      render ('regions/new.html.erb')
    end
  end

  def show

  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(params[:region])
      render ('regions/index.html.erb')
    else
      render ('regions/edit.html.erb')
    end
  end

  def delete
    @region = Region.find(params[:id])
    if @region.destroy(params[:id])
      render ('regions/delete.html.erb')
    else
      render ('regions/index.html.erb')
  end


end
