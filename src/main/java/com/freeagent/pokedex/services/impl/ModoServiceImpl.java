package com.freeagent.pokedex.services.impl;

import com.freeagent.pokedex.dao.ModoRepository;
import com.freeagent.pokedex.model.Modo;
import com.freeagent.pokedex.services.ModoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ModoServiceImpl  implements ModoService {

    private ModoRepository modoRepository;

    @Autowired
    public ModoServiceImpl( ModoRepository modoRepository) {
        this.modoRepository = modoRepository;
    }

    @Override
    public List<Modo> listarModos() {
        return modoRepository.findAll();
    }

    @Override
    public Optional<Modo> modosPorId() {
        return modoRepository.findById(1);
    }

    @Override
    public Modo modoPorNombre() {
        return modoRepository.findByNombre("Naturaleza");
    }

    @Override
    public List<Modo> findByLikeNombre(String var) {
        return modoRepository.findByLikeNombre(var);
    }


}
