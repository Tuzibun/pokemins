class PokeminsController < ApplicationController

	def index
		@pokemins = Pokemin.all
	end

	def show
		@pokemin = Pokemin.find(params[:id])
	end

	def new
		@pokemin = Pokemin.new
	end

	def create
		@pokemin = Pokemin.new(pokemin_params)
		if @pokemin.save
			redirect_to @pokemin
		else
			render :new
		end
	end

	def edit
		@pokemin = Pokemin.find(params[:id])
	end	

	def update
		@pokemin = Pokemin.find(params[:id])
		if @pokemin.update(pokemin_params)
			redirect_to @pokemin
		else
			render :edit
		end
	end

	def destroy
		@pokemin = Pokemin.find(params[:id])
		@pokemin.destroy
		redirect_to pokemins_path
	end

	private

	def pokemin_params
		params.require(:pokemin).permit(:name, :power)
	end
end