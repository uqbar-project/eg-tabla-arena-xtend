package org.uqbar.arena.examples.componentes.tabla.dominio

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class AgenciaDeLoteria {
	List<ResultadoLoteria> resultados

	new() {
		resultados = new ArrayList
	}

	def agregarResultado(ResultadoLoteria resultado) {
		resultados.add(resultado)
	}

}
