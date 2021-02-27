package com.freeagent.pokedex.controller;

import com.freeagent.pokedex.dto.request.PatchBodyFavoriteDto;
import com.freeagent.pokedex.dto.response.PokemonDTO;
import com.freeagent.pokedex.dto.response.TipoDTO;
import com.freeagent.pokedex.model.Pokemon;
import com.freeagent.pokedex.model.Tipo;
import com.freeagent.pokedex.services.PokemonService;
import com.freeagent.pokedex.services.TipoService;
import com.freeagent.pokedex.util.paginate.UtilEnum;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api/pokedex")
public class PokedexController {

    private final PokemonService pokemonService;
    private final TipoService tipoService;

    @Autowired
    public PokedexController(PokemonService pokemonService, TipoService tipoService) {
        this.pokemonService = pokemonService;
        this.tipoService = tipoService;
    }


    @GetMapping("/pokemons")
    public ResponseEntity<List<PokemonDTO>> filtrarPokemonPorNombre(@RequestParam(value = "page") Integer page,
                                                                    @RequestParam(value = "size") Integer size,
                                                                    @RequestParam(value = "name", required = false) String nombre,
                                                                    @RequestParam(value = "idTipo", required = false) Integer idTipo,
                                                                    @RequestParam(value = "favorito", required = false) Boolean favorito) {
        List<Pokemon> lista = pokemonService.listPokemonByNombreTipo(nombre, idTipo, favorito, page, size);
        List<PokemonDTO> listaDTO = lista.stream().map(entity -> {
            PokemonDTO dto = new PokemonDTO();
            BeanUtils.copyProperties(entity, dto);
            dto.setTipos(tiposPokemon(entity));
            return dto;
        }).collect(Collectors.toList());
        return ResponseEntity.ok(listaDTO);
    }



    @GetMapping("/pokemons/{idPokemon}")
    public ResponseEntity<PokemonDTO> getPokemon(@PathVariable(value = "idPokemon") Integer idPokemon) {
        PokemonDTO pokemonDTO = new PokemonDTO();
        Pokemon pokemon = pokemonService.buscarPokemonPorId(idPokemon);
        BeanUtils.copyProperties(pokemon, pokemonDTO);
        pokemonDTO.setTipos(tiposPokemon(pokemon));
        return ResponseEntity.ok(pokemonDTO);
    }

    @PatchMapping("/pokemons/{idPokemon}")
    public ResponseEntity<PokemonDTO> addAndRemoveFavoritePokemon(@PathVariable(name = "idPokemon") Integer idPokemon,
                                                                  @Valid @RequestBody PatchBodyFavoriteDto requestBody) {
        PokemonDTO pokemonDTO = new PokemonDTO();
        BeanUtils.copyProperties(pokemonService.updateFavorites(idPokemon, requestBody), pokemonDTO);
        return ResponseEntity.ok(pokemonDTO);
    }


    @GetMapping("/pokemons/types")
    public ResponseEntity<List<Tipo>> listarTipos() {
        return ResponseEntity.ok(tipoService.listarTipos());
    }


    @GetMapping("/pokemons/favorites")
    public ResponseEntity<List<PokemonDTO>> getAllFavoritesPokemons(@RequestParam("page") Integer page, @RequestParam("size") Integer size) {
        List<Pokemon> lista = pokemonService.getAllFavoritesPokemons(page, size);
        List<PokemonDTO> listaDTO = lista.stream().map(entity -> {
            PokemonDTO dto = new PokemonDTO();
            BeanUtils.copyProperties(entity, dto);
            dto.setTipos(tiposPokemon(entity));
            return dto;
        }).collect(Collectors.toList());
        return ResponseEntity.ok(listaDTO);
    }


    private List<TipoDTO> tiposPokemon(Pokemon pokemon) {
        List<TipoDTO> dtoList = new ArrayList<>();
        if (pokemon.getPokemonTipoModo() != null && !pokemon.getPokemonTipoModo().isEmpty()) {
            dtoList = pokemon.getPokemonTipoModo().stream()
                    .filter(t -> t.getModo().getIdModo().equals(UtilEnum.MODO.TIPO.getCodigo()))
                    .map(objTipo -> {
                        TipoDTO tipoDTO = new TipoDTO();
                        tipoDTO.setNombre(objTipo.getTipo().getNombre());
                        return tipoDTO;
                    }).collect(Collectors.toList());
        }
        return dtoList;
    }

}
