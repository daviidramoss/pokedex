package com.freeagent.pokedex.services.impl;

import com.freeagent.pokedex.dao.TipoRepository;
import com.freeagent.pokedex.model.Tipo;
import com.freeagent.pokedex.services.TipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipoServiceImpl implements TipoService {

    TipoRepository tipoRepository;

    @Autowired
    public TipoServiceImpl(TipoRepository tipoRepository) {
        this.tipoRepository = tipoRepository;
    }

    @Override
    public List<Tipo> listarTipos() {
        return tipoRepository.findAll();
    }
}
