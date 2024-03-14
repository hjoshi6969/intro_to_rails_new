class SearchResultController < ApplicationController
  def index
    search_query = params[:query]
    pokemon_type_id = params[:category]

    # Perform a simple search based on the search query
    pokemon_infos = Product.where('name LIKE ?', "%#{search_query}%")

    if pokemon_type_id.present? && pokemon_type_id != "all"
      # Filter the results based on the specified type ID
      # Convert the pokemon_type_id to an integer
      pokemon_type_id = pokemon_type_id.to_i

      # Filter the results based on the specified type ID
      @pokemons = pokemon_infos.select { |pokemon_info| pokemon_info.category_id == pokemon_type_id }

      if @pokemons.any?
        @message = "Search results for '#{search_query}' in #{Category.find(pokemon_type_id).name}"
      else
        @message = "No products found for '#{search_query}' in #{Category.find(pokemon_type_id).name}"
      end
    else
      # If no type ID is specified or it's set to "all", return all search results
      @pokemons = pokemon_infos

      if @pokemons.any?
        @message = "Search results for  '#{search_query}' in'#{search_query}'"
      else
        @message = "No products found for  '#{search_query}' in'#{search_query}'"
      end
    end
  end
end
