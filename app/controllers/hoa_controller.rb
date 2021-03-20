# frozen_string_literal: true

# Roles
class HoaController < ApplicationController

  get "/hoa" do
    @hoa = Hoa.all
    erb :"/hoa/index.html"
  end

  # new
  get '/hoa/new' do
    @hoa = Hoa.new
    erb :"/hoa/new.html"
  end

  # create
  post '/hoa' do
    @hoa = Hoa.create(params)
    redirect to "/hoa/#{@hoa.id}"
  end

  # show
  get '/hoa/:id' do
    @hoa = Hoa.find(params[:id])
    erb :"/hoa/show.html"
  end

  # edit
  get '/hoa/:id/edit' do
    @hoa = Hoa.find(params[:id])
    erb :"/hoa/edit.html"
  end

  # update
  patch '/hoa/:id' do
    @hoa = Hoa.find(params[:id])
    @hoa.update(params[:hoa])
    redirect to "/hoa/#{@hoa.id}"
  end

  # destroy
  delete '/hoa/:id' do
    Hoa.destroy(params[:id])
    redirect to '/hoa'
  end

  def destroy
    Hoa.destroy(params[:id])
    redirect to '/hoa'
  end
end
