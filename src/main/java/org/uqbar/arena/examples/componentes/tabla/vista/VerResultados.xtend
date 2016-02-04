package org.uqbar.arena.examples.componentes.tabla.vista

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.examples.componentes.tabla.dominio.AgenciaDeLoteria
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.examples.componentes.tabla.dominio.ResultadoLoteria
import org.uqbar.arena.widgets.tables.Column
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class VerResultados extends SimpleWindow<AgenciaDeLoteria>{
	
	new(WindowOwner parent, AgenciaDeLoteria model) {
		super(parent, model)
	}
	
	override protected addActions(Panel actionsPanel) {
		//solo vemos la lista no le agregamos ninguna accion
	}
	
	override protected createFormPanel(Panel mainPanel) {
		//creamos el componente tabla para mostrar los números ganadores de la lotería!
		new Table<ResultadoLoteria>(mainPanel, typeof(ResultadoLoteria)) => [
			//bindeamos el contenido de la tabla
			items <=> "resultados"
			//le definimos el alto y ancho, esto es opcional
			height = 200
			
			// describimos cada fila
			// para esto definimos las celdas de cada fila
		
			// la lotería de la que vamos a hablar
			// it es la grilla de resultados 
			new Column<ResultadoLoteria>(it) => [
				title = "Lotería" //el nombre de la columna
				fixedSize = 150   //el tamaño que va a tener
				bindContentsToProperty("nombreLoteria") //la propiedad que mostramos del objeto que está atrás de la fila 
			]   

			//el numero que salió en la loteria 
			new Column<ResultadoLoteria>(it) => [
				title = "Ganador"
				fixedSize = 150
				bindContentsToProperty("numeroGanador")
			] 
		]
	}
	
}