package com.freeagent.pokedex.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class DimensionPokemon implements Serializable {

    private @Id
    @GeneratedValue
    Integer idDimensionPokemon;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_pokemon")
    private Pokemon pokemon;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_dimension")
    private Dimension dimension;
    private BigDecimal minimo;
    private BigDecimal maximo;
    private Integer estado;
}
