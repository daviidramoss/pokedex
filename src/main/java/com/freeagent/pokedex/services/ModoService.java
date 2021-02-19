package com.freeagent.pokedex.services;

import com.freeagent.pokedex.model.Modo;

import java.util.List;
import java.util.Optional;

public interface ModoService  {
    List<Modo> listarModos();
    Optional<Modo> modosPorId();
    Modo modoPorNombre();
    List<Modo> findByLikeNombre(String var);
}
