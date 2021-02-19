package com.freeagent.pokedex.util.paginate;

import lombok.AllArgsConstructor;
import lombok.Getter;

public class UtilEnum {

    @AllArgsConstructor
    public enum FAVORITO {
        FAVORITO(true, "Favorito"),
        NO_FAVORITO(false,"No Favorito");

        @Getter
        private Boolean codigo;
        @Getter
        private String value;
    }

    @AllArgsConstructor
    public enum MODO {
        TIPO(1, "Type"),
        RESISTENTE(2,"Resistant"),
        DEBIL(3,"Weakness"),
        FUERTE(4,"fuerte");

        @Getter
        private Integer codigo;
        @Getter
        private String value;
    }

    @AllArgsConstructor
    public enum FAVORITOS {
        TODOS(null, "TODOS"),
        FAVORITOS(true,"FAVORITOS"),
        NO_FAVORITOS(false,"NO_FAVORITOS");

        @Getter
        private Boolean codigo;
        @Getter
        private String value;


    }
}
