class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index' 
  end

  get '/pets/new' do 
    @owners = Owner.all
    erb :'/pets/new'
  end

  post '/pets' do 
    @pet = Pet.create(params[:pet])
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
<<<<<<< HEAD
    redirect to "pets/#{@pet.id}"
=======
    redirect "pets/#{@pet.id}"
>>>>>>> 2dc5010ed581ce2b454fb9eab0955003f1ef6dd9
  end

  get '/pets/:id/edit' do
    @pet = Pet.find(params[:id])
    erb :'/pets/edit'
  end

  get '/pets/:id' do 
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

  post '/pets/:id' do 
    @pet = Pet.find(params[:id])
<<<<<<< HEAD
    @pet.update(params[:pet])
=======
    @pet.update(params["pet"])
>>>>>>> 2dc5010ed581ce2b454fb9eab0955003f1ef6dd9
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
<<<<<<< HEAD
    redirect to "pets/#{@pet.id}"
=======
    redirect "pets/#{@pet.id}"
  end

  get '/pets/:id/edit' do 
    @pet = Pet.find(params[:id])
    erb :'/pets/edit'
>>>>>>> 2dc5010ed581ce2b454fb9eab0955003f1ef6dd9
  end
end