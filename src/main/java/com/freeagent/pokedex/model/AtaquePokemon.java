package com.freeagent.pokedex.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class AtaquePokemon implements Serializable {

    private @Id
    @GeneratedValue
    Integer idAtaquePokemon;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_ataque")
    private Ataque ataque;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_pokemon")
    private Pokemon pokemon;

    private Integer estado;

}
