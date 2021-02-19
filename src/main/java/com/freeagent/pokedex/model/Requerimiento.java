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
@Table(name = "tb_requerimiento")
public class Requerimiento implements Serializable {
    private @Id
    @GeneratedValue
    Integer idRequerimiento;
    private Integer cantidad;
    private String descripcion;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "id_objeto")
    private Objeto objeto;
    private Integer estado;
}
