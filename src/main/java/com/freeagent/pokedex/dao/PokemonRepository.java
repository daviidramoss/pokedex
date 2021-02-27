package com.freeagent.pokedex.dao;

import com.freeagent.pokedex.model.Pokemon;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PokemonRepository extends JpaRepository<Pokemon, Integer> {
    @Query("select p from Pokemon p where lower(p.nombre) like lower(concat('%', :var,'%')) ")
    List<Pokemon> findByText(String var, Pageable pageable);
    List<Pokemon> findByFavorito(Boolean var, Pageable pageable);

    @Query("select ptm.pokemon from PokemonTipoModo ptm where ptm.modo.idModo = :modoTipo and ptm.tipo.idTipo = :idTipo")
    List<Pokemon> findByType(Integer idTipo, Integer modoTipo, Pageable pageable);



    @Query("SELECT  distinct(p) FROM Pokemon p "
            + "INNER JOIN PokemonTipoModo ptm ON ptm.pokemon.idPokemon = p.idPokemon "
            + "INNER JOIN Tipo t ON t.idTipo = ptm.tipo.idTipo "
            + "WHERE (:nombre is null OR lower(p.nombre) LIKE lower(concat('%', :nombre,'%')) )"
            + "AND (:idTipo is null OR t.idTipo = :idTipo) AND ptm.modo.idModo = :tipo AND (:favorito is null OR :favorito = p.favorito)")
    List<Pokemon> findByNombreTipo(String nombre, Integer idTipo, Boolean favorito, Integer tipo, Pageable pageable);


}
