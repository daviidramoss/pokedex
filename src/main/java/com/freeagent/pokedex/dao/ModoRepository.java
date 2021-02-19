package com.freeagent.pokedex.dao;

import com.freeagent.pokedex.model.Modo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ModoRepository extends JpaRepository<Modo, Integer> {

    public Modo findByNombre(String var);
    @Query("select m from Modo m where m.nombre like %:var% ")
    public List<Modo> findByLikeNombre(@Param("var") String  var);
}
