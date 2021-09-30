

% Declaración de listas dinámicas

:- dynamic monstruo/1,cuerpo/1, cuerpop/1, ojo/1, ojop/1, nariz/1, narizp/1, boca/1, bocap/1, comp/1, compp/1, puntos/1, cuerpojo/1, ojonariz/1, narizboca/1.


% Métodos que ejecutan el armado de monstruos por partes. Elige una
% parte del cuerpo/ojo/nariz/boca/complemento y lo asocia a su posición
% en la lista análoga de sus puntos
%
%
eligeMonstruo :- borraListas, eligeCuerpoPunto, eligeOjoPunto, eligeNarizPunto, eligeBocaPunto, eligeCompPunto, describeMonstruo,espera,skip_line, dibujaMonstruo.

eligeCuerpoPunto :- cuerpos(Elegido), eligeR(Elegido, Cuerpo), assert(cuerpo(Cuerpo)), miembro(Cuerpo, Elegido, Pos), cuerposP(Punto), miembro(CuerpoPunto, Punto, Pos), assert(cuerpop(CuerpoPunto)), cuerpop(P), assert(puntos(P)), write('\n\nEl cuerpo elegido es '),write(Cuerpo),write(' y tiene un valor de susto de '),write(P),write(' puntos!'),nl.

eligeOjoPunto :-  ojos(Elegido), eligeR(Elegido, Ojo), assert(ojo(Ojo)), miembro(Ojo,Elegido,Pos),  ojosP(Punto), miembro(OjoPunto, Punto, Pos), assert(ojop(OjoPunto)),ojo(O), ojop(P), assert(puntos(P)), cuerpo(Cu),atom_concat(Cu, O, X), assert(cuerpojo(X)), write('El ojo elegido es '),write(Ojo),write(' y tiene un valor de susto de '),write(P),write(' puntos!'),nl.


eligeNarizPunto :-  narices(Elegido), eligeR(Elegido, Nariz), assert(nariz(Nariz)), miembro(Nariz,Elegido,Pos),  naricesP(Punto), miembro(NarizPunto, Punto, Pos), assert(narizp(NarizPunto)),nariz(N), narizp(P), assert(puntos(P)), cuerpojo(Cu),atom_concat(Cu, N, X), assert(ojonariz(X)), write('La nariz elegida es '),write(Nariz),write(' y tiene un valor de susto de '),write(P),write(' puntos!'),nl.

eligeBocaPunto :- bocas(Elegido), eligeR(Elegido, Boca), assert(boca(Boca)), miembro(Boca,Elegido,Pos),  bocasP(Punto), miembro(BocaPunto, Punto, Pos), assert(bocap(BocaPunto)),boca(B), bocap(P), assert(puntos(P)), ojonariz(On),atom_concat(On, B, X), assert(narizboca(X)), write('La boca elegida es '),write(Boca),write(' y tiene un valor de susto de '),write(P),write(' puntos!'),nl.


eligeCompPunto :- complem(Elegido), eligeR(Elegido, Comp), assert(comp(Comp)), miembro(Comp,Elegido,Pos),  complemP(Punto), miembro(CompPunto, Punto, Pos), assert(compp(CompPunto)),comp(C), compp(P), assert(puntos(P)), narizboca(Nb),atom_concat(Nb, C, X), assert(monstruo(X)), write('El complemento elegido es '),write(Comp),write(' y tiene un valor de susto de '),write(P),write(' puntos!'),nl,nl.

% Función que devuelve un elemento aleatorio de una lista

eligeR(Lista, R) :- length(Lista, L), Aleatorio is random(L), nth0(Aleatorio, Lista, R).

% Función recursiva que relaciona elentos de una lista y su posición en
% ella
%
miembro(X,[X|_],1).
miembro(X,[_|Y],N) :- miembro(X,Y,N1), N is N1+1.

% Función que espera a que el usuario oprima una tecla.

espera :- write('\nPulsa Enter para continuar.\n'), skip_line.
esperaDibujo :- write('\nCuando hayas acabado de dibujar esta parte, presiona Enter.\n'), skip_line.

% Función que limpia todas las listas
borraListas :- retractall(ojo(_)), retractall(ojop(_)), retractall(cuerpo(_)), retractall(cuerpop(_)),retractall(nariz(_)), retractall(narizp(_)),retractall(boca(_)),retractall(bocap(_)),retractall(comp(_)), retractall(compp(_)), retractall(puntos(_)), retractall(cuerpojo(_)), retractall(ojonariz(_)), retractall(narizboca(_)), retractall(monstruo(_)).

%Suma los puntos de una lista
totalPuntos :-  findall(X,puntos(X), Nueva), sum_list(Nueva, M), write(M).


describeMonstruo :- monstruo(M), write('Tu súper monstruo se llama: '), write(M), write(' y tiene un valor de susto de '), totalPuntos, write(' puntos!'),nl.

clear :- write('\033[2J').

%Función que dibuja los monstruos y sus partes
dibujaMonstruo :- dibujaCuerpo, esperaDibujo, dibujaOjo, esperaDibujo,  dibujaNariz, esperaDibujo, dibujaBoca, esperaDibujo, dibujaComp, write('Recuerda describir el carácter de este monstruo, qué cosas le gusta hacer, y todo lo que se te ocurra!'), esperaDibujo.

dibujaCuerpo :- cuerpo(C),write('Este es el cuerpo de tu monstruo:'),nl,dibuja_cuerpo(C).
dibujaOjo :- ojo(O),write('Estos son los ojos de tu monstruo:'),nl, dibuja_ojos(O).
dibujaNariz :- nariz(N),write('Esta es la nariz de tu monstruo:'),nl, dibuja_nariz(N).
dibujaBoca :- boca(B),write('Esta es la boca de tu monstruo:'),nl, dibuja_boca(B).
dibujaComp :- comp(C),write('Este es el complemento de tu monstruo:'),nl,dibuja_complemento(C).

