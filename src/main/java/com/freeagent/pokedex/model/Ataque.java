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
public class Ataque implements Serializable {

    private @Id
    @GeneratedValue
    Integer idAtaque;
    private String nombre;
    private Integer damage;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_tipo")
    private Tipo tipo;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_tipo_ataque")
    private TipoAtaque tipoAtaque;
    private Integer estado;

}
