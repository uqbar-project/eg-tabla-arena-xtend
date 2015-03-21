package org.uqbar.arena.examples.componentes.tabla.vista

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.examples.componentes.tabla.dominio.AgenciaDeLoteria
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.examples.componentes.tabla.dominio.ResultadoLoteria
import org.uqbar.arena.widgets.tables.Column

class VerResultados extends SimpleWindow<AgenciaDeLoteria>{
	
	new(WindowOwner parent, AgenciaDeLoteria model) {
		super(parent, model)
	}
	
	override protected addActions(Panel actionsPanel) {
		//solo vemos la lista no le agregamos ninguna accion
	}
	
	override protected createFormPanel(Panel mainPanel) {
		//creamos el componente tabla para mostrar los numeros ganadores de la loteria!
		var Table<ResultadoLoteria> tablaResultados = new Table<ResultadoLoteria>(mainPanel, typeof(ResultadoLoteria))

		//bindeamos el contenido de la tabla
		tablaResultados.bindItemsToProperty("resultados")
		
		//le definimos el alto y ancho, esto es opcional
		tablaResultados.height = 200

		//describimos cada fila
		//para esto definios las celdas de cada fila
		
		//la loteria de la que vamos a hablar 
		new Column<ResultadoLoteria>(tablaResultados) 
			.setTitle("Loteria") //el nombre de la columna
			.setFixedSize(150) //el tamaño que va a tener
			.bindContentsToProperty("nombreLoteria") //la propiedad que mostramos del objeto que está atrás de la fila

		//el numero que salió en la loteria 
		new Column<ResultadoLoteria>(tablaResultados) //
			.setTitle("Ganador")
			.setFixedSize(150)
			.bindContentsToProperty("numeroGanador")
		
	}
	
}