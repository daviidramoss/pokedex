package com.freeagent.pokedex.dao;

import com.freeagent.pokedex.model.Tipo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TipoRepository extends JpaRepository<Tipo, Integer> {
}
