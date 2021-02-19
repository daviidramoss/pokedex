package com.freeagent.pokedex.dto.response;

import com.freeagent.pokedex.model.Tipo;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class PokemonDTO {
    private Integer idPokemon;
    private String nombre;
    private BigDecimal tasaHuida;
    private Integer maximoCp;
    private Integer maximoHp;
    private String imagen;
    private String sonido;
    private Boolean favorito;
    private Integer estado;

    List<TipoDTO> tipos;
}
