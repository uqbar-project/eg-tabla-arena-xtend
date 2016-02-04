package org.uqbar.arena.examples.componentes.tabla.vista

import org.uqbar.arena.Application
import org.uqbar.arena.examples.componentes.tabla.dominio.AgenciaDeLoteria
import org.uqbar.arena.examples.componentes.tabla.dominio.ResultadoLoteria
import org.uqbar.arena.examples.componentes.tabla.dominio.Loteria

class AgenciaDeLoteriaApplication extends Application{
	
	override protected createMainWindow() {
		val agencia = new AgenciaDeLoteria => [
			agregarResultado(new ResultadoLoteria(Loteria.NACIONAL, 6404))
			agregarResultado(new ResultadoLoteria(Loteria.BUENOS_AIRES, 9895))
		]
		new VerResultados(this, agencia)
	}
	
	static def main(String[] args) {
		new AgenciaDeLoteriaApplication().start
	}
}