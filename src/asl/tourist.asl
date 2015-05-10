// Agent tourist in project tourism.mas2j

/* Initial beliefs and rules */

gasto(0).

// Regla na•ve para comparar dos rutas ordenadas por precio. 
// Fijaros que se tiene acceso directo a la informaci—n de las rutas y no es
// necesario preguntar al Blackboard

compatibles(R1,R2) :- 
	R1 = ruta(_, _, Id1) &
	R2 = ruta(_, _, Id2) &
	route(Id1, _, _, _, _, place(Places1)) &	
	route(Id2, _, _, _, _, place(Places2)) &	
	.nth(0,Places2,NodeIni2) &
	NodeIni2 = node(_,Tini2) &
	.length(Places1,L1) &
	.nth(L1-1,Places1,node(_,Tfin1)) &

	Tfin1 < Tini2 //&
	//.print("Son Compatibles: ", R1," y ",R2, "con tiempos: ", Tfin1, " y ", Tini2)
	.

// Regla na•ve para devolver una lista de rutas compatibles ordenadas por precio

let_compatibles([],[]) :- 
	.print("Fin; lista vacia.").

let_compatibles([E],[E]) :- 
	.print("Fin; lista unitaria. ").

let_compatibles([R1,R2|L],[R1,R2|NL]) :-
	//.print("Compatibles :") &
	compatibles(R1,R2) &
	//.print(R1, " y ", R2, " continuo con: ", L) &
	let_compatibles([R2|L],[R2|NL]).
	
let_compatibles([R1,R2|L],[R2,R1|NL]) :-
	//.print("Compatibles :") &
	compatibles(R2,R1) &
	//.print(R1, " y ", R2, " continuo con: ", L) &
	let_compatibles([R1|L],[R1|NL]).

let_compatibles([R1,R2|L],[R1|NL]) :- 
	not compatibles(R1,R2) &
	//.print("Incompatibles :", R1, " y ", R2, " continuo con: ", L) &
	let_compatibles([R1|L],[R1|NL]).

/* Initial goals */

!start.

/* Plans */

+init_pago[source(A)] : true <-
	.print("Efectua la actualizaci—n de dinero con el pago de las entradas.");
	?money(M);
	//?ingresos(I);
	?gasto(G);
	//-+money(M-G+I);
	-+money(M-G);
	.my_name(Name);	
	.send(A,tell,money(Name,M-G)).
	
+money[source(A)] : true <-
	.print("Devuelve el dinero que tiene.");
	?money(M);
	.my_name(Name);	
	.send(A,tell,money(Name,M)).

+negotiate(R)[source(A)] : true <-
	.print("Negociando las ruta: ", R," con", A);
	R = route(Id, Oferta); // Oferta es el precio por persona ofertado para esta ruta
	if (confirm(ok(Id))) { // La ruta ya la ha reservado
		?route(Id, _, _, _, price(Val,_,_), Places);
		OK = (Val > Oferta)
	} else {
		?money(M);
		?gasto(G);
		if (confirm(no(Id))) { // La ruta no la ha reservado y esta en su BC
			?route(Id, _, _, _, price(Val,_,_), Places);
		} else { // La ruta no esta en su BC
			.send(blackboard,tell,route(Id));
			.wait(200);
			?route(Id, _, _, _, price(Val,_,_), Places);
		};
		!checking_New_Reserva(Id,Oferta,Val,OK);
	};
	.send(A,tell,confirm(OK)); // OK = ok(R) or OK = no(R)
	.wait(100).

+name[source(A)] : true <-
	.my_name(Name);	
	.wait(type(T));
	?type(T);
	.wait(num(NViajeros));
	?num(NViajeros);
	.send(A,tell,name(Name,T,NViajeros));
	-name[source(A)].
	
+!start : true <- 
	.my_name(Name);
	.print("Hola soy el agente: ", Name);
	!create;
	!get_Routes;
	!take_Routes.
	
+!take_Routes : true <-
	!select_Routes;
	.wait(500);
	!reserve_Routes;
	?gasto(G);
	if (G=0 & route(_, _, _, _, _, _)) {
		!take_Routes;
	}.

+!create <-
	Money = 350+math.round(112*math.random(375)/100);
	Type = math.round(math.random(5));
	if (Type < 1) {
		-+type(single);
		-+num(1);
	};
	if (Type >= 1 & Type < 2) {
		-+type(couple);
		-+num(2);
	};
	if (Type >=2 & Type < 3) {
		-+type(family);
		-+num(math.round(math.random(3))+2);
	};
	if (Type >= 3 & Type < 4) {
		-+type(familyBaby);
		-+num(math.round(math.random(2))+2);
	};
	if (Type >= 4) {
		-+type(group);
		-+num(math.round(math.random(5))+3);
	};
	+money(Money);
	?type(T);
	?num(NViajeros);
	.print("Soy de tipo: ", T, " tengo ", Money, " euros para gastar. Y somos: ", NViajeros);
	.wait(100).
	
	
+!get_Routes : true <-
	.wait(500);
	.send(blackboard,tell,routes);
	.wait(routes(Routes));
	?routes(Routes);
	for ( .member(R, Routes) ) {
		R = route(I, NameR, suitability(S,C,F,FB,G), people(Min,Max), Price, Places);
		?type(T);
		?num(Num);
		if (T=single & S>3) {
			+R;}
		if (T=couple & C>4 & Max >= 2) {
			+R;}
		if (T=familyBaby & S>6 & Max >= Num) {
			+R;}
		if (T=family & C>6 & Max >= Num) {
			+R;}
		if (T=group & S>5 & Max >= Num) {
			+R;}
		//.print(R)
	};
	-routes(Routes)[source(A)];
	.wait(200).
	
+!reserve_Routes : reserva(_Id) <-
//	.wait(500);
	?num(Num);	
	?reserva(Id);
	.send(blackboard,tell,reserve(Id,Num));
	.wait(confirm(Ok));
	?confirm(Ok);
	if (Ok = no(Id)) {
		?route(Id,A2,A3,people(Min,Max),price(P1,P2,P3),Places);
		?type(T);
		?gasto(G);
		if (T=group & (Num >= Max/3)) {
			-gasto(_G);
			.wait(100);
			//.print("Elimino gasto: ", G, " hecho por ruta: ", Id, " a ", P3, " euros.");
			+gasto(G-(Num*P3));
			//.print("Incluyo gasto: ", G-(Num*P3));
			};
		if (M > Num*P1) {
			-gasto(_G);
			.wait(100);
			//.print("Elimino gasto: ", G, " hecho por ruta: ", Id, " a ", P3, " euros.");
			+gasto(G-(Num*P1));
			//.print("Incluyo gasto: ", G-(Num*P1));
			};
		-route(Id,_,_,_,_,_);
	};
	//.print(R)
	-reserva(Id);
	.print("Elimino reserva de la ruta: ", Id);
	!reserve_Routes.

+!reserve_Routes : true <- .print("No hay mas reservas que hacer.").
	
+!select_Routes : true <-
	.wait(500);
	//.findall(ruta(price(I,G),people(Max),I),route(I, NameR, Suit, people(Min,Max), price(I,A,G), Free, Res), L);
	.findall(ruta(price(P1,P3),people(Max),Id), route(Id,A2,A3,people(Min,Max),price(P1,P2,P3),Places), LR);
	//.print("La lista de rutas: ", LR);
	.sort(LR,LRS);
	//.print("La lista de rutas ordenadas: ", LRS);
	?let_compatibles(LRS,LRF);
	//.print("Listado compatibles: ", LRF);
	for ( .member(R, LRF) ) {
		R = ruta(price(I,Gr),people(Max),Id);
		?type(T);
		?num(Num);
		?money(M);
		?gasto(G);
		//.print("He calculado: ",T, ", ", Num, ", ", M, ", ", G);
		if (T=group & (Num >= Max/3)) {
			if ((M-G) > Num*Gr) {
				+reserva(Id);
				-+gasto(G+Num*Gr);
			} else {
				-route(Id,_A2,_A3,_People,_Price,_Places);
			}
		};
		if (M > Num*I) {
			+reserva(Id);
			-+gasto(G+Num*I);
		} else {
			-route(Id,_A2,_A3,_People,_Price,_Places);
		};
		//.print(R)
	};
	.wait(200);
	.abolish(_[source(blackboard)]).
	

