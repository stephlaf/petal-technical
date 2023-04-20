class Api::V1::PokemonsController < Api::V1::BaseController
  before_action :set_pokemon, only: [:show, :update, :destroy ]
  def index
    @pokemons = Pokemon.all
    paginate json: @pokemons
  end

  def show
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @pokemon.update(pokemon_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @pokemon.destroy
    render json: { message: "Pokemon with id #{@pokemon.id} has been deleted" }
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(
      :po_id,
      :name,
      :type_1,
      :type_2,
      :total,
      :hp,
      :attack,
      :defense,
      :sp_atk,
      :sp_def,
      :speed,
      :generation,
      :legendary
    )
  end

  def render_error
    render json: { errors: @pokemon.errors.messages },
    status: :unprocessable_entity
  end
end
