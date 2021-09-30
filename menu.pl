monstruo :- consult('interfazGrafica.pl'), consult('monstruorandom.pl'), consult('eligeMonstruoSusto.pl'), consult('legendario.pl'), consult('bh.pl'), clear, menu.

% Menu principal

menu :- clear,nl,banner,nl,nl,
write('\n\nBienvenidos al programa más asustadizo que existe.'),nl,
write('\nElige la opción que desees:'), nl,
write('\n1. Introducción e Instrucciones.'), nl,
write('2. Modo Monstruo Aleatorio: elijo un monstruo para ti y tú haces el resto.'),nl,
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
write('\nEn esta sección podrás elegir un monstruo según su nivel de susto.'),nl,
write('\nSelecciona entre las siguientes categorías y pon el valor de cuánto asustará tu monstruo!\n'), nl,
write('\n[0-5]   Este monstruo es muy bueno...excepto en lo de ser monstruo,
        cada vez que va a asustar a algún niño se le escapa un pedo y huye asustado por el
        ruido estruendoso que emite.'), nl,
write('\n[5-10]  Este monstruo asusta más bien poco, ya que solo dice : "¡BUH!",
        y el niño cree que es el viento y sigue a lo suyo'),nl,
write('\n[10-15] Este monstruo sí que asusta,  el único problema es que al ver
        al niño asustado va directamente a consolarlo.'),nl,
write('\n[15-20] Este monstruo asusta, mucho, pero tiene la mala suerte de que
        casi siempre aparece la madre del niño y se lleva una regañina por el camino.'),nl,
write('\n[20-25] No hay monstruo mejor, cuando entra a la habitación el niño se
        asusta muchísimo a causa de su actitud amenazante y sus grandes colmillos ¡ROAAAR!'),nl, read(C), eligeMonstruoPuntos(C).


% Instrucciones


instrucciones :- clear, bannerInstruccion,
    write('
    Este juego está basado en el Monster Kit, cuyo creador es Manuel Sanchez Montero y que,
    él mismo describe así: Monster Kit, más que un juego de mesa es un material versátil que
    nos ayuda en el aula y en casa para desarrollar la creatividad y potenciar otras muchas
    habilidades. Más información sobre el juego y material de descarga para complementar este juego
    podéis encontrarlo aquí: http://elmaestromanu.com/materiales-para-monster-kit/

    En este programa tienes tres versiones del juego y un extra:
    \n(1) La versión que te genera un monstruo aleatorio,
    te dirá su nombre y su puntaje total de susto y tú tendrás que dibujarlo, copiar su nombre y
    contar una historia sobre él. Puedes redactar sobre sus gustos, aficiones, y hasta incluso sus miedos!
    \n(2) La versión que te genera un monstruo através de sus puntos, elegirás el nivel de asustabilidad de
    tu monstruo y el programa te devolverá un monstruo generado a partir de esos puntos.
    \n(3) La versión que te genera un monstruo de acuerdo con el nombre que vas eligiendo para cada parte,
    puedes anotar sus puntos y sumarlos al final.
    \n(4) También tienes unos monstruos ya preexistentes y podrás leer la historia que tienen detrás.

    \nTe animas a jugar?'), espera,nl.

% Menu Legendarios

menuLegendario :- clear,bannerLegendarios,nl,
write('\nElige un monstruo legendario y escribe el número debajo.\n'),nl,
write('\n1. TUTILILOCU'), nl,
write('2. CUSODACOCA'), nl,
write('3. CAGADANITA'),nl,
write('4. FALESECACO'),nl,
write('5. TECASIRRAPE'), nl,
write('6. TENODEDIPE'), nl,
read(C), legendario(C).
