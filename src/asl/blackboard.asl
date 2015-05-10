// Agent blackboard in project tourism.mas2j

/* Initial beliefs and rules */

viajeros(0).


route(110, "Ourense Termal", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("As Burgas","12:00"), node("A Chavasqueira","13:30"), node("Outariz","15:00")])). 

route(111, "Volta cidade", suitability(7, 5, 8, 5, 3), people(10, 30), price(10,9,6), 
	place([ node("Outariz","15:00"), node("Tren turistico","17:00"), node("Plaza mayor","18:00")])). 

route(112, "Turismo arquitectonico", suitability(6, 8, 6, 7, 9), people(17, 45), price(15,8,10),  
	place([ node("Plaza mayor","18:00"), node("Catedral","19:00"), node("Paseo","19:30"), node("Ponte romana","20:30")])). 

route(113, "Turismo gastronomico", suitability(6, 8, 6, 7, 9), people(15, 40), price(10,6,8), 
	place([ node("Plaza mayor","18:00"), node("Alameda","19:00"), node("Viños","21:00")])).

route(114, "Ruta monumental",  suitability(6, 8, 6, 7, 9),  people(15, 40),  price(17,8,10), 
	place([ node("Plaza mayor","18:00"), node("Casco viejo","19:00"), node("Posio","20:00"), node("Alameda","21:00")])).

route(121, "Ruta casco antiguo Ourense", suitability(6, 8, 6, 9, 6), people(1, 5), price(5, 3, 4 ),
	place([ node("Catedral Ourense","12:00"), node("As Burgas","12:45"), node("Ayuntamiento","13:30"), 
			node("Parque San Lázaro","14:30")])).
      
route(122, "Pinchos", suitability(6, 8, 6, 7, 9), people(1, 6), price(8, 5, 7), 
	place([ node("Restaurante Román","14:00"), node("Cerveceria O Moucho","14:45")])).

route(123, "Gastronomía Romántica",  suitability(6, 8, 6, 7, 8), people(1, 5), price(7, 5, 6),
	place([ node("Restaurante Romántica","14:00"), node("Parque Miño","16:00"), node("Bar Oira Playa","17:30"), 
      		node("Bar Cenas - Especialidad en chorizos","18:00")])).

route(124, "Degustacion",  suitability(6, 8, 6, 9, 8), people(1, 5), price(7, 5, 6), 
	place([node("As Carballas","14:40"), node("Bar Milucho","16:00")])).

route(125, "Degustacion Michelin",  suitability(6, 8, 6, 7, 6), people(1, 3), price(20, 15, 18),
	place([node("Restaurante Nova","14:40"), node("Club Golf Monterrei","16:00")])).

route(126, "Ruta del paseo del río Miño",  suitability(6, 8, 6, 7, 7), people(1, 8), price(6, 3, 4),
	place([ node("Ribela","15:20"), node("Oira","17:00"), node("Chavasqueira","18:30"), node("Outariz","20:00")])).

route(127, "Sesión club de tiro", suitability(9, 8, 6, 7, 5), people(1, 2), price(20, 15, 18), 
	place([ node("Club Tiro A Peroxa","16:50"), node("Bar Toño","17:10")])).

route(128, "Viaje y visita a O Rodicio", suitability(6, 8, 6, 7, 8), people(1, 8), price(10, 5, 6),
	place([ node("Edificio Politécnico","16:55"), node("A Derrasa","17:30"), node("Alto do Couso","18:30"), 
			node("Mirador O Rodicio","19:00"), node("Restaurante O Rodicio","19:40")])).

route(129, "Paseo en San Lázaro",  suitability(6, 8, 6, 9, 7), people(1, 6), price(6, 3, 4), 
	place([ node("Parque de San Lázaro","16:50"), node("Bar Arábica","17:10")])).

route(211, "Ourense Joven", suitability(7, 9, 6, 8, 9), people(10, 30), price(20,12,15),
	place([ node("As Burgas","10:00"), node("A Alameda","10:30"), node("San Lázaro","12:00")])).

route(212,"Casco antiguo", suitability(5, 7, 8, 6, 9), people(10, 50), price(10,7,8),
	place([ node("As Burgas","11:00"), node("Catedral","12:30"), node("Puente romano","16:30")])).

route(213, "Ourense vinos", suitability(6, 8, 5, 3, 9), people(3, 20), price(30,20,25),
	place([ node("Plaza do ferro","23:00"), node("O Frade","23:15"), node("Plaza Mayor","00:00"), 
			node("Alameda","1:00")])).

route(214, "Entroido ourensano", suitability(6, 8, 7, 9, 9), people(10, 30), price(33,25,27),
	place([ node("Alameda","10:00"), node("Xinzo","11:00"), node("Verin","17:00"), node("Alameda","23:00")])).
      
route(310, "Ourense Carnaval", suitability(6, 8, 6, 7, 9),  people(15, 40),  price(12,8,10),
	place([ node("Ourense","12:00"), node("Xinzo","13:30"), node("Laza","15:00"), node("Verín","18:00")])).  

route(311, "Ourense Monasterio", suitability(6, 8, 6, 7, 9),  people(15, 40),  price(12,8,10),
	place([ node("Ourense","12:00"), node("Pereiro de Aguiar","13:00"), node("San Estevo de Ribas do Sil","14:00"), 
	node("Santa Cristina","16:00"), node("San Pedro de Rochas","17:00")])).  

route(312, "Ourense Baixa Limia", suitability(6, 8, 6, 7, 9),  people(15, 40),  price(12,8,10),
	place([ node("Ourense","12:00"), node("Celanova","12:30"), node("Bande","16:00"), node("Lobios","17:00"), 
			node("Entrimo","18:00")])).  

route(313, "Ourense Nieve", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10),
	place([ node("Ourense","10:00"), node("Maceda","12:30"), node("Castro Caldelas","13:00"), 
			node("Trives","15:00"), node("Manzaneda","16:00")])).  

route(314, "Ourense Termal", suitability(6, 8, 6, 7, 9),  people(15, 40),  price(12,8,10),
	place([ node("Baños de Molgas","10:00"), node("Ourense","12:00"), node("Carballiño","16:00"), 
			node("Cortegada","19:00")])).

route(320, "Ourense Termal", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10),
	place([ node("As Burgas","12:00"), node("A Chavasqueira","13:00"), node("Outariz","14:00")])).  

route(321, "Ourense Aqua", suitability(7, 6, 5, 8, 7), people(15, 40), price(12,8,10), 
	place([ node("Presa Oira","15:00"), node("Playa fluvial","16:00"), node("Embalse castrelo","17:00")])).  

route(322, "Ourense lunch", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("Bar orellas","13:00"),node("Pulperia pulpo a feira","14:00")])).  

route(323, "Ourense Bridge", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("Viaducto","18:00"), node("Puente nuevo","19:00"), node("Puente romano","20:00"), 
			node("Puente Milenio","21:00")])).  

route(324, "Ourense Hard lunch", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("Adega de emilio","13:00"), node("Bar orellas","14:00"), node("Restaurante fuentefria","15:00"), 
			node("Cafeteria arábica","16:00")])).  

route(325, "Ourense Pool", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("Piscinas Oira","16:00"), node("Piscinas Monterrey","17:00"), node("Piscinas a valenza","18:00")])).  

route(326, "Ourense wake up", suitability(6, 8, 6, 7, 9), people(15, 40), price(12,8,10), 
	place([ node("Mirador piñor","10:00")])).

route(131, "Tren de las Termas", suitability(10, 10, 10, 10, 10), people(10, 40), price(5,3,4),  	
	place([ node("Plaza Mayor","10:00"), node("Puente Romano","10:15"), node("Chavasqueira","10:30"), 
			node("Outariz","11:00")])).  

route(132, " Entroido", suitability(5, 10, 3, 3, 5), people(25, 100), price(20,15,18),
	place([ node("Ourense","08:00"), node("Xinzo de Limia","08:35"), node("Laza","11:20"), node("Verín","13:45"), 
			node("Viana do Bolo","16:30"), node("Ourense","19:55")])).  

route(133, "Ourense-Carballiño", suitability(6, 8, 6, 7, 9), people(15, 50), price(11,7,9),
	place([ node("Ourense","10:00"), node("Ribadiavia","10:30"), node("Carballiño","10:55")])). 	 

route(134, "Ruta del tapeo", suitability(6, 8, 6, 7, 9), people(10, 20), price(10,6,8),  	
	place([ node("Plaza del Hierro","19:00"), node("Calle San Miguel","19:15"), node("Eirociño dos cabaleiors","19:30"), 
			node("Calle de la paz","19:45"), node("Calle Lepanto","20:00"), node("Calle la unión","20:15"), 
			node("Rua de Fornos","20:30"), node("Calle Viriato","20:45")])).

route(510, "Ruta de puentes", suitability(6, 7, 9, 8, 8), people(4, 15), price(14,8,11), 
	place([ node("Puente Romano","10:00"), node("Puente Milenio","12:00"), node("Puente novísimo","14:00")])).

route(511, "Ruta del bacalao", suitability(8, 4, 1, 10, 10), people(30, 60), price(60,40,50), 
	place([ node("La Night","23:59"), node("Luna 13","02:00"), node("La Bull","04:00"), node("Lázaro","06:00")])).

route(512, "Camino de Monterrei", suitability(4, 7, 6, 8, 9), people(5, 10), price(12,8,10), 
	place([ node("Concello","12:00"), node("Camino real","13:30"), node("Monterrei","15:00")])).

route(513, "Los milagros", suitability(2, 9, 5, 7, 10), people(10, 20), price(10,3,6), 
	place([ node("Ourense","23:00"), node("Polígono San Cibrao","01:00"), node("Banhos de Molgas","05:00"), 
			node("Os Milagros","08:00")])).

route(514, "Ruta Xurés", suitability(4, 8, 5, 7, 6), people(3, 12), price(15,6,13), 
	place([ node("Ourense","12:00"), node("Celanova","12:30"), node("Bande","13:00"), node("Xurés","14:00")])).


route(520, "Termalismo", suitability(6, 8, 6, 7, 9),  people(30, 40),  price(25,20,23), 
	place([ node("O muiño da veiga","12:00"), node("Outariz","13:30"), node("Las burgas","15:00")])).  

route(521, "Ruta de los puentes", suitability(8, 6, 7, 9, 6),  people(30, 40),  price(30,20,22), 
	place([ node("Puente del Milenio","12:00"), node("Puente romano","13:30"), node("Puente Novísimo","15:00")])).  

route(522, "Ruta de bares", suitability(9, 9, 9, 1, 9),  people(10, 20),  price(15,10,12), 
	place([ node("Orellas","19:00"), node("Dos puertas","20:30"), node("Tapa Negra","22:00")])).  

route(523, "Ruta Religiosa", suitability(8, 8, 5, 5, 5), people(50, 60), price(15,10,12), 
	place([ node("Catedral","12:00"), node("Santa Eufemia","13:30"), node("Santo Domingo","15:00"), node("Fátima","16:00")])).  

route(524, "Ruta de compras", suitability(8, 7, 5, 5, 9),  people(10, 15),  price(30,20,25), 
	place([ node("Purificación García","16:00"), node("Roberto Verino","17:30"), node("Adolfo Domínguez","19:00")])).

route(71, "Ribadavia", suitability(6,6,7,8,9), people(10,20), price(10,6,8),
	place([ node("Castillo","12:00"), node("Iglesia","15:00"), node("Parque Veronza","18:00")])).

route(72, "Castrelo de Miño", suitability(2,9,5,8,9), people(5,10), price(15,5,12),
	place([ node("Parque Nautico","9:00"), node("Coto de Novelle","11:00"), node("Zona de pesca","17:00")])).

route(73, "Xinzo", suitability(2,8,4,7,3), people(15,25), price(10,8,9),
	place([ node("Laguna de Antela","10:00"), node("Rio Limia","12:15"), node("Minas das sombras","15:00")])).

route(74, "Allariz", suitability(4,3,2,6,7), people(20,40), price(10,8,9),
	place([ node("Outlet","11:00"), node("Iglesia Santo de Estevo","16:00"), node("Casa de la cultura","18:30")])).

route(75, "Verín", suitability(9,2,5,3,8), people(20,40), price(10,8,9),
	place([ node("Casa del escudo","10:30"), node("Manantial de Cabreiroá","14:00"), node("Plaza Viriato","19:00")])).

/*
route(0, "Ourense Termal", suitability(9,9,9,9,9), people(15,40), price(12,8,10),
	place([	node("As Burgas","08:00"), node("A Chavasqueira","09:30"), node("Outariz","11:45")])).
*/

route(61, "Parques", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([	node("Las mercedes","13:00"), node("Alameda","14:00"), node("Xardín do Posío","15:00"), 
			node("Parque San Lázaro","16:00"), node("Facultades","17:00")])).
	
route(62, "Puentes y pozas", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([ node("Puente del milenio","13:00"), node("Puente romano","14:00"), node("Parque San Lázaro","15:00"), 
			node("Chavasqueira","16:00"), node("Outariz","17:00")])).
			
route(63, "Vuelta por Ourense", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([ node("As Burgas","13:00"), node("Puente romano","14:00"), node("Auditorio","15:00"),
			node("Xadín do Posío","16:00"), node("Vinos","17:00")])).

route(64, "Visita al pasado", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([ node("As Burgas","13:00"), node("Catedral","14:00"), node("Auditorio","15:00"),
			node("Xadín do Posío","16:00"), node("Alameda","17:00"), node("Plaza mayor","18:00")])).

route(65, "Ruta joven", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([ node("Facultades","13:00"), node("Catedral","14:00"), node("Plaza do Ferro","15:00"),
			node("Xadín do Posío","16:00"), node("Vinos","17:00")])).

route(66, "De visitas y compras", suitability(5,6,8,9,10), people(1,10), price(5,3,4),
	place([ node("Centro comercial","13:00"), node("Plaza do ferro","14:00"), node("Auditorio","15:00"), 
			node("Xadín do Posío","16:00"), node("Alameda","17:00"), node("Plaza mayor","18:00")])).

route(1, "Ourense Miño", suitability(8,8,9,8,9), people(30,50), price(7,3,5),
	place([	node("Oira","18:00"), node("A Chavasqueira","19:30"), node("Outariz","20:45")])).



/* Initial goals */

!start.

/* Plans */

+!start : true <- 
	//.print("Soy el Blackboard y contengo las rutas: ");
	.findall(ruta(Name,people(Max),coste(C),Nodos),route(_Id,Name,_Suit,people(_Min,Max),price(C,C1,C2),place(Nodos)),L);
	for ( .member(R,L) ) {
		R = ruta(Name,people(Max),coste(C),Nodos);
		?viajeros(P);
		-+viajeros(P+Max);
		//.print(R)
		};
	!init_reservas;
	!init_ventas;
	?viajeros(MaxVis);
	.send(simulator,achieve,create(math.round(MaxVis/5)));
	.print("Comienza la negociación");
	.wait(30000); 
	!init_negociar; // no totalmente disponible hasta evaluacion
	.wait(100); 
	.print("Fin negociacion.");
	//!init_payment; // no totalmente disponible hasta evaluacion
	.wait(100);
	.print("Fin pago.");
	//!check_win; // no disponible hasta evaluacion 
	.print("El ganador es............");
	.

+!init_negociar : true <-
	.broadcast(tell,init_negociar);
	.print("Enviado inicio negociación");
	.wait(5000).
	
+!init_payment : true <-
	!close_Routes; // comprueba rutas que no se abriran e informa de ello a los que reservaron
	.broadcast(tell,init_pago);
	.wait(1000).
	
+!init_reservas : true <-
	.findall(route(Id), route(Id,Name,Suit,People,Price,Places), Routes);
	//.print("Reservas: ", Routes);
	for ( .member(route(Id), Routes) ) {
		+routeReservada(Id,0,_List);
		}.
	
+!init_ventas : true <-
	.findall(route(Id), route(Id,Name,Suit,People,Price,Places), Routes);
	//.print("Vendidas: ", Routes);
	for ( .member(route(Id),Routes) ) {
		+routeVendida(Id,0,_List);
		}.

+routes [source(A)] : true <-
	.findall(route(Id, Name, Suit, People, Price, Places),route(Id, Name, Suit, People, Price, Places), Routes);
	.wait(100);
	.send(A,tell,routes(Routes));
	-routes [source(A)].
	
+route(Id) [source(A)] : true <-
	?route(Id, Name, Suit, People, Price, Places);
	.wait(100);
	.send(A,tell,route(Id, Name, Suit, People, Price, Places));
	-route(Id) [source(A)].
	
+reserve(Id,N) [source(A)] : true <-
	?routeReservada(Id,NR,List);
	?route(Id,Name,Suit,people(Min,Max),Price,Places);
	if (N <= Max-NR) {
		-routeReservada(Id,_,_)[source(_)];
		+routeReservada(Id,NR+N,[A|List]);
		.print(A," ha reservado: ", Id);
		.send(A,tell,confirm(ok(Id)))
	} else {
		.print("Sin aforo suficiente en ", Id, " para ", A);
		.send(A,tell,confirm(no(Id)))
	};
	-reserve(Id,N)[source(A)].

+cancel_reserve(Id,N) [source(A)] : true <-
	?routeReservada(Id,NR,List);
	-routeReservada(Id,_,_)[source(_)];
	?takeOut(A,List,NewList);
	+routeReservada(Id,NR-N,NewList);
	-cancel_reserve(Id,N)[source(A)].

+sold(Id,N) [source(A)] : true <-
	?routeVendida(Id,NRV,ListV);
	?routeReservada(Id,NRR,ListR);
	?route(Id,Name,Suit,people(Min,Max),Price,Places);
	if (N <= Max-NR) {
		-routeReservada(Id,_,_)[source(_)];
		+routeReservada(Id,NR+N,[A|List]);
		.print(A," ha reservado: ", Id);
		.send(A,tell,confirm(ok(Id)))
	} else {
		.print("Sin aforo suficiente en ", Id, " para ", A);
		.send(A,tell,confirm(no(Id)))
	};
	-reserve(Id,N)[source(A)].
	
+get_inicio(Id) [source(A)] : true <-
	?route(Id,_Name,_Suit,_People,_Price,place([node(_R,Time)|_Rest]));
	.send(A,tell,inicio(Id,Time));
	-get_inicio(Id) [source(A)].

+get_fin(Id) [source(A)] : true <-
	?route(Id,_Name,_Suit,_People,_Price,place(List));
	.reverse(List,[node(_R,Time)|_Rest]);
	.send(A,tell,fin(Id,Time));
	-get_fin(Id) [source(A)].
