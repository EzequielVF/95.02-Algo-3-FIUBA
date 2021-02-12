TestCase subclass: #AlgoPedidosTests	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 15:02'!test18PedidoNoCreadoAlRemoverCuponSaltaExcepcion	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos removerCuponDePedidoDe: 'Ezequiel'.	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:05'!test04AplicarCuponDeDescuentoPorcentualAPedidoConProductos
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Tomás'.
	
	algoPedidos agregarProductoConNombre: 'Ensalada' precio: 200.0 yCantidad: 1 para: 'Tomás'.
	algoPedidos agregarCuponAPedidoDe: 'Tomás' conPorcentaje: 10. 
	
	self assert: (algoPedidos precioPedidoDe: 'Tomás') closeTo: (200*0.9) precision: 0.01. "-10%"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test06AplicarCuponDeDescuentoFijoAPedidoConProductos
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Diego'.

	algoPedidos agregarCuponAPedidoDe: 'Diego' conValor: 15. 	
	algoPedidos agregarProductoConNombre: 'Milanesa' precio: 350.0 yCantidad: 1 para: 'Diego'.
	
	self assert: (algoPedidos precioPedidoDe: 'Diego') closeTo: 335.0 precision: 0.01. "-15"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test07AgregarCuponAPedidoConMenuNoRealizaDescuento
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Julian'.

	algoPedidos agregarMenuConNombre: 'Menu jueves' precio: 200.0 yCantidad: 1 para: 'Julian'.
	algoPedidos agregarProductoConNombre: 'Ensalada' precio: 200.0 yCantidad: 2 para: 'Julian'.

	algoPedidos agregarCuponAPedidoDe: 'Julian' conValor: 15.
	
	self assert: (algoPedidos precioPedidoDe: 'Julian') equals: 600.0.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:10'!test05SeCambiaCantidadDeProductosEnPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Carlos'.
	
	algoPedidos agregarMenuConNombre: 'Menú viernes' precio: 200.0 yCantidad: 1 para: 'Carlos'.
	algoPedidos agregarProductoConNombre: 'Gaseosa' precio: 250.0 yCantidad: 1 para: 'Carlos'.
	
	self assert: (algoPedidos cantidadProductosEnPedidoDe: 'Carlos') equals: 2.
	
	algoPedidos actualizarProductoConNombre: 'Gaseosa' conCantidad: 3 para: 'Carlos'.
	
	self assert: (algoPedidos cantidadProductosEnPedidoDe: 'Carlos') equals: 4.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 14:52'!test15PedidoNoCreadoDevuelveErrorAlPreguntarleLaCantidaddeProductos	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos cantidadProductosEnPedidoDe: 'Ezequiel'	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 14:57'!test17PedidoNoCreadoAlPreguntarleElPrecioTiraExcepcion	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos precioPedidoDe: 'Ezequiel'.	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 13:54'!test12PedidoNoCreadoTiraExcepcionAlQuererAgregarCuponPorValorAPedidoNoCreado	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos agregarCuponAPedidoDe: 'Ezequiel' conValor: 100	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 13:57'!test13PedidoNoCreadoTiraExcepcionAlIntentarMeterUnMenu	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos agregarMenuConNombre: 'Menu Lunes' precio: 500 yCantidad: 1 para: 'Ezequiel'	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 13:56'!test11PedidoNoCreadoTiraExcepcionAlQuererAgregarCuponAlPedidoNoCreado	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos agregarCuponAPedidoDe: 'Ezequiel' conPorcentaje: 10.	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 15:04'!test19PedidoNoCreadoAlRemoverUnMenuSaltaExcepcion	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos removerMenuConNombre: 'Milanga' para: 'Ezequiel'.	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test08RemoverCuponDeDescuentoAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Martin'.

	algoPedidos agregarCuponAPedidoDe: 'Martin' conValor: 15. 	
	algoPedidos agregarProductoConNombre: 'Pizza' precio: 350.0 yCantidad: 1 para: 'Martin'.
	
	self assert: (algoPedidos precioPedidoDe: 'Martin') closeTo: 335.0 precision: 0.01.  "-15"
	
	algoPedidos removerCuponDePedidoDe: 'Martin'.

	self assert: (algoPedidos precioPedidoDe: 'Martin') closeTo: 350.0 precision: 0.01.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/3/2020 00:02'!test03SeAgregaMenuAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Pablo'.
	
	algoPedidos agregarMenuConNombre: 'Menú viernes' precio: 200.0 yCantidad: 1 para: 'Pablo'.
	algoPedidos agregarProductoConNombre: 'Gaseosa' precio: 250.0 yCantidad: 1 para: 'Pablo'.
	
	self assert: (algoPedidos precioPedidoDe: 'Pablo') closeTo: 450.0 precision: 0.1.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test09RemoverProductosAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.
	
	algoPedidos agregarProductoConNombre: 'Asado' precio: 500.0 yCantidad: 1 para: 'Sebas'.
	algoPedidos agregarMenuConNombre: 'Menú Lunes' precio: 200.0 yCantidad: 1 para: 'Sebas'.
	algoPedidos agregarProductoConNombre: 'vino' precio: 250.0 yCantidad: 1 para: 'Sebas'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Sebas') equals: (950*1.2). "20% extra"
	
	algoPedidos removerProductoConNombre: 'vino' para: 'Sebas'.
	algoPedidos removerMenuConNombre: 'Menú Lunes' para: 'Sebas'.
	
	self assert: (algoPedidos precioPedidoDe: 'Sebas') equals: (500*1.2). "20% extra"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 15:05'!test20PedidoNoCreadoAlRemoverUnProductoSaltaExcepcion	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos removerProductoConNombre: 'Milanga' para: 'Ezequiel'.	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/26/2020 14:00'!test14PedidoNoCreadoTiraExcepcionAlIntentarMeterUnProducto	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos agregarProductoConNombre: 'Milanga' precio: 500 yCantidad: 1 para: 'Ezequiel'	]	raise: PedidoNoCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:17'!test01SeAgreganProductosAPedidoParaRetirar
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Eugenio'.
	
	algoPedidos agregarProductoConNombre: 'Milanesa' precio: 250.0 yCantidad: 2 para: 'Eugenio'.
	algoPedidos agregarProductoConNombre: 'Gelatina' precio: 100.0 yCantidad: 1 para: 'Eugenio'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Eugenio') equals: 600.0.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 11/3/2020 21:55'!test10PedidoNoCreadoTiraExcepcionAlQuererModificarProductoEnEl	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos actualizarProductoConNombre: 'Milanesa' conCantidad: 2 para: 'Ezequiel'.	]	raise: PedidoNoCreadoError.	! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:15'!test16SaltaExcepcionAlIntentarCrearOtroPedidoConElMismoNombre	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.		self should: [ 		algoPedidos crearPedidoConDeliveryPara: 'Sebas'.	]	raise: PedidoYaCreadoError.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:17'!test02SeAgreganProductosAPedidoConDelivery
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Santiago'.
	
	algoPedidos agregarProductoConNombre: 'Asado' precio: 500.0 yCantidad: 1 para: 'Santiago'.
	algoPedidos agregarProductoConNombre: 'vino' precio: 250.0 yCantidad: 1 para: 'Santiago'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Santiago') equals: (750*1.2). "20% extra"! !TestCase subclass: #CuponTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 11/1/2020 14:18'!test7UnSinCuponDevuelveElMontoSinHacerNingunDescuento	| cupon |	cupon := CuponNulo new.	self assert: (cupon aplicarDescuento: 400) equals: 400.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:12'!test2SaltaExcepcionAlQuererAgregarUnCuponConValorNegativo
	self should: [ 		CuponPorValor conValor: -10.	]	raise: CuponQueAumenteElPrecioEsInvalidoError.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 18:12'!test3SaltaExcepcionAlQuererAgregarUnCuponConMasDe100DeDescuento
	self should: [ 		CuponPorDescuento  conDescuento: 101.	]	raise: CuponConDescuentoMayorAl100Error.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 15:49'!test1SaltaExcepcionAlQuererAgregarUnCuponConBeneficioNegativo
	self should: [ 		CuponPorDescuento conDescuento: -10.	]	raise: CuponQueAumenteElPrecioEsInvalidoError.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:47'!test4AplicaCorrectamenteElDescuentoPorcentual	| cupon |	cupon := CuponPorDescuento conDescuento: 10.	self assert: (cupon aplicarDescuento: 100) equals: 90.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:49'!test6Devuelve0AlAplicarseUnCuponPorValorMayorAlMontoADescontarse	| cupon |	cupon := CuponPorValor conValor: 500.	self assert: (cupon aplicarDescuento: 400) equals: 0.! !!CuponTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:48'!test5AplicaCorrectamenteElDescuentoPorValor	| cupon |	cupon := CuponPorValor conValor: 50.	self assert: (cupon aplicarDescuento: 100) equals: 50.! !TestCase subclass: #MenuTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:35'!test4MenuDevuelveTrueAlPreguntarleSiEsUnMenu
	| menu | 
	
	menu := Menu conNombre: 'Milanesa' conPrecio: 200 conCantidad: 3.
	self assert: (menu esUnMenu) equals: true.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:35'!test1ASaltaExcepcionAlQuererCrearUnMenuConCantidadNegativa		self should: [ 		Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: -1.	]	raise: CantidadDeProductoNegativaError.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 11/4/2020 14:34'!test6SeDevuelveCorrectamenteElCostoTotal
	| menu | 
	
	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 3.
	self assert: (menu devolverCostoTotal) equals: 600.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 11/4/2020 14:35'!test7SeModificaLaCantidadCorrectamente
	| menu | 
	
	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 99.	menu nuevaCantidad: 3.
	self assert: (menu devolverCantidad) equals: 3.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 11/4/2020 14:33'!test5SeDevuelveCorrectamenteElPrecio
	| menu | 
	
	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 1.
	self assert: (menu devolverPrecio) equals: 200.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:35'!test3SaltaExcepcionAlQuererModificarConUnaCantidadNegativaEnUnMenu
	| menu | 
	
	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 1.
	self should: [ 		menu nuevaCantidad: -2.	]	raise: CantidadDeProductoNegativaError.! !!MenuTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:35'!test2ASaltaExcepcionAlQuererCrearUnMenuConPrecioNegativo 		self should: [ 		Menu conNombre: 'Menu Lunes' conPrecio: -200 conCantidad: 1.	]	raise: PrecioDeProductoNegativoError.! !TestCase subclass: #PedidoTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:32'!test6PedidoCon5ProductosPasaASerDe1SoloProducto	| pedido producto |		pedido := PedidoParaRetirar new.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Coca Cola' conPrecio: 75 conCantidad: 1.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 2.	pedido agregarProducto: producto.		pedido sacarProducto: 'Milanesa'.	pedido sacarProducto: 'Papas Fritas'.		self assert: (pedido devolverProductosTotales) equals: 1.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:24'!test4PedidoCon5ProductoDevuelveCorrectamentePrecioFinal	| pedido producto |		pedido := PedidoParaRetirar new.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Coca Cola' conPrecio: 75 conCantidad: 1.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 2.	pedido agregarProducto: producto.		self assert: (pedido devolverCostoTotal) equals: 675.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:37'!test7PedidoCon2MenusDevuelveCantidadCorrecta	| pedido menu |		pedido := PedidoParaRetirar new.	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: menu.	menu := Menu conNombre: 'Menu Martes' conPrecio: 200 conCantidad: 1.	pedido agregarProducto: menu.	self assert: (pedido devolverProductosTotales) equals: 3.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:37'!test8PedidoCon2MenusEliminoUno	| pedido menu |		pedido := PedidoParaRetirar new.	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: menu.	menu := Menu conNombre: 'Menu Martes' conPrecio: 200 conCantidad: 1.	pedido agregarProducto: menu.	pedido sacarMenu: 'Menu Lunes'.		self assert: (pedido devolverProductosTotales) equals: 1.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:38'!test9PedidoCon2MenusDevuelvePrecioCorrecto	| pedido menu |		pedido := PedidoParaRetirar new.	menu := Menu conNombre: 'Menu Lunes' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: menu.	menu := Menu conNombre: 'Menu Martes' conPrecio: 200 conCantidad: 1.	pedido agregarProducto: menu.	self assert: (pedido devolverCostoTotal) equals: 600.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:44'!test10PedidoSinMenusSeAplicaCorrectamenteElDescuento	| pedido producto cupon|		pedido := PedidoParaRetirar new.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 1.	pedido agregarProducto: producto.		cupon := CuponPorDescuento conDescuento: 10.	pedido agregarCupon: cupon.		self assert: (pedido devolverCostoTotal) equals: 90.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 18:02'!test0ASaltaExcepcionAlNoEncontrarElMenuBuscadoParaSacar	| pedido |		pedido := PedidoParaRetirar new.		self should: [ 		pedido sacarMenu: 'Menu Lunes'.	]	raise: ProductoNoEncontradoError.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:23'!test3PedidoCon5ProductoDevuelveCorrectamenteCantidadDeEstos	| pedido producto |		pedido := PedidoParaRetirar new.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Coca Cola' conPrecio: 75 conCantidad: 1.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 2.	pedido agregarProducto: producto.		self assert: (pedido devolverProductosTotales) equals: 5.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 18:00'!test13PedidoConDeliveryCon5ProductoDevuelveCorrectamentePrecioFinal	| pedido producto |		pedido := PedidoConDelivery new.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Coca Cola' conPrecio: 75 conCantidad: 1.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 2.	pedido agregarProducto: producto.		self assert: (pedido devolverCostoTotal) closeTo: (675 * 1.20) precision: 0.01.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:11'!test2ASaltaExcepcionAlNoEncontrarElProductoBuscadoParaCambiarCantidad	| pedido |		pedido := PedidoParaRetirar new.		self should: [ 		pedido modificarProducto: 'Milanesa' nuevaCantidad: 2. 	]	raise: ProductoNoEncontradoError.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:49'!test12PedidoAlQueSeLeEliminanLosMenusAplicaDescuento	| pedido menu cupon producto|		pedido := PedidoParaRetirar new.	menu := Menu conNombre: 'Menu Lunes' conPrecio: 100 conCantidad: 1.	pedido agregarMenu: menu.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.		cupon := CuponPorDescuento conDescuento: 10.	pedido agregarCupon: cupon.		pedido sacarMenu: 'Menu Lunes'.			self assert: (pedido devolverCostoTotal) equals: 360.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:27'!test5PedidoCon5ProductosPasaASerDe10Productos	| pedido producto |		pedido := PedidoParaRetirar new.	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 2.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Coca Cola' conPrecio: 75 conCantidad: 1.	pedido agregarProducto: producto.	producto := Producto conNombre: 'Papas Fritas' conPrecio: 100 conCantidad: 2.	pedido agregarProducto: producto.		pedido modificarProducto: 'Milanesa' nuevaCantidad: 4.	pedido modificarProducto: 'Coca Cola' nuevaCantidad: 2.	pedido modificarProducto: 'Papas Fritas' nuevaCantidad: 4.		self assert: (pedido devolverProductosTotales) equals: 10.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:10'!test1ASaltaExcepcionAlNoEncontrarElProductoBuscadoParaSacar	| pedido |		pedido := PedidoParaRetirar new.		self should: [ 		pedido sacarProducto: 'Milanesa'.	]	raise: ProductoNoEncontradoError.! !!PedidoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 16:48'!test11PedidoConMenusNoSeAplicaElDescuento	| pedido menu cupon|		pedido := PedidoParaRetirar new.	menu := Menu conNombre: 'Menu Lunes' conPrecio: 100 conCantidad: 1.	pedido agregarMenu: menu.		cupon := CuponPorDescuento conDescuento: 10.	pedido agregarCupon: cupon.		self assert: (pedido devolverCostoTotal) equals: 100.! !TestCase subclass: #ProductoTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:30'!test6SeDevuelveCorrectamenteElCostoTotal
	| producto | 
	
	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 3.
	self assert: (producto devolverCostoTotal) equals: 600.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:32'!test2ASaltaExcepcionAlQuererCrearUnproductoConPrecioNegativo 		self should: [ 		Producto conNombre: 'Milanesa' conPrecio: -200 conCantidad: 1.	]	raise: PrecioDeProductoNegativoError.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:21'!test4SeModificaLaCantidadCorrectamente
	| producto | 
	
	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 1.	producto nuevaCantidad: 3.
	self assert: (producto devolverCantidad) equals: 3.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 15:58'!test3SaltaExcepcionAlQuererModificarConUnaCantidadNegativaUnProducto
	| producto | 
	
	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 1.
	self should: [ 		producto nuevaCantidad: -2.	]	raise: CantidadDeProductoNegativaError.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:29'!test5SeDevuelveCorrectamenteElPrecio
	| producto | 
	
	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 1.
	self assert: (producto devolverPrecio) equals: 200.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 19:31'!test7ProductoDevuelveFalseAlPreguntarleSiEsUnMenu
	| producto | 
	
	producto := Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: 3.
	self assert: (producto esUnMenu) equals: false.! !!ProductoTest methodsFor: 'tests' stamp: 'Ezequiel 10/31/2020 15:33'!test1ASaltaExcepcionAlQuererCrearUnProductoConCantidadNegativa		self should: [ 		Producto conNombre: 'Milanesa' conPrecio: 200 conCantidad: -1.	]	raise: CantidadDeProductoNegativaError.! !