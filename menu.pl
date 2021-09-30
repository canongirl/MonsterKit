monstruo :- consult('interfazGrafica.pl'), consult('monstruorandom.pl'), consult('eligeMonstruoSusto.pl'), consult('legendario.pl'), consult('bh.pl'), clear, menu.

% Menu principal

menu :- clear,nl,banner,nl,nl,
write('\n\nBienvenidos al programa m�s asustadizo que existe.'),nl,
write('\nElige la opci�n que desees:'), nl,
write('\n1. Introducci�n e Instrucciones.'), nl,
write('2. Modo Monstruo Aleatorio: elijo un monstruo para ti y t� haces el resto.'),nl,
write('3. Modo Monstruo a la Carta: seleccionas el nivel de asustabilidad de tu monstruo.'),nl,
write('4. Modo Monstruo a la Carta: seleccionas el nombre que deseas para tu monstruo.'),nl,
write('5. Modo Monstruos Legendarios.'),nl,
write('6. Salir.'), nl, read(C), menuC(C).
menuC(1) :- instrucciones,skip_line, clear, menu.
menuC(2) :- clear,bannerAleatorio,eligeMonstruo,espera, clear, menu.
menuC(3) :- menuSusto,clear, menu.
menuC(4) :- clear,bannerNombre,nl, eligeMonstruoNombre,espera, clear, menu.
menuC(5) :- menuLegendario, clear, menu.
menuC(6) :- !.

% Menu Sustos

menuSusto :- clear,bannerSusto,nl,
write('\nEn esta secci�n podr�s elegir un monstruo seg�n su nivel de susto.'),nl,
write('\nSelecciona entre las siguientes categor�as y pon el valor de cu�nto asustar� tu monstruo!\n'), nl,
write('\n[0-5]   Este monstruo es muy bueno...excepto en lo de ser monstruo,
        cada vez que va a asustar a alg�n ni�o se le escapa un pedo y huye asustado por el
        ruido estruendoso que emite.'), nl,
write('\n[5-10]  Este monstruo asusta m�s bien poco, ya que solo dice : "�BUH!",
        y el ni�o cree que es el viento y sigue a lo suyo'),nl,
write('\n[10-15] Este monstruo s� que asusta,  el �nico problema es que al ver
        al ni�o asustado va directamente a consolarlo.'),nl,
write('\n[15-20] Este monstruo asusta, mucho, pero tiene la mala suerte de que
        casi siempre aparece la madre del ni�o y se lleva una rega�ina por el camino.'),nl,
write('\n[20-25] No hay monstruo mejor, cuando entra a la habitaci�n el ni�o se
        asusta much�simo a causa de su actitud amenazante y sus grandes colmillos �ROAAAR!'),nl, read(C), eligeMonstruoPuntos(C).


% Instrucciones


instrucciones :- clear, bannerInstruccion,
    write('
    Este juego est� basado en el Monster Kit, cuyo creador es Manuel Sanchez Montero y que,
    �l mismo describe as�: Monster Kit, m�s que un juego de mesa es un material vers�til que
    nos ayuda en el aula y en casa para desarrollar la creatividad y potenciar otras muchas
    habilidades. M�s informaci�n sobre el juego y material de descarga para complementar este juego
    pod�is encontrarlo aqu�: http://elmaestromanu.com/materiales-para-monster-kit/

    En este programa tienes tres versiones del juego y un extra:
    \n(1) La versi�n que te genera un monstruo aleatorio,
    te dir� su nombre y su puntaje total de susto y t� tendr�s que dibujarlo, copiar su nombre y
    contar una historia sobre �l. Puedes redactar sobre sus gustos, aficiones, y hasta incluso sus miedos!
    \n(2) La versi�n que te genera un monstruo atrav�s de sus puntos, elegir�s el nivel de asustabilidad de
    tu monstruo y el programa te devolver� un monstruo generado a partir de esos puntos.
    \n(3) La versi�n que te genera un monstruo de acuerdo con el nombre que vas eligiendo para cada parte,
    puedes anotar sus puntos y sumarlos al final.
    \n(4) Tambi�n tienes unos monstruos ya preexistentes y podr�s leer la historia que tienen detr�s.

    \nTe animas a jugar?'), espera,nl.

% Menu Legendarios

menuLegendario :- clear,bannerLegendarios,nl,
write('\nElige un monstruo legendario y escribe el n�mero debajo.\n'),nl,
write('\n1. TUTILILOCU'), nl,
write('2. CUSODACOCA'), nl,
write('3. CAGADANITA'),nl,
write('4. FALESECACO'),nl,
write('5. TECASIRRAPE'), nl,
write('6. TENODEDIPE'), nl,
read(C), legendario(C).
