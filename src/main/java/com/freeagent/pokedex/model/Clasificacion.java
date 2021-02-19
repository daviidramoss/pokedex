package com.freeagent.pokedex.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "tb_clasificacion")
class Clasificacion implements Serializable {

    private @Id @GeneratedValue Integer idClasificacion;
    private String nombre;
    private Integer estado;

    @OneToMany(mappedBy = "clasificacion")
    private List<Pokemon> pokemons;

}
