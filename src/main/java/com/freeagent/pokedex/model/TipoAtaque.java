package com.freeagent.pokedex.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class TipoAtaque implements Serializable {
    private @Id
    @GeneratedValue
    Integer idTipoAtaque;
    private String nombre;
    private Integer estado;
}
