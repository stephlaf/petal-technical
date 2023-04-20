class Api::V1::PokemonsController < Api::V1::BaseController
  before_action :set_pokemon, only: [:show, :update, :destroy ]

  # All:
  # GET http://localhost:3000/api/v1/pokemons

  # Paginated:
  # GET http://localhost:3000/api/v1/pokemons?per_page=50&page=2
  def index
    @pokemons = Pokemon.all
    paginate json: @pokemons
  end


  # GET http://localhost:3000/api/v1/pokemons/:id
  def show
  end

  # POST http://localhost:3000/api/v1/pokemons
  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render :show, status: :created
    else
      render_error
    end
  end

  # PATCH http://localhost:3000/api/v1/pokemons/:id
  def update
    if @pokemon.update(pokemon_params)
      render :show
    else
      render_error
    end
  end

  # DELETE http://localhost:3000/api/v1/pokemons/:id
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
