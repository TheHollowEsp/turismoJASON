// Agent broker in project tourism.mas2j

/* Initial beliefs and rules */

money(1000).

/* Initial goals */

!start.

/* Plans */

+!start : true <- 
	+type(broker);
	?money(M);
	!get_Routes;
	.print("Me pille las rutas con ", M, " euros.").

+!get_Routes : true <-
	.wait(100);
	.send(blackboard,tell,routes);
	.wait(routes(Routes));
	?routes(Routes);
	for ( .member(R, Routes) ) {
		R = route(I, NameR, suitability(S,C,F,FB,G), people(Min,Max), Price, Places);
		+R;
		//.print(R)
	};
	-routes(Routes)[source(A)];
	.wait(100).
	
+init_negociar [source(A)]: true <-
	.print("Envio un saludo a los viajeros");
	?money(M);
	.wait(2000);
	//.broadcast(tell,hello);
	.print("Fin de mi negociaci—n con", M, " euros.").
