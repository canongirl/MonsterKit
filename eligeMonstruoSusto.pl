pruebas :- consult('bh.pl'),consult('interfazgrafica.pl'),consult('monstruorandom.pl').

:- dynamic listaNombre/1.

%Elegimos el monstruo por el nombre.
% El usuário escribe la sílaba deseada, que es guardada en una variable,
% luego pasamos todas los valores a la función encargada de dibujar el
% monstruo.
%
eligeMonstruoNombre :- writeln('\nQué nombre quieres para tu Monstruo??'),
writeln('\nElige la sílaba que quieres para el CUERPO: PE, CA, FA, SA, MU, PO, RE, TE, CU, TU'),nl,
read(Cuerpo),
writeln('\nElige la sílaba que quieres para los OJOS: TO, NO, SU, CA, MA, PU, TI, SO, GA, LE'),nl,
read(Ojos),
writeln('\nElige la sílaba que quieres para la NARIZ: SI, CA ,DE, GO, LI, CO, ME, PO, MO, NA'),nl,
read(Nariz),
writeln('\nAhora elige la sílaba que quieres para la BOCA: LO, RO, PA, CA, DI, DO, LA, SE, DA, RA'),nl,
read(Boca),
writeln('\nSólo falta elegir la última sílaba, para completar tu monstruo: RI, CO, LA, CA, CU, LU, TA, PE, MI, PI'),nl,
read(Complemento),
writeln('\nVeamos cómo te ha quedado el monstruo..\n'),espera,
dibujaMonstruoNombre(Cuerpo,Ojos,Nariz,Boca,Complemento).

% Esta regla es encargada de coger los valores pasados por el
% usuário y identificar los hechos que corresponden con dicho
% valor, coger los puntos correspondientes a cada hecho,
% imprimir los mensajes de cada parte e imprimir por pantalla el
% monstruo.
%
dibujaMonstruoNombre(Cuerpo,Ojos,Nariz,Boca,Complemento) :-
cuerpo(Cuerpo,A),imprimeMensajeCuerpo(Cuerpo,A),
dibuja_cuerpo(Cuerpo),esperaDibujo,
ojo(Ojos,B),imprimeMensajeOjos(Ojos,B),
dibuja_ojos(Ojos),esperaDibujo,
nariz(Nariz,C),imprimeMensajeNariz(Nariz,C),
dibuja_nariz(Nariz),esperaDibujo,
boca(Boca,D),imprimeMensajeBoca(Boca,D),
dibuja_boca(Boca),esperaDibujo,
complemento(Complemento,E),imprimeMensajeComplemento(Complemento,E),
dibuja_complemento(Complemento),esperaDibujo,
assert(listaNombre(Cuerpo)), assert(listaNombre(Ojos)), assert(listaNombre(Nariz)), assert(listaNombre(Boca)), assert(listaNombre(Complemento)),
imprimeMensajeNombre, Puntos is A+B+C+D+E, imprimeMensajePuntos(Puntos).

% Elegimos el Monstruo por los puntos de susto.
% Primero cogemos números aleatorios entre 0 y 5 que es el rango de
% puntos de cada parte del monstruo, y sumamos todos los valores para
% comprobar si es igual a la puntuación dada por el usuário, caso no sea
% verdad volvemos a llamar la regla con una llamada recursiva.
%
eligeMonstruoPuntos(Puntos) :- aleatorio(A), aleatorio(B), aleatorio(C), aleatorio(D),aleatorio(E),
Total is A+B+C+D+E, (  \+ (Total = Puntos) -> eligeMonstruoPuntos(Puntos);
writeln('Veamos cómo te ha quedado el monstruo..'),
espera,imprime_monstruo(Puntos, A, B, C, D, E)).


% Reglas responsables por identificar cada parte, su puntaje y llamar a
% las correspondientes reglas para imprimir por pantalla los elementos
% elegidos.
%
imprime_monstruo(Puntos, A, B, C, D, E) :-
imprimeCuerpoInfo(_,A),
imprimeOjosInfo(_,B),
imprimeNarizInfo(_,C),
imprimeBocaInfo(_,D),
imprimeComplementoInfo(_,E),imprimeMensajeNombre, imprimeMensajePuntos(Puntos),espera.

imprimeCuerpoInfo(_,X) :-
((X==1, random_member(C,['CA','FA','SA']));
(X==2, random_member(C,['MU', 'PO', 'RE']));
(cuerpo(C,X))), assert(listaNombre(C)),imprimeMensajeCuerpo(C,X), dibuja_cuerpo(C),esperaDibujo.

imprimeOjosInfo(_,X) :-
((X==1, random_member(C,['NO','SU']));
(X==2, random_member(C,['CA','MA', 'PU', 'TI']));
(ojo(C,X))), assert(listaNombre(C)),imprimeMensajeOjos(C,X), dibuja_ojos(C),esperaDibujo.

imprimeNarizInfo(_,X) :-
((X==1, random_member(C,['CA','DE', 'GO', 'LI']));
(X==2, random_member(C,['CO', 'ME']));
(nariz(C,X))), assert(listaNombre(C)),imprimeMensajeNariz(C,X), dibuja_nariz(C),esperaDibujo.


imprimeBocaInfo(_,X) :-
((X==0, random_member(C,['LO', 'RO']));
(X==2, random_member(C,['CA', 'DI', 'DO', 'LA']));
(boca(C,X))), assert(listaNombre(C)),imprimeMensajeBoca(C,X), dibuja_boca(C),esperaDibujo.


imprimeComplementoInfo(_,X):-
((X==1, random_member(C,['CO', 'LA']));
(X==2, random_member(C,['CA', 'CU', 'LU', 'TA']));
(complemento(C,X))), assert(listaNombre(C)),imprimeMensajeComplemento(C,X), dibuja_complemento(C),esperaDibujo.

%Auxiliares

%Imprime el nombre completo del monstruo leyendo la lista dinámica.
%
imprimeLista([]).

imprimeLista([Cabeza|Cola]) :-
    write(Cabeza),
    imprimeLista(Cola).

imprime :- findall(X, listaNombre(X),Lista), imprimeLista(Lista).

% Borra toda la información de la lista dinámica que almacena el nombre
% del monstruo.
%
borrarLista :- retractall(listaNombre(_)).

%Auxiliar - Devuelve un número aleatorio entre 0 y 5.
%
aleatorio(X) :- X is random(6).

%Imprime el nombre de cada parte del monstruo con su respectivo puntaje.
%
imprimeMensajeCuerpo(Cuerpo,Puntos) :- format('\nEl cuerpo elegido es ~w y tiene ~w puntos!\n',[Cuerpo,Puntos]).
imprimeMensajeOjos(Ojos,Puntos) :- format('\nEl ojo elegido es ~w y tiene ~w puntos!\n',[Ojos,Puntos]).
imprimeMensajeNariz(Nariz,Puntos) :- format('\nLa nariz elegida es ~w y tiene ~w puntos!\n',[Nariz,Puntos]).
imprimeMensajeBoca(Boca,Puntos) :- format('\nLa boca elegida es ~w y tiene ~w puntos!\n',[Boca,Puntos]).
imprimeMensajeComplemento(Complemento,Puntos) :- format('\nEl complemento elegido es ~w y tiene ~w puntos!\n',[Complemento,Puntos]).
imprimeMensajeNombre :- writeln('\nEl nombre completo de tu monstruo ha quedado así: '), imprime, borrarLista.
imprimeMensajePuntos(Puntos) :- format(' y tiene un valor de susto de  ~w puntos!!\n', Puntos).
