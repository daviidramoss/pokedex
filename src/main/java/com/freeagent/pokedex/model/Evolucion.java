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
public class Evolucion implements Serializable {

    private @Id
    @GeneratedValue
    Integer idEvolucion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_pokemon")
    private Evolucion evolucion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_tipo_evolucion")
    private TipoEvolucion tipoEvolucion;
    private Integer estado;
}
