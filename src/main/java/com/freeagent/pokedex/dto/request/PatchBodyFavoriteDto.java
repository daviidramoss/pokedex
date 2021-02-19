package com.freeagent.pokedex.dto.request;

import lombok.*;

import javax.validation.constraints.NotNull;


@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PatchBodyFavoriteDto {

    @NotNull
    private Boolean valor;
}
