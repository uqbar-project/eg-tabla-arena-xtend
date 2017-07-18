package org.uqbar.arena.examples.componentes.tabla.dominio

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class ResultadoLoteria {
	Loteria nombreLoteria
	Integer numeroGanador
	
	new(Loteria nombreLoteria, Integer numeroAfortunado){
		this.nombreLoteria = nombreLoteria
		this.numeroGanador = numeroAfortunado
	}
	
}