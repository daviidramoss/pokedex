package com.freeagent.pokedex.services;


import com.freeagent.pokedex.dto.request.PatchBodyFavoriteDto;
import com.freeagent.pokedex.model.Pokemon;

import java.util.List;

public interface PokemonService {
    List<Pokemon> listPokemonByText(String text, Integer page, Integer size);

    Pokemon buscarPokemonPorId(Integer idPokemon);

    List<Pokemon> getAllPokemos(Integer page, Integer size);

    List<Pokemon> getAllFavoritesPokemons(Integer page, Integer size);

    Pokemon updateFavorites(Integer idPokemon, PatchBodyFavoriteDto requestBody);

    List<Pokemon> getPokemonsByType(Integer page, Integer size, Integer idTipo);

    List<Pokemon> listPokemonByNombreTipo(String nombre, Integer idTipo, Boolean favorito, Integer page, Integer size);
}
