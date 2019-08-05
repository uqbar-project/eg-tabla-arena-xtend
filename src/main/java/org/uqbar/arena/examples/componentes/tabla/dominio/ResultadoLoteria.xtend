package org.uqbar.arena.examples.componentes.tabla.dominio

import org.eclipse.xtend.lib.annotations.Data
import org.uqbar.commons.model.annotations.Observable

// recordemos que con @Data 
// el constructor tiene dos parámetros
// tenemos getters para cada atributo

@Observable
@Data
class ResultadoLoteria {
	Loteria nombreLoteria
	Integer numeroGanador
}