package com.freeagent.pokedex.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "tb_pokemon")
public class Pokemon implements Serializable {
    private @Id
    @GeneratedValue
    Integer idPokemon;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_clasificacion")
    private Clasificacion clasificacion;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_requerimiento")
    private Requerimiento requerimiento;

    private String nombre;
    private BigDecimal tasaHuida;
    private Integer maximoCp;
    private Integer maximoHp;
    private String imagen;
    private String sonido;
    private Boolean favorito;
    private Integer estado;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_evolucion")
    private Pokemon evolucionPokemon;


    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pokemon")
    private List<PokemonTipoModo> pokemonTipoModo;



}
