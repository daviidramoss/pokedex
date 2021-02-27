package com.freeagent.pokedex.services.impl;

import com.freeagent.pokedex.dao.PokemonRepository;
import com.freeagent.pokedex.dto.request.PatchBodyFavoriteDto;
import com.freeagent.pokedex.exception.NotFoundException;
import com.freeagent.pokedex.model.Pokemon;
import com.freeagent.pokedex.services.PokemonService;
import com.freeagent.pokedex.util.paginate.UtilEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PokemonServiceImpl implements PokemonService {
    private final PokemonRepository pokemonRepository;

    @Autowired
    private PokemonServiceImpl(PokemonRepository pokemonRepository) {
        this.pokemonRepository = pokemonRepository;
    }

    @Override
    public List<Pokemon> listPokemonByText(String text, Integer page, Integer size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("nombre"));
        List<Pokemon> listaPokemon = pokemonRepository.findByText(text, pageable);
        if (listaPokemon.isEmpty()) {
            throw new NotFoundException();
        }
        return listaPokemon;
    }

    @Override
    public Pokemon buscarPokemonPorId(Integer idPokemon) {
        Optional<Pokemon> pokemonOptional = pokemonRepository.findById(idPokemon);
        return pokemonOptional.orElseThrow(NotFoundException::new);
    }

    @Override
    public List<Pokemon> getAllPokemos(Integer page, Integer size) {
        Pageable sortedById = PageRequest.of(page, size, Sort.by("idPokemon"));
        return pokemonRepository.findAll(sortedById).getContent();
    }

    @Override
    public List<Pokemon> getAllFavoritesPokemons(Integer page, Integer size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("idPokemon"));
        List<Pokemon> listaPokemon = pokemonRepository.findByFavorito(UtilEnum.FAVORITO.FAVORITO.getCodigo(), pageable);
        if (listaPokemon.isEmpty()) {
            throw new NotFoundException();
        }
        return listaPokemon;
    }

    @Override
    public Pokemon updateFavorites(Integer idPokemon, PatchBodyFavoriteDto requestBody) {
        Pokemon pokemon = pokemonRepository.findById(idPokemon).orElseThrow(NotFoundException::new);
        pokemon.setFavorito(requestBody.getFavorito());
        pokemonRepository.save(pokemon);
        return pokemon;
    }

    @Override
    public List<Pokemon> getPokemonsByType(Integer page, Integer size, Integer idTipo) {
        Pageable pageable = PageRequest.of(page, size);
        List<Pokemon> listaPokemon = pokemonRepository.findByType(idTipo,UtilEnum.MODO.TIPO.getCodigo(), pageable);
        if (listaPokemon.isEmpty()) {
            throw new NotFoundException();
        }
        return listaPokemon;
    }

    @Override
    public List<Pokemon> listPokemonByNombreTipo(String nombre, Integer idTipo, Boolean favorito, Integer page, Integer size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("nombre"));
        List<Pokemon> listaPokemon = pokemonRepository.findByNombreTipo(nombre, idTipo,favorito,UtilEnum.MODO.TIPO.getCodigo(), pageable);
        if (listaPokemon.isEmpty()) {
            throw new NotFoundException();
        }
        return listaPokemon;
    }
}
