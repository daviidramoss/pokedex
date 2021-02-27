package com.freeagent.pokedex.controller;

import com.freeagent.pokedex.dto.response.PokemonDTO;
import com.freeagent.pokedex.model.Modo;
import com.freeagent.pokedex.model.Pokemon;
import com.freeagent.pokedex.model.PokemonTipoModo;
import com.freeagent.pokedex.model.Tipo;
import com.freeagent.pokedex.services.PokemonService;
import com.freeagent.pokedex.services.TipoService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.doReturn;

@RunWith(SpringRunner.class)
public class PokedexControllerText {

    PokedexController pokedexController;
    @Mock
    private PokemonService pokemonService;
    @Mock
    private TipoService tipoService;


    @Before
    public void setUp() {
        try {
            MockitoAnnotations.openMocks(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
        pokedexController = new PokedexController(pokemonService, tipoService);
    }

    @Test
    public void filtrarPokemonPorTexto_ok() {
        //pre
        List<Pokemon> pokemonList = new ArrayList<>();
        Pokemon pokemon = new Pokemon();
        pokemon.setNombre("poke_test");
        Modo modo = new Modo();
        modo.setIdModo(1);
        Tipo tipo = new Tipo();
        tipo.setIdTipo(1);
        tipo.setNombre("Agua");
        PokemonTipoModo tipoModo = new PokemonTipoModo();
        tipoModo.setModo(modo);
        tipoModo.setTipo(tipo);
        List<PokemonTipoModo> tipoModoList = new ArrayList<>();
        tipoModoList.add(tipoModo);
        pokemon.setPokemonTipoModo(tipoModoList);
        pokemonList.add(pokemon);
        doReturn(pokemonList).when(pokemonService).listPokemonByText(Mockito.anyString(), Mockito.anyInt(), Mockito.anyInt());

        //act
        ResponseEntity<List<PokemonDTO>> response = pokedexController.filtrarPokemonPorNombre(0, 10,"pika",5,true);

        //assert
        assertNotNull(response);
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        assertNotNull(response.getBody().get(0));
        assertNotNull(response.getBody().get(0).getNombre());
        assertEquals("poke_test", response.getBody().get(0).getNombre());
    }

    @Test
    public void filtrarPokemonPorTexto_TipoModoPokemonEmpty() {
        //pre
        List<Pokemon> pokemonList = new ArrayList<>();
        Pokemon pokemon = new Pokemon();
        pokemon.setNombre("poke_test");
        List<PokemonTipoModo> tipoModoList = new ArrayList<>();
        pokemon.setPokemonTipoModo(tipoModoList);
        pokemonList.add(pokemon);
        doReturn(pokemonList).when(pokemonService).listPokemonByText(Mockito.anyString(), Mockito.anyInt(), Mockito.anyInt());

        //act
        ResponseEntity<List<PokemonDTO>> response = pokedexController.filtrarPokemonPorNombre(0, 10,"pika",5,true);

        //assert
        assertNotNull(response);
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        assertNotNull(response.getBody().get(0));
        assertNotNull(response.getBody().get(0).getNombre());
        assertEquals("poke_test", response.getBody().get(0).getNombre());
    }

    @Test
    public void getPokemon_ok() {
//pre

        Pokemon pokemon = new Pokemon();
        pokemon.setNombre("poke_test");
        List<PokemonTipoModo> tipoModoList = new ArrayList<>();
        pokemon.setPokemonTipoModo(tipoModoList);
        doReturn(pokemon).when(pokemonService).buscarPokemonPorId(Mockito.anyInt());

        //act
        ResponseEntity<PokemonDTO> response = pokedexController.getPokemon(1);

        //assert
        assertNotNull(response);
        assertNotNull(response.getBody());
        assertNotNull(response.getBody().getNombre());
        assertEquals("poke_test", response.getBody().getNombre());
    }


}
