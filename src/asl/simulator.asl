// Agent simulator in project tourism.mas2j

/* Initial beliefs and rules */

numTotal(0).

/* Initial goals */

!start.

/* Plans */

+!start : true <- 
	.print("Soy el simulador de agentes.").
	
+!create(Vis) : true <-
	//.print("He creado los siguientes agentes: ");
//	for ( .range(I,1,Vis) ) {
	for ( .range(I,1,4) ) {
		.create_agent(Viajero,"tourist.asl");
		!register(Viajero)
	};
//	!print_Agents; //.wait(1200).//;
	!get_NumOf.
	
+!get_NumOf : true <-
	//.wait(500);
	.findall(viajero(Name,Num), agente(Name,_T,Num), L);
	for (.member(viajero(_Name,Num),L)) {
		//.wait(numTotal(N));
		?numTotal(PrevN);
		-+numTotal(Num+PrevN);
	};
	?numTotal(Numero);
	.send(blackboard,tell,viajeros(Numero));
	.print("El numero total de viajeros generados es: ", Numero).

+!print_Agents : true <-
	.print("Los nombres de los agentes son: ");
	.findall(agente(Name,N), agente(Name,T,N), L);
	for (.member(agente(Name,N),L)) {
		.print("Soy el agente", Name, " y somos: ", N, "; ");
		?numTotal(PrevN);
		-+numTotal(N+PrevN);
	}.

+!register(V) : true <-
	.send(V,tell,name); .wait(100).
//	.print("Preguntado ", V, " por su nombre.").
	
+name(Name,Type,Number) : true <-
	+agente(Name,Type,Number);
	-name(Name,Type,Number)[source(A)].
