% Interfaz Gráfica Monstruos
% Responsable de todos los dibujos y logotipos del programa.
%
%
:- discontiguous dibuja_cuerpo/1,dibuja_ojos/1,dibuja_nariz/1,dibuja_boca/1,dibuja_complemento/1,
dibujaCuerpo/1, dibujaOjos/1,dibujaNariz/1,dibujaBoca/1,dibujaComplemento/1.

%Banner

banner :- ansi_format([fg(magenta)],' __  __                 _              _  ___ _
|  \\/  |               | |            | |/ (_) |
| \\  / | ___  _ __  ___| |_ ___ _ __  | · / _| |_
| |\\/| |/ _ \\| ·_ \\/ __| __/ _ \\ ·__| |  < | | __|
| |  | | (_) | | | \\__ \\ ||  __/ |    | · \\| | |_
|_|  |_|\\___/|_| |_|___/\\__\\___|_|    |_|\\_\\_|\\__|

                                                  ',[]),nl,ansi_format([fg(magenta)],'Un juego de Manu Sánchez Montero',[]).


%Introducción e Instrucciones

bannerInstruccion :- ansi_format([fg(magenta)],' _____       _                 _                _                      _____           _                       _
|_   _|     | |               | |              (_)   /                |_   _|         | |                     (_)
  | |  _ __ | |_ _ __ ___   __| |_   _  ___ ___ _  ___  _ __     ___    | |  _ __  ___| |_ _ __ _   _  ___ ___ _  ___  _ __   ___  ___
  | | | ·_ \\| __| ·__/ _ \\ / _` | | | |/ __/ __| |/ _ \\| ·_ \\   / _ \\   | | | ·_ \\/ __| __| ·__| | | |/ __/ __| |/ _ \\| ·_ \\ / _ \\/ __|
 _| |_| | | | |_| | | (_) | (_| | |_| | (_| (__| | (_) | | | | |  __/  _| |_| | | \\__ \\ |_| |  | |_| | (_| (__| | (_) | | | |  __/\\__ \\
|_____|_| |_|\\__|_|  \\___/ \\__·_|\\__·_|\\___\\___|_|\\___/|_| |_|  \\___| |_____|_| |_|___/\\__|_|   \\__·_|\\___\\___|_|\\___/|_| |_|\\___||___/
                                                                                                                                       ',[]),nl.

%Monstruos Aleatorios

bannerAleatorio :-
ansi_format([fg(magenta)],' __  __                 _                               _            _             _
|  \\/  |               | |                        /\\   | |          | |           (_)
| \\  / | ___  _ __  ___| |_ _ __ _   _  ___      /  \\  | | ___  __ _| |_ ___  _ __ _  ___
| |\\/| |/ _ \\| ·_ \\/ __| __| ·__| | | |/ _ \\    / /\\ \\ | |/ _ \\/ _` | __/ _ \\| ·__| |/ _ \\
| |  | | (_) | | | \\__ \\ |_| |  | |_| | (_) |  / ____ \\| |  __/ (_| | || (_) | |  | | (_) |
|_|  |_|\\___/|_| |_|___/\\__|_|   \\__·_|\\___/  /_/    \\_\\_|\\___|\\__·_|\\__\\___/|_|  |_|\\___/
                                                                                           ',[]),nl.

%Monstruos Puntos

bannerSusto :-
ansi_format([fg(magenta)],' __  __                 _                                             _            _
|  \\/  |               | |                        /\\                 | |          | |
| \\  / | ___  _ __  ___| |_ _ __ _   _  ___      /  \\   ___ _   _ ___| |_ __ _  __| | ___  _ __
| |\\/| |/ _ \\| ·_ \\/ __| __| ·__| | | |/ _ \\    / /\\ \\ / __| | | / __| __/ _` |/ _` |/ _ \\| ·__|
| |  | | (_) | | | \\__ \\ |_| |  | |_| | (_) |  / ____ \\\\__ \\ |_| \\__ \\ || (_| | (_| | (_) | |
|_|  |_|\\___/|_| |_|___/\\__|_|   \\__·_|\\___/  /_/    \\_\\___/\\__·_|___/\\__\\__·_|\\__·_|\\___/|_|

                                                                                                ',[]),nl.


%Monstruos por Nombre

bannerNombre :- ansi_format([fg(magenta)],' ______ _                         _                    _                  _   __  __                 _
|  ____| |                       | |                  | |                (_) |  \\/  |               | |
| |__  | |  _ __   ___  _ __ ___ | |__  _ __ ___    __| | ___   _ __ ___  _  | \\  / | ___  _ __  ___| |_ _ __ _   _  ___
|  __| | | | ·_ \\ / _ \\| ·_ ` _ \\| ·_ \\| ·__/ _ \\  / _` |/ _ \\ | ·_ ` _ \\| | | |\\/| |/ _ \\| ·_ \\/ __| __| ·__| | | |/ _ \\
| |____| | | | | | (_) | | | | | | |_) | | |  __/ | (_| |  __/ | | | | | | | | |  | | (_) | | | \\__ \\ |_| |  | |_| | (_) |
|______|_| |_| |_|\\___/|_| |_| |_|_.__/|_|  \\___|  \\__·_|\\___| |_| |_| |_|_| |_|  |_|\\___/|_| |_|___/\\__|_|   \\__·_|\\___/
                                                                                                                          ',[]),nl.

%Monstruos Legendarios

bannerLegendarios :- ansi_format([fg(magenta)],' _                 __  __                 _                          _                               _            _
| |               |  \\/  |               | |                        | |                             | |          (_)
| |     ___  ___  | \\  / | ___  _ __  ___| |_ _ __ _   _  ___  ___  | |     ___  __ _  ___ _ __   __| | __ _ _ __ _  ___  ___
| |    / _ \\/ __| | |\\/| |/ _ \\| ·_ \\/ __| __| ·__| | | |/ _ \\/ __| | |    / _ \\/ _` |/ _ \\ ·_ \\ / _` |/ _` | ·__| |/ _ \\/ __|
| |___| (_) \\__ \\ | |  | | (_) | | | \\__ \\ |_| |  | |_| | (_) \\__ \\ | |___|  __/ (_| |  __/ | | | (_| | (_| | |  | | (_) \\__ \\
|______\\___/|___/ |_|  |_|\\___/|_| |_|___/\\__|_|   \\__·_|\\___/|___/ |______\\___|\\__· |\\___|_| |_|\\__·_|\\__·_|_|  |_|\\___/|___/
                                                                                 __/ |
                                                                                |___/
',[]),nl.


%Cuerpos

dibuja_cuerpo('CA') :-
write('

                              .,,,.       .,lkl,.
                            .lKKkKKl.     lMk,lKK,
                             lMl .kMl    .kMl  .kKk,
                           ,kKk.  ,KK,  ,KMk.   lMMk.
                           ,KMKl,. .kKl..lkkkkk,.lkKK,
                            .,,lKK, .lKk,,,lKMMl   .kKl.
                                lMk..lKMMKkkkkKK,   .lKKl.
                                .kMKKKl,,.    lMk.    ,KMKkl.
                                ,KKl,.        .kMl     .lKMMKkl.
                              .lKk.            lMk,.     ,KMKkKKl.
                             .kMk.             .kMMl      .kMl.lKK,
                             lMk.               lMMk.     .kMl  .kKl.
                             lMl                .kMMKl. .,kMk.   .lKk.
                             lMl                 .,lkKKkKKkl.      ,Kk.
                             lMl                     .,,,.          ,Kk.
                             ,KK,                                    ,Kk.
                              ,KK,                                    lMl
                               .kKl.                                  .kK,
                                .lkkkl.                                ,Kl
                                   .lKKl.                               lK,
                                     .kMk.                              lMl
                                      .kMk.                             lMl
                                       .kMl                             ,Kk.
                                        lMl                              lMl
                                        lMl                              lMl
                                        lMl                             .kMl
                                       ,Kk.                             lMk.
                                     .lKK,                              lMl
                                    .kMk.                               lMl
                                  .lKKl.                               .kK,
                                .lKk,.                                 lMl
                               ,KKl.                                  ,Kk.
                              .kMl                                   .kK,
                              lMk.                                  .kMl
                              lMl                                  .kMk.
                              lMl                                 .kKl.
                              ,Kk.                              .lKK,
                               lMk.                            .kMk.
                               .lKK,                        .,lKKl.
                                 ,KKl,.                   .lKMKl.
                                  .lkKKl,,.          .,,lkKKKMl
                                     .,lKMKkkkkkkkkkkKKkKMk.lMl
                                        ,KMklKMKl,,,,,..kMl lMK,
                                    .,lkKKk, lMl   .lkkkkk, lMMl
                                   ,KMKl,.   lMl ,kKMKkl,,,,kMMl
                                   ,KMKkkkkkkKK, .,lkkkkkkkkkkl.
                                    .,,,,,,,,,.    .,,,,,,,,,.
 '), nl.

dibuja_cuerpo('CU') :-
write('                                                          ...
                    .okkkkkkxxxxxxxdddddddoooooolllllllxK000000OOOOOOkkkkkkkkl.
                   .kMKxxkkkkkkkko;:::::::cccccclllllloooooooddddddxxxxxxxxkkKK,
                   oMWc                                                      oWc
                   oMWc                                                      oWc
                   dMN:                                                      dN:
              .·::dXMN:                                                      dW0dc,·
            ,x0XNOkXMX;                                                     .xMWKOXNOo;
         .;kKko;. .xMX;                                                     .xMX; ·:d0KOo,
       .:kKx,     .kMK,                                                     .kMK,    .;kNNd.
      .xN0;    .,ckNMK,                                                     .kMWk:.     ;kXx·
     .xN0;    ;ONXOXM0·                                                     .OMNKXNx,    .xNO·
    .lXK;    cKXd· ;K0·                                                     .OXc.;kNXo.   ·0No.
    ·0Wk.  .lX0;   ·0O.                                                     ·0O.  .cXNo.  .lX0·
    ·00,   ,KMO.   ·0O.                                                     ·0O.   ·0MO.   ·0O.
    ,KO.   ,KMk.   ,Kk.                                                     ,Kk.   ,KMk.   ,Kk.
    ,KWd.  ,KMk.   ,Kk.                                                     ,Kk.   ,KMk.   ,Kk.
    ;XMx.  ;XMx.   ;Xx.                                                     ;Xx.   ;XMx.   ;Xx.
    ;XMx.  ;XMx.   ;Xx.                                                     ;Xx.   ;XMx.   ;Xx.
    :NMd   .kWd    :Nd                                                      :Nd    :NMd    :Nd
    :NMd    :Nd    :NO·                                                     :Nd    :NMd    :Nk.
    cWMo    cWo    cWMo                                                     cWo    cWMo    cWWl
    cWMo    cWo    cWMo                                                     cWo    cWMo    cWMo
    lMMl    cWl    lMMl                                                     cWo    cWMo    cWMo
    lMMl    lMl    lMMl                                                     lMl    lMMl    lMX:
    dMWc    oMl    lMMl                                                     lMl    lMMl    lMK,
   :NO;..·cdXWc    oMWc                                                     lWl    ;XMx·.  .OM0·
  .OWo,x0XXOd:.    oMWc                                                     oM0,    .dOKNO:.,OMO·
  .xMNKko;.        oMWc                                                     oMWc       ·d0XXO0MX:
   ,ll,            .kWKkkkkxxxxxxxxddddddoooooolllllllcccccc::::::;;;;;;;;;oXWd.          ·cx00:
                    .,lxxkkkkkkOXWKOOO0NMWX000KKKKKKXXXXWMWNNNNWMMNOxxxxxxkkxc.              ..
                               .xX:   .xMXc............·kNl...,OMNl
                               .xX;   .xMX;            .xX;   .xMX;
                               .kK,   .kMK,            .kK,   .kMK,
                               .kK,   .dNK,            .kK,   .kMK,
                               .O0·    ·O0·            .O0·   .kM0·
                               .O0·    .O0·            .O0·    ;K0·
                               ·0K:    ·0O.            ·0O.    ·0O.
                               ·0K;    ·0O.            ·0O.    ·0O.
                               ,KMk.   ,Kk.            ,Kk.    ,Kk.
                               ,KMk.   ,Kk.            ,Kk.    ,Kk.
                               ;XMx.   ;Xx.            ;Xk.    ;Xx.
                               ;XMx.   ;Xx.            ;XNl    ;Xx.
                            .·cOWMd    :Nd             :NMd    :NNx·
                          .c0WXOOd·    :Nd             :NMd    .kNWXOo.
                         ,0WO:.        cWo             cWMo     .··c0WXo.
                        ,0MKl,,,·······dWo             cWMd.        .c0Mo
                        ,KMMMMWWWWWWWNNWX:             :XX0kkkkkkkkkkxKWl
                         .,;;;;;;;;:::::·               ......······,,,,.

'), nl.

dibuja_cuerpo('FA') :-
write('

                                      .,,lkkkkkkkkkkkkkkkl,,.
                                  .,lkKMKkkkl,,,,,,,,,,lkkkKKkl,.
                                .lKMKkl,.                  .,lkKKl,.
                             .lkKKl,.                          .lKMKl.
                            ,KMKl.                               .,lKKl.
                          .lKKl.                                    .kMk.
                         ,KMk.                                       .lKKl.
                        ,KMk.                                          ,KMk.
                       ,KKl.                                            ,KMk.
                      ,KMl                                               ,KMl
                     .kMk.                                                ,KK,
                     lMK,                                                  lMk.
                    ,KMl                                                   ,KMl
                    lMK,                                                    lMk.
                   .kMl                                                     lMMl
                   lMMl                                                     .kMl
                   lMMl                                                      lMl
                   lMK,                                                      lMK,
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                   lMl                                                       lMMl
                  .kMl                                                       lMMl
                  lMMl                                                       .kMl
                  lMK,                                                        lMK,
                 ,KMl                                                         .kMk.
                .kMk.                                                          ,KMl
               .kMK,                                                            ,KK,
              .kMK,                                                              lMK,
             .kMK,                                                               .kMK,
            .kMK,                                                                 .lKKl.
           ,KMk.         .,.                                            .,.         ,KMk.
          ,KMk.        .lKMl        .ll.        .,,.        ,kl.       .kMKl.        .kMk.
          lMMl      .,lKMMK,       ,KMMl       ,KMMk.       lMMk.       lMMMKl,.      lMMl
          ,KMk,,,,lkKMKkKMk.     .lKMMMl      ,KMMMMk.      lMMMKl.     lMMKkKMKkl,,,lKMk.
           .lKMMMMKkl,. ,KMk,,,lkKMKkKMk.   .lKMKkkKMk.    .kMKkKMKl,,,lKMk. .,lkKMMKkkl.
             .,,,,.      ,kKMMMMKl,. ,KMKllkKMKl.  .lKKkkkkKMK, .,lkKMMKkl.      .,,.
                           .,,,,.     .lkkkkkl.      .lkkkkkl.      .,,.



'),nl.

dibuja_cuerpo('MU') :-
write('

                                    .,,,,,,lkkkkkkkkkkkkkkkkkl,,,,,.
                            .,,lkkkkKMKkkkkkkkkkkkkl,,,lkkkkkkkkkKMKkkkl,,,.
                       .,lkkKMKkkl,,,,.                          .,,,,,lkKMKkl,.
                   .,lkKKkkl,,.                                          .,,lkKKkl.
                 .lKMKl,.                                                     .,lkkkl.
               .lKKl,.                                                            .lKKl.
             .lKKl.                                                                 .kMk.
             lMK,                                                                    .kMl
            ,KMl                                                                      lMl
            ,KMl                                                                     ,KMl
             lMK,                                                                  .lKKl.
             .lKKl.                                                              .lKMk.
               .lKKkl.                                                        .lkKKkl.
                 .lkKKkl,,.                                              .,lkkKKkl.
                    .,lkKMKkkl,,.                                 .,,,lkkKKkkl,.
                        .,,lkkKMKkkk,                            ,KMKkkl,,.
                              .,,kMMl                            lMMl
                  .,,,,.         lMK,                            .kMl       .,lkkkkl,.
                .lKMMMMKkl.      lMl                              lMK,     ,KMKl,,lkKKl.
              .lKKl,,,,lkKK,    .kMl                              lMMl    ,KKl.     ,KMl
              lMK,       lMk.   lMMl                              .kMl   .kMl        lMl
              lMk.       ,KMk,. lMMl                               lMl.,lKMK,       .kMl
              .kMk.       .lKMKkKMMl                               lMKKMKl,.    .,,lKKl.
               .lKKkkl.     .,lkKMMl                               lMMk,.     .lKMKkl.
                 .,,lKKl,.      lMMl                               lMMl    .,lKMKl.
                     .lKMKl,.   lMMl                               lMMl.,,lKMKl,.
                       .,lkKKkkkKMMl                               lMMKKKkkl,.
                           .,,lkKMMl                               lMKl,.
                                .kMl                               lMl
                                 lMl                              .kMl
                                 lMK,                             lMMl
                                 lMMl                             lMMl
                               .lKMMk.                            lMMKkl,.
                            .lkKKkKMMl                           .kMk,lkKKl.
                          .lKMKl. ,KMk.                          lMMl   .lKKl.
                         .kMKl.    lMMl                         .kMK,     .kMk.
                        .kMk.    .lKMMK,                        lMMMKl.    .kMK,
                       ,KMk.    ,KMKkKMk.                      ,KMk,lKKl.   .kMk.
                       lMk.    ,KMk. ,KMk.                    .kMk.  ,KMl    .kMk.
                     .lKMl    ,KMk.   ,KMl                   .kMk.    lMK,    ,KMK,
                    .kMKl.    ,KMl     ,KKl.                .kMk.     lMk.     .kMK,
                    lMK,       lMK,     ,KMk.              ,KMk.      lMl       lMMl
                    lMk.       lMK,      .lKKl.         .,lKKl.       lMk.     .kMK,
                    .kMKl.  .,lKK,         .lKKkl,,,,,,lKMKl.         .lKKkl,,lKMK,
                     .lkKKkkKMKl.            .lkkkkKMKkkkl.             .lkkkkkl,.
                        .,,,,,.                    .,.



'), nl.

dibuja_cuerpo('PE') :-
write('
                                      ..  .,ccc·..,;cc;.   .
                                .  .lO00koOWNXWN0XWWXXWKxx000x,  ..
                             ·dO0OkKMKdOWMMK;·kMMNKo.cNMMNxl0MXO0KKk;
                        .;::oKM0o0MMWc ·0MWc  dMWo.  cWM0, .OMMXxlOMNkllc,.
                       cKWNWMMWc ,KMX;  ;ko.  .:,    .ll.  ;XNk· .kMMWX0XWx.
                   ,ccxNMk,cXMWc  ·l:.                      ··   lWNk:..kMW0do:.
                 .xWWNWMMk. ,xx,                                 .,·  .kWMWKOKWX:
               ..dMMd·oXMN:                                           ·xOo,..oNMOc,.
             ,xKNWMMk. ·c:.                                                ·kWMWNNNKd.
            .OMKoxNMWd.                                                    ·ddc;.,kMWc
          .;xNMX: ·lo;                                                          ;kNMMKo;.
         :KWWWMMXc                                                             ·OKOkdxKWk.
        .kMXl;o0Kd.                                                             ..  .;OMX;
       .c0MWO·  .                                                                 .lKWMMNOc.
      :XWWWMMXl.                                                                  .:dollo0W0·
     .xMNo,cdx:                                                                       .,cOWK,
     .xMM0c.                                                                         ;0WMMMXl.
    ;ONMMMMXc                                                                        .;:cldKWO·
   .OMNd:loo·                                                                           .·;xWN:
    oWW0l·                                                                             lXWMMMk.
   .kWMMMN0,                                                                           .:cokXNx.
  .kMWOoodo.                                                                             ..,xWMl
  .oWWO:..                                                                             .xXNNWWO·
   .OMMMN0d.                                                                            ,lxKWWd.
   oNWKOOxl.                                                                             ...dNWl
  .xMWx;.                                                                              ,OK0OKNK;
   ·kWMWKOk:                                                                           .ckXMMO·
    cNMWX0k:                                                                              .dNNc
   .kMWk;.                                                                            :00kdONNc
    ,OWWX0OOx·                                                                        ·dXMMWk;
      oNMMNKx·                                                                       .. .dNNc
      oWWO;....                                                                     lXKkoxXWo
      ,0WN0000Ko.                                                                   ·xNMMNOc.
       .;OMMWXk;                                                                 .:,..cXMx.
         dMMO:..,:,                                                             .dMWKxxXMd
         ,OWWXKXWMX;                                                          .  .xWMWXkl.
           ,l0MMKd,  ..                                                      lKOl.·OMO,
             oMMOccdOKKc                                                     :XMMX0NNl.
             .oKNWMMMNx.  ..                                            .xOo. lWMKxo,
               ..cKMWx,;lONK;                                       ..  ·0MM0oOWX:
                  cKWWNWMMNd. .lo,                             .   :XNd. oMMNKKk;
                   .;cl0MMO::xXMMd  .cl.                ...  .d0o. :NMWOo0MK;..
                       .kNMWMMMMk..cKMMo  ;kO:  .dOk:  ·ONx. ,KMWd.oNMNKKKx·
                         ·:::xNMKkKWMMK,.lXMMo .xMMMO. oWMWl.oWMMWXNWk,...
                              ,dkOxd0MNO0WMMMk:kWMMMXodNMMMNKNNkllol;.
                                    .lkOxlcxNWWNOddONMWKo;cool,
                                            .,,·    ·,·.


'),nl.

dibuja_cuerpo('PO') :-
write('


                                          .,,,,,,,,.
                                     .,lkkkkkkkkkKMKkkl,.
                                  .lkkkl,,.      .,,,lkKKl.
                               .lkkkl.                 .lKKl.
                             .lKKl.                      .lKKl.
                            .kKl.                          .kMk.
                          .lKK,                             .lKk.
                         .kMk.                                ,Kk.
                        .kMk.                                  lMk.
                       .kMk.                                   .kMl
                       lMk.                                     lMk.
                      ,KK,                                      .kMl
                      lMl                                        lMl
                     ,Kk.                                        lMK,
                     lMl                                         .kMl
                     lMl                                          lMl
                    ,KMl                .,.                       lMl        .,lkkkl.
                    lMk.              .lKK,                       lMl       .kKl,,lKk.
                  .lKMl              .kMK,                        lMl      .kMl    lMl
                 .kKKMK,            .kMk.                        ,KMl      lMk.    lMl
                 lMllMMl            lMK,                         lMk.     ,Kk.     lMl
                ,Kk.lMMl           .kMl              .ll.        lMl     ,KK,      lMl
                lMl .kMl           lMMl            .lKKl.       .kMl   .lKk.      ,KK,
               ,KMl  lMk.          lMMl         .lkKMk.         lMk.  .kKl.       lMl
               .kMl  lMMl          ,KMk.     .,lKKkl,.          lMl .lKK,        .kMl
                ,KKl,lKMl           ,KMKkllkkKKkl.             ,KMklKKl.         lMk.
                 .lkkkKMK,           .,lkkkkl,.                lMMKkl.          .kMl
                      .kMk.                                    ,kl.            .kMk.
                       .kMl                                                    lMk.
                        ,KK,                                                  ,KK,
                         ,KK,                                                ,KK,
                          ,KK,                                             .lKK,
                           ,KK,                                           .kMk.
                            ,KKl.                                       .lKKl.
                             .kMk.                                     .kMk.
                              .lKKl.                                .,lKKl.
                                .lKKl.                            .lKKkl.
                                  .lKKkl.                      .lkKKl.
                                    lMMMKkl,,.            .,,lkkkl,.
                                    lMMk,kMMMKkkkkkkkkkkkkKKkl,.
                                    lMMl lMMk,,,,lkKMKkkKMk.
                                    lMMl lMMl      lMl  lMl
                                    ,KMl ,KMl      lMl  lMl
                                    ,KK,  lMk.  .lkKK,  ,KKl.
                                   ,KMk,,,lKMK, lMMMk,,,,kMMl
                                   ,kkkkkkkkkk, ,kkkkkkkkkkl.

'),nl.

dibuja_cuerpo('RE') :-
write('


                                        .,,,,lkkkkkkkl,,,,.
                                   .,lkkKMKkkkkkkkkkkkkkKMKkkkl,.
                               .,lkKKkkl,,.             .,,lkkKMKkl.
                            .,lKMKl,.                         .,lKMKkl.
                          .lKMKl,.                               .,lKMKl.
                        .lKMKl.                                     .lKMKl.
                       ,KMKl.                                         .lKMKl.
              .,,,,,,,lKKl.                                             .lKMKkkkkkkl,,.
          .,lkKMKkkKMMMk.                                                 ,KMMKkkkkkKMKl,.
        .lKKkl,,.  lMMk.                                                   .kMK,    .,lKMKl.
      .lKKl.      ,KMk.                                                     .kMK,      .lKMk.
     .kMk.     .,lKMk.                                                       .kMKkl,.    .kMk.
     lMk.    .lKMMMK,                                                         lMMMMMK,    .kMl
    ,KMl    ,KKllKMl                                                          .kMk,lKK,    lMK,
    lMk.    lMl ,KMl                                                           lMK, lMl    lMMl
    lMl     lMl lMK,                                                           lMMl lMl    lMMl
    lMl     lMl lMl                                                            lMMl lMl    lMMl
    lMl     lMl lMk.                                                           lMMl lMl    lMMl
    lMk.    lMl lMMl                                                           lMK, lMl    lMMl
    lMMl    lMl ,KMl                                                           lMl  lMl    lMMl
    lMMl    lMl  lMk.                                                         ,KMl .kMl    lMMl
   .kMK,    lMK, ,KMl                                                        .kMk..kMK,    ,KMk.
   lMK,     .kMK, lMK,                                                       lMK, lMMl  .,. .kMl
   lMk,,lkkl,kMMl .kMK,                                                     ,KK,  lMMklkKMKkkKMl
   ,KMMKkkkKMMMk.  .kMK,                                                  .lKK,   .lKKkl,,lkKKl.
    .,,.   .,,,.    .lKKl.                                               .kMK,      ..      ..
                      ,KMK,                                            .lKKl.
                       .lKKl.                                        .lKMK,
                         .kMKkl.                                   .lKMMk.
                          lMMMMKl,.                             .lkKMKKMk.
                         ,KMk,lkKMKkl,.                    .,,lkKMKl,.lMMl
                         lMK,   .lkkKMKkkkl,,,,,,,,,,,,,lkkKMMKkl,.   .kMl
                        .kMl        .,lkkKMMMMMMMMMMMMMMMKkl,,.        lMk.
                        lMMl            ,KKl,,,,,,,,,,,kMK,            lMMl
                        lMMl           ,KMl            .kMK,           .kMl
                        lMK,          .kMK,             .kMk.           lMl
                        lMl           lMMl               ,KMl           lMl
                        lMl           lMk.                lMk.          lMl
                        lMK,         ,KMl                 ,KMl         .kMl
                        lMMl         lMk.                  lMk.        lMMl
                        .kMk.        lMl                   lMMl        lMK,
                     .,,lKMMl       .kMl                   lMMl       .kMMKkl,.
                    ,KMKkl,,.       lMK,                   .kMk.       .,,lkKMl
                    lMKl,,,,,,,,,,lkKK,                     ,KMKkl,,lkkkkkkkKMl
                    ,kKMMMMKkKMKkkkkl.                       .,lkkkkkkkkkkkkkl.
                      .,,,,. .,.

'),nl.

dibuja_cuerpo('SA') :-
write('

                                          .,,lkkkkkkkl,.
                                       .lkKKkkl,,,,,lkKKkl.
                                      ,KKkl.          .,lKK,
                                     ,KK,                ,KK,
                                    ,KK,                  ,KK,
                                    lMl                    lMl
                                    lMl                    lMl
                                    lMl                    lMl
                                   ,KMl                    lMk.
                                   lMK,                    lMMk.
                                .,lKMl                     .kMMKl,.
                              .lKKKMMl                      lMMKkKKl,.
                           .lkKKl.lMk.                      ,KMl .lKMKl.
                        .,lKKl,. ,KMl                        lMK,  .,lKKkl.
                      .lKKkl.   .kMk.                        .kMk.    .,lKKkl.
                   .,lKKl.      lMK,                          ,KMk.      .,lKKkl.
                 .lKKkl.       ,KMl                            ,KMk.        .lkKKl,.
              .lkKKl.         ,KMk.                             ,KMk.          .lkKKl,.
            .lKKl,.          ,KMk.                               ,KMk.            .lKMk.
           ,KKl.          .,lKMk.                                 ,KMKkl,,,.        .kMl
           lMl     .,,lkkkKMMKl.                                   ,KMMKkKMKkkl,,,,,lKK,
           ,KKkllkkKKkkkllKMK,                                      .lKK,.,,,lkkkKMKkl.
            .,lkkl,,.   .kMK,                                         ,KKl.      .,.
                       .kMk.                                           ,KMk.
                      .kMk.                                             ,KMl
                      lMk.                                               ,KK,
                     ,KMl                                                 lMl
                     lMk.                                                 lMK,
                     lMl                                                  lMMl
                     lMl                                                  lMMl
                     lMl                                                  lMK,
                     lMk.                                                 lMl
                     .kMl                                                ,KMl
                      lMK,                                              .kMk.
                      .kMk.                                            .kMk.
                       .kMK,                                          .kMk.
                        .lKKl.                                      .lKMk.
                          lMMKl.                                  .lKMMk.
                          lMKKMKl.                              .lKMKKMK,
                         ,KMl.lKMKkl,.                       .lkKMKl..kMl
                         lMk.  .,lkKMKkl,,.            .,,lkkKMKl,.   ,KK,
                        ,KK,       .,lKMMMKkkkkkkkkkkkkKMMMKkl,.       lMK,
                       ,KMl          .kMk,,,,,lkkkkl,,,,,lKKl.         .kMK,
                      .kMk.        .lKKl.                 ,KMk.         .kMk.
                      lMMl        .kMK,                    .lKKl.        lMMl
                      ,KMk.    .lkKKl.                       .lKKl,.    .kMk.
                       ,KMKkkkkKKkl.                           .lkKKkkkkKKl.
                        .,lkkkl,.                                 .,lkl,,.

'),nl.

dibuja_cuerpo('TE') :-
write('


                              .,.                              .,.
                          .. .kMK,                            .kMK, ..
                          lKkKMMMK,           ,k,            ,KMMMKkKl
                      ,kkkKMKkkllKK,        .lKMK,          ,KKllkkKMKkkkl.
                      ,KMMKk,    lMl        lMKkKKk,        lMl    ,kkKMK,
                       ,KMk.    .kMl       ,KK, ,KMK,       lMk.    .lKK,
                        .lKKl,,.,KMk.     ,KK,   ,kKK,     .kMK,.,,lKMk.
                          .lkKMk..kMk.   ,KK,      lMK,   .kKl.,KMKkl,.
                             .kMk..kMK, ,KK,       .kMK, ,KK, .kKl.
                              .kMk..lKKkKK,         .kMKkKK, ,KK,
                               .kMk. ,KMK,           .kMMk. ,KK,
                                .kMk.,KK,             .kMk.,KK,
                      ,kl.       .kMKKK,               .kMKKK,        .lk,
                  ,kllKMMk.       .kMMl                 ,KMMl        .kMMk,,l,
              ,l,,kMMMMkkMk.      .kMk.                  ,KMl       .kKKMMMMMl.,,.
              ,KMMMMk,,..kMl     .kMk.                    ,KK,     .kMl.ll,kMKKMMl
               ,KMk,.    lMl    .kMk.                      ,KK,    lMK,    .,kMKl.
                ,KKl,.  .kMl   .kMk.                        ,KK,   .kMl    .lKK,
                 .lkKKkl.,KKl..kMk.                          lMk. .lKK,.lkkKKl.
                    .,kMk.,KMKKMk.                           .kMk,kMk..kMk,,.
                      .kMk..kMMk.                             .kMMKl..kMk.
                       .kMk,kMk.                               .kMk.,KMk.
                        .kMMMK,                                 .kMKKKl.
              .ll.       .kMK,                                   ,KMK,         ..
          .,,,kMMk.      ,KK,                                     ,KK,       .lKK,
      .,,.lMMMMMMMk.    ,KK,                                       ,KK,     .kMMMKkkk,
      ,KMKKMklkl,kMk.  ,KK,                                         ,KK,   .kMkkMKKMMklkk,
       ,KMKk,    lMMl ,KK,                                           lMK,  lMk..,.,KMMMMk.
        ,KKl.    lMk.,KK,                                            .lKk. lMk.    .kMKl.
         .lKKkkl.,KKkKK,                                               lMk,kMK,.,,,lKK,
           .,lKMk.,KMK,                                                .kMMMk..kMKkkl.
              .kMklKMl                                                  .kMMl.kMk.
               .kMMKl.                                                   .kMKKKl.
                lMMl                                                      .kMMl
               .kMk.                                                       .kMl
              .kMk.          .,,,,,.                                        ,KK,
             .kMk.        .lkKMKkKMKkl.                 .lkkkkkkkl,.         ,KK,
            .kMk.       .lKKkl,. .,lkKKl.             .lKKkl,,,,lkKKl.        ,KK,
           .kMk.       .kMk.         ,KMl            ,KMk.        .kMK,        ,KK,
          .kMMKkkkkkkkkKMMl           lMKl,,,,,,,,,,,kMk.          .kMk.        lMK,
          .,,,lkkkkkkkkKMMl           lMKkkkkkkkkkkkkKMl            lMMKkkkkkkkkKMMl
                       .kMk.         .kMl            lMk.          .kMk,,,,,,,,,,,,.
                        .kMk,.     .lKMk.            .lKKl.       .kMk.
                         .lkKKkkkkkKKkl.               ,KMKl,,,,lkKKl.
                            .,,ll,,,.                   .,lkkkkkkl,.


'),nl.


dibuja_cuerpo('TU') :-
write('

                                              .,,lkl,,.
                                            .lKKkkkkkKKl.
                                          ,kKKl.     .lKKl.
                                        .lKKl.         .lKKl.
                                      .lKMk.             .kMK,
                                     .kMKl.               .lKKl.
                                    .kMk.                   .kMk.
                                   ,KMk.                     .lKK,
                                  ,KMk.                        ,KKl.
                                 ,KMk.                          ,KMk.
                                ,KMk.                            ,KMk.
                               .kMk.                              ,KMl    .,,,,,,,,lkl,,,,,,.
        .,,lkkkkkkkkkkkkkkkl,,lKMk.                                ,KKkkkkKMKkkkkkkkkkkkkkkKKkl,.
     .lkKKkkl,,,,,,,,,,,,lkkkkKKl.                                  .ll,,,,,.              .,lKMk.
    ,KKl,.                    ..                                                              lMK,
    lMk.                                                                                     ,KMl
    .kMKl.                                                                                 .lKKl.
     .lKMKl.                                                                            .lkKKl.
       .lkKKl,.                                                                      .,lKKkl.
          .lkKKkl.                                                                .lkKKkl.
             .lkKKkl,.                                                        .lkkKKl,.
                .,lkKKkl,,.                                               .,lkKKkl,.
                    .,lkKMK,                                              lMMk,.
                        lMMl                                              .kMl
                        lMk.                                               lMK,
                       ,KMl                                                .kMl
                       lMk.                                                 lMk.
                      .kMl                                                  ,KMl
                      lMK,                                                   lMk.
                      lMl                                                    lMMl
                      lMl                                                    .kMl
                     ,KMl                                                     lMk.
                     lMMl                                                     lMMl
                     lMk.                                                     ,KMl
                     lMl                           ..                          lMl
                     lMl                        .lkKKl.                        lMl
                     lMl                      .lKKkkkKKl.                      lMl
                     lMl                    .lKKl.   .lKKkl.                   lMl
                     lMl                 .,lKKl.       .lKMKl.                 lMl
                     lMK,              .lKMKl.           .lkKKl,.             .kMl
                   .,kMMl           .,lKMKl.                .lKMKl.           ,KMKkl.
                  ,KKkkl.         .lKMKl,.                    .,lKKkl,.        .,,lKK,
                 ,KMl          .lkKKkl.                          .,lKMKl,,.       .kMl
                 .lKKl,,,,,,lkkKKkl.                                .,lkKMKkkkkkkkKKl.
                   ,kkkKMKkkkl,,.                                       .,,,lkkkkl,.
                       .,.


'),nl.

%Ojos

dibuja_ojos('CA') :-
write('

                                                                               .,,,,,.
            .,,,,,,,,.                                                    .lkkkKMMMMMKkkl.
        .,lkKMMMMMMMMKkl.                                              .lkKMMMMMMMMMMMMMMKkl.
      .lKMMMMMKkkkKMMMMMKk,                                          .lKMMMMKkl,,,,,,,lKMMMMK,
    .lKMMMKl,,.   .,,lKMMMKl.                                       .kMMMMKl.          .,kMMMKl.
   .kMMMKl.           .lKMMMk.                                     .kMMMKl.              .lKMMMl
   lMMMK,               ,KMMMk.                                    lMMMMl                  lMMMK,
  ,KMMK,         .,.     lMMMMl                                    lMMMk.   .,lkl,.        lMMMMl
  lMMMl        ,kKMKl.   lMMMMl                                    lMMMl   .kMMMMMK,       lMMMMl
  lMMMk.      ,KMMMMMl   lMMMMl                                   .kMMMK,  ,KMMMMMK,      .kMMMK,
  ,KMMMl      .kMMMMK,  .kMMMMk.                                 .kMMMMMk.  ,kKMKk,      .kMMMMl
   lMMMKl.     .,lkl.  .kMMMMMMKl.                             .lKMMMMMMMKl.  .,.      .lKMMMKl.
   .lKMMMKl.        .,lKMMMMMMMMMk.                           .kMMMMMMMMMMMKl,,.   .,,lKMMMMK,
     ,KMMMMKkkl,,lkkKMMMMKkKMMMMMMK,                         ,KMMMMMMKllKMMMMMMKkkkKMMMMMKkl.
      .,lKMMMMMMMMMMMMKkl. .kMMMMMMK,                       ,KMMMMMMk.  .,lkKMMMMMMMMMKkl.
         .,lkkkkkkkkl,.     .kMMMMMMK,                     ,KMMMMMMk.       .,,,,,,,,,.
                             .kMMMMMMK,                   ,KMMMMMMk.
                              .kMMMMMMk.                 .kMMMMMMk.
                               ,KMMMMMMl                 lMMMMMMK,
                                ,KMMMMMK,               ,KMMMMMMl
                                 lMMMMMMk.              lMMMMMMk.
                                 ,KMMMMMMl             ,KMMMMMMl
                                  lMMMMMMl             lMMMMMMk.
                                  lMMMMMMk.           .kMMMMMMl
                                  ,KMMMMMMl           lMMMMMMMl
                                   lMMMMMMl           lMMMMMMK,
                                   lMMMMMMl           lMMMMMMl
                                   lMMMMMMl           lMMMMMMl
                                   lMMMMMMl           lMMMMMMl
                                   lMMMMMMl           lMMMMMMl
                                   .lKMMKl.           .lKMMKl.
                                     .,,.               .,,.

                                                                                                   ')
,nl.


dibuja_ojos('GA') :-
write('



          .,,,,,,,,,,,,,,,,,,,,,,,,,.                        .,,,,,,,,,,,,,,,,,,,,,,,,,.
         ,KMMMMMMMMMMMMMMMMMMMMMMMMMk.                      ,KMMMMMMMMMMMMMMMMMMMMMMMMMK,
         lMMKkkkkkkkkkkkkkkkkkkkKMMMK,                      lMMMKkkkkkkkkkkkkkkkkl,,kMMMl
        ,KMMl                   lMMMl                       lMMMl                   lMMMl
        lMMMl                   lMMMl                       lMMMl                   lMMMl
        lMMMl        .,,.       lMMMl                       lMMMl       .,,,.       lMMMl
.,,,,,,,kMMMl      .lKMMKl.     lMMMk,,,,,,,,,,,,,,,,,,,,,,,kMMMl     .lKMMMK,      lMMMk,,,,,,,,.
KMMMMMMMMMMMl      lMMMMMMl     lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl     lMMMMMMK,     lMMMMMMMMMMMMK,
kkkkkkkkKMMMl      ,KMMMKl.     lMMMKkkkkkkkkkkkkkkkkkkkkkkkKMMMl     .lKMMMKl.     lMMMKkkkkkkkl,.
        lMMMl       .,,,.       lMMMl                       lMMMl       .,,,.       lMMMl
        lMMMl                   lMMMl                       lMMMl                   lMMMl
        lMMMl                   lMMMl                       lMMMl                   lMMMl
        lMMMk,,,,,,,,,,,,,,,,,,,kMMMl                       lMMMk,,,,,,,,,,,,,,,,,,,kMMMl
        lMMMMMMMMMMMMMMMMMMMMMMMMMMMl                       lMMMMMMMMMMMMMMMMMMMMMMMMMMMl
        .lkkkkkkkkkkkkkkkkkkkkkkkkxl.                       .lkkkkkkkkkkkkkkkkkkkl,,,,,,.




'), nl.

dibuja_ojos('LE') :-
write('




           .,,,,,.                           .,,,,,,,,,.                         .,,lkkkl,,.
       .lkkKMMMMMKkkl.                   .lkkKMMMMMMMMMKkl,.                 .lkkKMMMMMMMMMKkl,.
    .lkKMMMMMKkKMMMMMKkl.              .lKMMMMKkkkkkkkKMMMMKl.             .lKMMMMKkkl,lkkKMMMMK,
  .lKMMMKkl,,. .,,lkKMMMK,           .lKMMMKl,.       .,lKMMMK,           ,KMMMKl,.       .,lKMMKl.
 .kMMMKl.           .lKMMKl.         lMMMKl.             .kMMMK,         ,KMMMk.             .kMMMk.
 lMMMK,      .,.      ,KMMMl        ,KMMK,     .,,,,,.    .kMMMK,        lMMMk.    .lkkl,.    .kMMMl
,KMMMl     ,kKMKk,     lMMMk.       lMMMl     ,KMMMMMk.    .kMMMl       ,KMMMl     lMMMMMl     lMMMl
lMMMMl    .kMMMMMl     lMMMMl       lMMMl     lMMMMMMK,     lMMMl       ,KMMMl     lMMMMMl     lMMMl
lMMMMl     ,KMMMK,     lMMMK,       lMMMk.    .lKMMKk,     ,KMMMl        lMMMl     .lkkkl.     lMMMl
.kMMMk.     .,,,.     ,KMMMl        ,KMMMk.     .,,.      .kMMMk.        ,KMMKl.             .lKMMK,
 ,KMMMKl.           .lKMMMk.         ,KMMMKl.           .lKMMMK,          ,KMMMKl.         .lKMMMk.
  .lKMMMKl,.    .,,lKMMMKl.           ,KMMMMKl,,,,,,,,lkKMMMKl.            .lKMMMKkl,,,,,lkKMMMKl.
    ,kKMMMMKkkkkKMMMMMKl.              .lKMMMMMMMMMMMMMMMMKl.                .lKMMMMMMMMMMMMKkl.
      .lkKMMMMMMMMKkkl.      .,,,,.      .,lkkKMMMMMMKkkkl.     .,,,,,,,.      .,lkkkkkkkkl,.
         .,,,,,,,,.     .,lkkKMMMMKkkl,.      .,,,,,,.      .lkkKMMMMMMMKkl,.
                      .lKMMMMMMMMMMMMMMKl,.               .lKMMMMMKkkkKMMMMMKl.
                    .lKMMMKkl,,,,,,lkKMMMMk.            .lKMMMKl,,.   .,,lKMMMKl.
                   ,KMMMKl.          .lKMMMK,          ,KMMMKl.           .lKMMMk.
                  .kMMMk.      ..      .kMMMK,         lMMMK,     .,,,.     .kMMMk.
                  lMMMk.    .lkKKkl.    ,KMMMl        .kMMMl     ,KMMMK,     lMMMMl
                  lMMMl     lMMMMMMl     lMMMl        lMMMMl     lMMMMMl     lMMMMl
                  lMMMl     ,KMMMMk.    .kMMMk.       ,KMMMl     ,KMMMK,     lMMMK,
                  ,KMMK,     .,ll,.    .kMMMMl         lMMMK,     .,,,.     ,KMMMl
                   lMMMKl.            .kMMMMk.         .kMMMKl.           .lKMMMk.
                   .lKMMMKl,.      .,lKMMMKl.           .kMMMMKl,,.   .,,lKMMMKl.
                     .lKMMMMKkkkkkkKMMMMMk.              .,lKMMMMMKkkkKMMMMMKl.
                       .lkKMMMMMMMMMMMKl,.                  .lkkKMMMMMMMKkl,.
                          .,,lkkkklll,.                         .,,,,,,,.
                                   ..



'), nl.

dibuja_ojos('MA') :-
write('

                                                              .,.                           .,,.
  .,ll.                         .lkk,                        ,KMKl.                        .kMMK,
  lMMMK,                       ,KMMMl                        .kMMMk.                      .kMMMk.
  .kMMMK,       .,,,,,,.      ,KMMMk.                         .kMMMK,   .,,,lkkkkkl,,,.  .kMMMk.
   .kMMMK, .,lkkKMMMMMMKkkl,.,KMMMk.                           .lKMMKllkKMMMMMMMMMMMMMKl,kMMMk.
    .lKMMKkKMMMMKkkkkkkKMMMMKKMMMk.                              ,KMMMMMMKkl,,,,,,,lkKMMMMMMk.
      lMMMMMKkl,.      .,lkKMMMMk.                               .kMMMKl,.           .,lKMMMk.
     .kMMMKl.              .lKMMKl.                             .kMMMk.                 .lKMMk.
    .kMMMk.                  .kMMMk.                           .kMMMk.      .,,,,.        ,KMMk.
    lMMMk.      .lkkkkl.      .kMMMl                           lMMMk.     .lKMMMMKk,       lMMMl
   ,KMMK,     .lKMMMMMMK,      lMMMk.                         .kMMMl      lMMMMMMMMK,      lMMMl
   lMMMl      lMMMMMMMMMK,     lMMMMl                         lMMMMl      lMMMMMMMMMl      lMMMl
   lMMMk.     ,KMMMMMMMMk.     lMMMMl                         .kMMMl      ,KMMMMMMMK,      lMMMl
   .kMMMl      ,KMMMMMKl.      lMMMk.                          lMMMk.      .lkkkkkl.      .kMMMl
    lMMMk.      .,,,,,.       ,KMMK,                           .kMMMk.                   .kMMMk.
    .kMMMK,                 .lKMMK,                             .kMMMKl.               .lKMMKl.
     .lKMMKkl.            .lKMMMK,                               .lKMMMKl,.         .,lKMMMK,
       .lKMMMKkl,,,,,,,,lkKMMMKl.                                  .lKMMMMKkkkkkkkkkKMMMKl,.
         .lkKMMMMMMMMMMMMMMKkl.                                      .,lkkKMMMMMMMMMKkkl.
            .,lkkkkkkkkkkl,.                                              .,,,lkl,,,.




'), nl.

dibuja_ojos('NO') :-
write('



                                        .,,,,,,,,,,,,,,,,.
                                .,,lkkkkKMMMMMMMMMMMMMMMMKkkkkl,,,.
                           .,,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,,.
                       .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
                    .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                 .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
              .,lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
            .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
          .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.       .,lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
        .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.             .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
      .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,                 .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
    .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl                   .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
   ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl                    lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
   ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl                    lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
    .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.                  ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
      .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.                ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
        .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.            .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
          .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,,,,,,,,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
            .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
               .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
                 .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                     .,lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                        .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                            .,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkl,.
                                  .,,,lkkkkkkkkkkkkkkkkkkkl,,,.




'), nl.

dibuja_ojos('PU') :-
write('
                               .,,,.                      .,lkl,.
                             .lKMMMKl.                    lMMMMMKl,.
                          .,lKMMMMMMK,                    ,KMMMMMMMKkl.
                        .lKMMMMMMMKl.                      .lKMMMMMMMMKkl.
                     .,lKMMMMMMMKl.                          .,lKMMMMMMMMKkl.
                   .lKMMMMMMMMKl.                               .lkKMMMMMMMMKkl.
                 .lKMMMMMMMKl,.                                    .lkKMMMMMMMMKl,.
              .lkKMMMMMMMKl..,,,.                             .lkkkl,..lkKMMMMMMMMKl,.
            ,kKMMMMMMMKkl..lKMMMKl.                          .kMMMMMMk.  .lKMMMMMMMMMKl,.
         .lkKMMMMMMMKl.   lMMMMMMMK,                         lMMMMMMMMl    .,lKMMMMMMMMMKl.
       .lKMMMMMMMMKl.     lMMMMMMMMl                         lMMMMMMMMl       .lkKMMMMMMMMKkl.
    .,lKMMMMMMMKkl.       lMMMMMMMMl                         ,KMMMMMMMl          .lkKMMMMMMMMKkl.
  .lKMMMMMMMMKl.          .kMMMMMMK,                          .lKMMMKl.             .lKMMMMMMMMMl
 ,KMMMMMMMKkl.             .,lkkkl.                             .,,,.                 .,lKMMMMMK,
 lMMMMMMKl.                                                                             .,lkkkl.
 .lkKKkl.                                                                               ..
    ..
'), nl.

dibuja_ojos('SO') :-
write('



                                           .,,,lkkkkl,,,.
                                        .lkKMMMMMMMMMMMMKkl,.
                                      ,kKMMMMMMMMMMMMMMMMMMMKl.
                                    .lKMMMMMMMMMMMMMMMMMMMMMMMK,
                                   ,KMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                  ,KMMMMMMMMMKkl,,,,lkKMMMMMMMMMMl
                                  lMMMMMMMMMk.        .lKMMMMMMMMk.
                                 ,KMMMMMMMMk.           lMMMMMMMMMl
                                 lMMMMMMMMMl            lMMMMMMMMMl
                                 .kMMMMMMMMK,          .kMMMMMMMMK,
                                  lMMMMMMMMMKl.      .lKMMMMMMMMMl
                                  .kMMMMMMMMMMKkkkkkkKMMMMMMMMMMK,
                                   .kMMMMMMMMMMMMMMMMMMMMMMMMMMk.
                                    .lKMMMMMMMMMMMMMMMMMMMMMMKl.
                                      .lkKMMMMMMMMMMMMMMMMKkl.
                                         .,lkkKMMMMMMMKkl,.
                                              .,,,,,,,.





                                                                             .,,,,,,,.
             .,,,lkkl,,,.                                               .,lkkKMMMMMMMKkl,.
         .,lkKMMMMMMMMMMKkkl.                                         .lKMMMMMMMMMMMMMMMMKkl.
       .lKMMMMMMMMMMMMMMMMMMKl.                                     .lKMMMMMMMMMMMMMMMMMMMMMK,
      ,KMMMMMMMMMMMMMMMMMMMMMMKl.                                  ,KMMMMMMMMMMMMMMMMMMMMMMMMKl.
    .lKMMMMMMMMMMMMMMMMMMMMMMMMMk.                                ,KMMMMMMMMMMKkkkkKMMMMMMMMMMMk.
   .kMMMMMMMMMMKl,,,,lKMMMMMMMMMMk.                              ,KMMMMMMMMMKl.    .,lKMMMMMMMMMl
   lMMMMMMMMMKl.      .lKMMMMMMMMMl                              lMMMMMMMMMk.         ,KMMMMMMMMk.
   lMMMMMMMMMl          .kMMMMMMMMl                              lMMMMMMMMMl           lMMMMMMMMMl
   lMMMMMMMMK,           lMMMMMMMMl                              lMMMMMMMMMl          .kMMMMMMMMK,
   lMMMMMMMMMk.         ,KMMMMMMMMl                              lMMMMMMMMMKl.       ,KMMMMMMMMMl
   ,KMMMMMMMMMk,.    .,lKMMMMMMMMMl                              .kMMMMMMMMMMKl,,,,lkKMMMMMMMMMK,
    ,KMMMMMMMMMMKkkkkKMMMMMMMMMMMk.                               .kMMMMMMMMMMMMMMMMMMMMMMMMMMK,
     ,KMMMMMMMMMMMMMMMMMMMMMMMMKl.                                 .lKMMMMMMMMMMMMMMMMMMMMMMKl.
      .lKMMMMMMMMMMMMMMMMMMMMMK,                                     .lKMMMMMMMMMMMMMMMMMMKl.
        .lKMMMMMMMMMMMMMMMMKl,.                                        .,lkKMMMMMMMMMMMKkl.
          .,lkkKMMMMMMKkkl,.                                               .,,lkkkkl,,,.
               .,,,,,,.






'), nl.

dibuja_ojos('SU') :-
write('





       .,,.          ..
     .lKMMKl.     .lkKKkl.      ,kkkkl.      .lkkkkl.      .lkkl,.      .,lkl.       .,ll,.
     lMMMMMMK,   .kMMMMMMK,    ,KMMMMMK,    ,KMMMMMMk.    ,KMMMMMk.    ,KMMMMKl.    .kMMMMK,
    ,KMMMMMMMk. .kMMMMMMMMk.  ,KMMMMMMMk.  ,KMMMMMMMMk.  ,KMMMMMMMk.  ,KMMMMMMMl   .kMMMMMMK,
    lMMMMMMMMMk.lMMMMMMMMMMk.,KMMMMMMMMMk.,KMMMMMMMMMMk.,KMMMMMMMMMl .kMMMMMMMMK, .kMMMMMMMMl
   ,KMMMMMMMMMMKKMMMMMMMMMMMKKMMMMMMMMMMMKKMMMMMMMMMMMMKKMMMMMMMMMMKlkMMMMMMMMMMKlkMMMMMMMMMK,
  .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
  lMMMMMMMMMMMMMMMMMMkkMMMMMMMMMMMkkMMMMMMMMMMMKKMMMMMMMMMMMMKKMMMMMMMMMMMKKMMMMMMMMMMMMMMMMMK,
 .kMMMMMMkkMMMMMMMMMk..kMMMMMMMMMK,,KMMMMMMMMMK,.kMMMMMMMMMMK,.kMMMMMMMMMK,,KMMMMMMMMMKKMMMMMMl
 lMMMMMMK,,KMMMMMMMk.  ,KMMMMMMMK,  ,KMMMMMMMK,  ,kKMMMMMMMK,  ,KMMMMMMMK,  ,KMMMMMMMK,lMMMMMMk.
 ,KMMMMK,  ,KMMMMMk.    ,KMMMMMK,    ,KMMMMMK,     ,KMMMMMK,    ,KMMMMMK,    ,KMMMMMK, ,KMMMMMK,
  .,lkl.    .lkkl,.      .lkkkl.      .lkkkl.       .lkkkl.      ,kKMKk,      ,kKMKk,   ,kKMKk,
                                                                   .,.          .,.       .,.








'), nl.

dibuja_ojos('TI') :-
write('
                     .,,,,,.
               .,lkkkKMMMMMKkkkl,.
            .lkKMMMMMMMMMMMMMMMMMKkl.
         .lkKMMMMKkl,,,,,,,,,lkKMMMMKkl.
       .lKMMMMKl,.             .,lKMMMMK,                              .,lkkkkkkkkkl,.
      .kMMMKl,.                   .lKMMMKl.                         .lkKMMMMMMMMMMMMMKkl.
    .lKMMMK,                        .lKMMMK,                      ,kKMMMMKkl,,,,lkkKMMMMKl.
   .kMMMKl.                           .kMMMK,                   .lKMMMKl,.         .lkKMMMKl.
  .kMMMK,                              .kMMMK,                 ,KMMMKl.               .kMMMMk.
  lMMMMl     .,,,,,,,,,,,,,,,,,,,,,,,,,,kMMMMK,               ,KMMMk.                  .lKMMMk.
 ,KMMMMKkkkkkKMMMKkkkkkkkkkkkkkkkkkkkkkkkkKMMMk.             ,KMMMk.                     ,KMMMk.
 lMMMk,,,,,,,,,,,.                        lMMMMl            .kMMMk.                       lMMMMl
,KMMMl                          .,lkkl.   .kMMMl            lMMMK,                        .kMMMK,
lMMMk.                         ,KMMMMMKl.  lMMMK,           lMMMl                          lMMMMl
lMMMl                          lMMMMMMMMl  lMMMMl          ,KMMMl                          lMMMMl
lMMMl                          lMMMMMMMK,  lMMMMl          lMMMMl                          lMMMMl
lMMMl                          .lkkKKkl.   lMMMMl          lMMMMl                          lMMMMl
lMMMl                              ..      lMMMMl          .kMMMl     .lkkkkkl.            lMMMMl
lMMMk.                                     lMMMk.           lMMMK,    lMMMMMMMK,          ,KMMMk.
lMMMMl                                    .kMMMl            ,KMMMk.   lMMMMMMMMl         .kMMMK,
.kMMMk.                                   lMMMK,             ,KMMMk.  ,KMMMMMKl.        .kMMMMl
 lMMMMl                                  ,KMMMl               lMMMMk.  .lkkkl.         .kMMMMk.
 .kMMMK,                                .kMMMk.               .lKMMMKl.              .lKMMMKl.
  .kMMMK,                              .kMMMK,                  ,KMMMMKl,.        .,lKMMMMk.
   .kMMMK,                            ,KMMMK,                    .lKMMMMMKkkkkkkkkKMMMMKkl.
    .kMMMKl.                        .lKMMMK,                       .,lkKMMMMMMMMMMMMKkl.
     .lKMMMKl.                    .lKMMMKl.                            .,lkkkkkkkkl,.
       .lKMMMKl,.              .,lKMMMKl.
         .lKMMMMKkl,,,,,,,,,,lkKMMMMKl.
           .lkKMMMMMMMMMMMMMMMMMMKkl.
              .,lkkKMMMMMMMMKkkl,.
                   .,,,,,,,,.


'), nl.

dibuja_ojos('TO') :-
write('


                                                                 .,,,,,,,,,,,,,,,,,,,,,,,,,,.
       .lkkkkkkkkkkkkkkkkkkkkkkkkl.                              ,KMMMMMMMMMMMMMMMMMMMMMMMKl.
        ,KMMMMMMMMMKkkkKMMMMMMMMK,                                ,KMMMMMMMMk,,,kMMMMMMMMK,
         .kMMMMMMMk.   lMMMMMMMk.                                  .kMMMMMMk.   .kMMMMMMk.
          .lKMMMMk.    .kMMMMKl.                                    .kMMMMMl     lMMMMKl.
            ,KMMMk.    .kMMMK,                                       .lKMMMl     lMMMK,
             .kMMMk.  .kMMMk.                                          ,KMMKl. .lKMMK,
              .lKMMKkkKMMKl.                                            .kMMMKkKMMMk.
                ,KMMMMMMK,                                               .lKMMMMMKl.
                 .kMMMMK,                                                  .kMMMK,
                  .lKMk.                                                    .lKk.
                    ,l.                                                       ..




'), nl.

%Narices

dibuja_nariz('CA') :-
write('


                                       .,,,lkkkkkkkkkkkkkkkkl,,,.
                                  .,lkkKMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                               .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                            .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                          .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                        .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKk,
                      .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                    .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                   .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
                  .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                 .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
                lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
               .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
              .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
              .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
               lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
               ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                lMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
                ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
                 ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                  ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                   ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                    ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.
                     .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                       .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                         .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                          .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                              .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
                                 .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                                     .,,lkkkkKMMMMMMMMMMMMKkkl,,,.
                                             .,,,,,,,,,,,,.










'), nl.

dibuja_nariz('CO') :-
write('
                                                                     .,.
                         .,,,,,,,,,,,.                    .,,,lkkkkkkKMKl,,,,,.
                    .,lkkKMMMMMMMMMMMKkl,,,.           ,kkKMMMMMMMMMMMMMMMMMMMk.
                 .lkKMMMMMMMMMMMMMMMMMMMMMMKl,,,,,,,,lkKMMMMMMMMMMMMMMMMMMMMMMMKl,.
              ,kkKMMMMMMMKkkkkkkkkkkKMMMMMMMMMMMMMMMMMMMMMMMMKkkkl,,,,,,lkKMMMMMMMKkl.
            ,kKMMMMMMKkl,.          .,,lkKMMMMMMMMMMMMMMMKkl,.            .,,lKMMMMMMk.
          .,kMMMMMMKl.                   .lkKMMMMMMMMMKl,.                    .lKMMMMMKl.
         .kMMMMMMk,.                        .lKMMMMMKl.                         .lKMMMMMk.
        .kMMMMMKl.                            .,,,,,.                             .kMMMMMl
        lMMMMMK,                                                                   .kMMMMK,
       ,KMMMMMl                                                                     ,KMMMMK,
       lMMMMMk.                                                                      lMMMMMl
       lMMMMMl                                                                       lMMMMMl
       lMMMMMl                                                                       lMMMMMl
       lMMMMMl                                                                       lMMMMMl
       lMMMMMl                                                                       lMMMMMl
       lMMMMMl                                                                       lMMMMMl
       lMMMMMk.                                                                     .kMMMMMl
       .kMMMMMl                                                                     lMMMMMK,
        ,KMMMMk.                                                                   ,KMMMMMl
         lMMMMMl                                                                  .kMMMMMk.
         .kMMMMK,                                                                .kMMMMMK,
          ,KMMMMK,                                                               lMMMMMK,
           ,KMMMMK,                                                            .lKMMMMK,
            ,KMMMMK,                                                           lMMMMMK,
             lMMMMMKl.                                                       .lKMMMMK,
             .lKMMMMMk.                                                     ,KMMMMMMl
               .kMMMMMKl.                                                  ,KMMMMMKl.
                .lKMMMMMK,                                               .lKMMMMMK,
                  .kMMMMMKl.                                           .lKMMMMMMk.
                   .lKMMMMMKl.                                       .lKMMMMMMKl.
                     .lKMMMMMKl.                                   .lKMMMMMMKl.
                       .kMMMMMMKl.                               .lKMMMMMMKk,
                        .lKMMMMMMKl.                           .lKMMMMMMKk,
                          .,lKMMMMMKkl.                     .,lKMMMMMKkl.
                             ,kKMMMMMMKl,.                .lKMMMMMMMK,
                               .lkKMMMMMMKkl,.        .lkkKMMMMMMKl,.
                                  .lKMMMMMMMMKkkl,,lkkKMMMMMMMMKk,
                                    .lKMMMMMMMMMMMMMMMMMMMMMKkl.
                                      .,,lkKMMMMMMMMMMMMMKl,.
                                           .,,lkkkkkkkl,,.


'), nl.

dibuja_nariz('DE') :-
write('                                 .,,,.
                                       ,KMMMKl.
                                      ,KMMMMMMl
                                      lMMMMMMMK,
                                      ,KMMMMMMMK,
                                       lMMMMMMMMK,
                                       .kMMMMMMMMKk,
                                        .kMMMMMMMMMk.
                                         .kMMMMMMMMMl
                                          ,KMMMMMMMMKl.
                                           ,KMMMMMMMMMl
                                            ,KMMMMMMMMK,
                                             lMMMMMMMMMK,
                                             .kMMMMMMMMMk.
                                              ,KMMMMMMMMMl
                                               .kMMMMMMMMKl.
                                                ,KMMMMMMMMMl
                                                 ,kKMMMMMMMK,
                                                   lMMMMMMMMK,
                                                   .kMMMMMMMMk.
                                                    .kMMMMMMMMk.
                                                     ,KMMMMMMMMk.
                                                      ,KMMMMMMMMl
                                                       ,KMMMMMMMK,
                                                        lMMMMMMMMK,
                                                        .kMMMMMMMMK,
                                                         .kMMMMMMMMk.
                                                          ,KMMMMMMMMk.
                                                           lMMMMMMMMMl
                                                           .kMMMMMMMMK,
                                                            .kMMMMMMMMK,
                                                             .kMMMMMMMMK,
                                                            .lKMMMMMMMMMl
                                                          .lKMMMMMMMMMMMl
                                                        .lKMMMMMMMMMMMMK,
                                                      .lKMMMMMMMMMMMMKl.
                                                    .lKMMMMMMMMMMMMKl.
                                                 .,lKMMMMMMMMMMMMKl.
                                               .lKMMMMMMMMMMMMMKl.
                                             .lKMMMMMMMMMMMMMKl.
                                           .lKMMMMMMMMMMMMMKl.
                                         .lKMMMMMMMMMMMMMKl.
                                        ,KMMMMMMMMMMMMMKl.
                                        lMMMMMMMMMMMMKl.
                                       .kMMMMMMMMMMKl.
                                        ,KMMMMMMKl,.
                                         ,kKMMKl.
                                           .,,.



'), nl.

dibuja_nariz('GO') :-
write('

                                         .lkkkkkl,,,.
                                       .,kMMMMMMMMMMKkl.
                                     .lKMMMMKkkkKMMMMMMKl.
                                   .lKMMMKkl.   .,,lKMMMMKl.
                                 .lKMMMKl.          .lKMMMMKl.
                                ,KMMMMk.              .lKMMMMKl,.
                               ,KMMMKl.                 .lKMMMMMl
                             .lKMMMK,                     .kMMMMK,
                            .kMMMMK,                       .kMMMMKl.
                           .kMMMMk.                         .lKMMMMl
                          .kMMMMk.                            ,KMMMKl.
                         .kMMMMk.                              ,KMMMMl
                         lMMMMK,                                ,KMMMK,
                        ,KMMMK,                                  ,KMMMK,
                       .kMMMK,                                    lMMMMK,
                      .kMMMMl                                     .kMMMMk.
                      lMMMMK,                                      .kMMMMk.
                     .kMMMMl                                        ,KMMMMl
                     lMMMMk.                                         ,KMMMk.
                    ,KMMMMl                                           lMMMMl
                    lMMMMk.                                           lMMMMK,
                   .kMMMMl                                            ,KMMMMl
                   lMMMMK,                                             lMMMMl
                   lMMMMl                                              lMMMMK,
                  .kMMMMl                                              .kMMMMl
                  lMMMMMl                                               lMMMMl
                  .kMMMMl                                               lMMMMl
                  .kMMMMl                                               lMMMMl
                   lMMMMl                                               lMMMMl
                   lMMMMl                                               lMMMMl
                   lMMMMl                                              .kMMMMl
                   lMMMMK,                                             lMMMMK,
                   ,KMMMMl                                             lMMMMl
                    lMMMMK,                                           ,KMMMK,
                    ,KMMMMk.                                         .kMMMMl
                     ,KMMMMk.                                       .kMMMMk.
                      ,KMMMMk.                                     .kMMMMk.
                       ,KMMMMKl.                                 .lKMMMKl.
                        .lKMMMMKl.                             .lKMMMMK,
                          .kMMMMMKkl,.                     .,lkKMMMMKl.
                           .,lKMMMMMMKkkl,,,,,,,,,,,,,,,lkkKMMMMMKkl.
                              .,lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                 .,,lkkKMMMMMMMMMMMMMMMMMMMMKkk,
                                       .,,,,,,,,,,,,,,,,,,,,.




'), nl.

dibuja_nariz('LI') :-
write('

         .lkkkkkkl,,.                                                             .lkkl,.
        ,KMMMMMMMMMMk.                                                          .lKMMMMMKl.
        lMMMMMMMMMMMMKl.                                                     .lkKMMMMMMMMMk.
        .kMMMMMMMMMMMMMk.                                                  .,kMMMMMMMMMMMMk.
         ,KMMMMMMMMMMMMMK,                                                .kMMMMMMMMMMMMMk.
          .lKMMMMMMMMMMMMk.                                             .lKMMMMMMMMMMMMKl.
            ,KMMMMMMMMMMMMKk,                                          .kMMMMMMMMMMMMMK,
             .,kMMMMMMMMMMMMKl.                                      .lKMMMMMMMMMMMMKl.
               ,KMMMMMMMMMMMMMk.                                    ,KMMMMMMMMMMMMMK,
                .,kMMMMMMMMMMMMKl.                                 .kMMMMMMMMMMMMMk.
                  ,KMMMMMMMMMMMMMK,                              .lKMMMMMMMMMMMMKl.
                   ,kKMMMMMMMMMMMMKl.                          .,kMMMMMMMMMMMMKl.
                     .kMMMMMMMMMMMMMk.                        ,KMMMMMMMMMMMMKl.
                      .,kMMMMMMMMMMMMK,                      .kMMMMMMMMMMMMk.
                        .lKMMMMMMMMMMMk.                   .lKMMMMMMMMMMMKl.
                          lMMMMMMMMMMMMK,                 .kMMMMMMMMMMMMk.
                          .kMMMMMMMMMMMMKl.             .lKMMMMMMMMMMMKl.
                           .lKMMMMMMMMMMMMKl.          .kMMMMMMMMMMMKl.
                             .lKMMMMMMMMMMMMKl.     .lkKMMMMMMMMMMMK,
                               .lKMMMMMMMMMMMMKkkkkkKMMMMMMMMMMMMKl.
                                 .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK,
                                  .lKMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                    ,KMMMMMMMMMMMMMMMMMMMMMMKl.
                                     ,kKMMMMMMMMMMMMMMMMMMMk.
                                       ,KMMMMMMMMMMMMMMMMMK,
                                        .lKMMMMMMMMMMMMMKl.
                                          ,KMMMMMMMMMMMk.
                                           .lKMMMMMMMKl.
                                             .,lkkkl,.




'), nl.

dibuja_nariz('ME') :-
write('

                                                                       .,,,,,.
                 .lkkkkkkl,.                                        .lkKMMMMMKkl.
                ,KMMMMMMMMMKl.                                    ,kKMMMMMMMMMMMK,
              ,kKMMMMMMMMMMMMk.                                  ,KMMMMMMMMMMMMMMK,
              lMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
             .kMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
             ,KMMMMMMMMMMMMMMMl                                  ,KMMMMMMMMMMMMMMMl
             .kMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
             lMMMMMMMMMMMMMMMMk.                                 lMMMMMMMMMMMMMMMMl
             .kMMMMMMMMMMMMMMMK,                                 lMMMMMMMMMMMMMMMMK,
              lMMMMMMMMMMMMMMMk.                                 lMMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                 lMMMMMMMMMMMMMMMMk.
              lMMMMMMMMMMMMMMMMl                                 ,KMMMMMMMMMMMMMMMk.
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                 .kMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                 .kMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  ,KMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  ,KMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              ,KMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              ,KMMMMMMMMMMMMMMMK,                                 ,KMMMMMMMMMMMMMMMK,
              lMMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              lMMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
              ,KMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMMl
               lMMMMMMMMMMMMMMMMl                                  lMMMMMMMMMMMMMMMK,
               ,KMMMMMMMMMMMMMMk.                                  .kMMMMMMMMMMMMMK,
                ,KMMMMMMMMMMMMk.                                    .lkKMMMMMMMMKk,
                 ,kkKMMMMMMKl,.                                        .lkkkkkkl.
                    .,,ll,,.




'), nl.

dibuja_nariz('MO') :-
write('
                                      .,,,,lkkkkkkkkkkkkkkkl,,.
                                  .,lkKMMMMMMMMMMMMMMMMMMMMMMMKkl,,.
                               .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl,.
                            .lkKMMMMMMMMMKkkkl,,,,,,,,lkkkkKMMMMMMMMMMKkl.
                         .lkKMMMMMMMKkkl,.                 .,,lkKMMMMMMMMKl.
                       .lKMMMMMMMKkl.                           .,lKMMMMMMMKl.
                      ,KMMMMMMMKl.                                 .lKMMMMMMMK,
                    .lKMMMMMKkl.                                     .,kMMMMMMKl.
                   ,KMMMMMMK,                                          .lKMMMMMMk.
                  ,KMMMMMKl.                                             .kMMMMMMk.
                 ,KMMMMMK,                                                .kMMMMMMK,
                ,KMMMMMK,                                                  .kMMMMMMk.
               .kMMMMMK,                                                    .kMMMMMMk.
               lMMMMMMl                                                      ,KMMMMMMl
              ,KMMMMMK,                                                       lMMMMMMk.
              lMMMMMMl                                                        .kMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
              lMMMMMMl                                                         lMMMMMMl
             ,KMMMMMMl                                                         lMMMMMMk.
             lMMMMMMK,                                                         .kMMMMMMl
             lMMMMMMl                                                           lMMMMMMl
             lMMMMMMl                                            .,,,.          lMMMMMMl
             lMMMMMMl         .lkkkl.         .lkkkkkl.         ,KMMMK,         ,KMMMMMK,
             lMMMMMMl        .kMMMMMl         lMMMMMMMl         lMMMMMK,         lMMMMMMl
            ,KMMMMMk.        lMMMMMMl         lMMMMMMMl         lMMMMMMl         lMMMMMMk.
            lMMMMMMl         lMMMMMMl         lMMMMMMMl         lMMMMMMK,        .kMMMMMMl
           .kMMMMMMl        ,KMMMMMMl         lMMMMMMMl         lMMMMMMMl         lMMMMMMl
           lMMMMMMk.        lMMMMMMMl         lMMMMMMMl         lMMMMMMMk.        ,KMMMMMK,
          .kMMMMMMl         lMMMMMMMl         lMMMMMMMl         lMMMMMMMMl         lMMMMMMK,
          lMMMMMMK,        ,KMMMMMMMl         lMMMMMMMK,        lMMMMMMMMK,        .kMMMMMMk.
         ,KMMMMMMl         lMMMMMMMMl        ,KMMMMMMMMl        .kMMMMMMMMl         ,KMMMMMMl
         lMMMMMMk.        ,KMMMMMMMMl        lMMMMMMMMMl         lMMMMMMMMk.         lMMMMMMK,
        ,KMMMMMK,         lMMMMMMMMK,        lMMMMMMMMMK,        lMMMMMMMMMl         .kMMMMMMk.
       .kMMMMMMl         ,KMMMMMMMMl         lMMMMMMMMMMl        .kMMMMMMMMK,         ,KMMMMMMk.
       lMMMMMMk.         lMMMMMMMMMl        .kMMMMMMMMMMl         lMMMMMMMMMK,         ,KMMMMMMl
      ,KMMMMMK,         ,KMMMMMMMMK,        lMMMMMMMMMMMK,        lMMMMMMMMMMk.         lMMMMMMl
      lMMMMMMl         ,KMMMMMMMMMk.        lMMMMMMMMMMMMl        lMMMMMMMMMMMk.       .kMMMMMMl
      lMMMMMMk.       .kMMMMMMMMMMMl       ,KMMMMMMMMMMMMK,      .kMMMMMMMMMMMMK,     .kMMMMMMK,
      .kMMMMMMKl.   .lKMMMMMMMMMMMMKl,,,,,lKMMMMMMMMMMMMMMKkl,,,lKMMMMMMMMMMMMMMKkkkkkKMMMMMMK,
       ,KMMMMMMMKkkkKMMMMMMMKKMMMMMMMMMMMMMMMMMMMk,,lKMMMMMMMMMMMMMMMMMKl,lKMMMMMMMMMMMMMMMMk.
        .lKMMMMMMMMMMMMMMMKl..,lKMMMMMMMMMMMMMMKl.   .lKMMMMMMMMMMMMMKl.   .lKMMMMMMMMMMMKkl.
          .lKMMMMMMMMMMKkl.     .lkKMMMMMMMMKl,.       .,lkkKMMKkkkl,.       .,,,lkkkkkl,.
            .,,,,lkl,,,.           .,,,,,,,,.               .,,.



'), nl.

dibuja_nariz('NA') :-
write('
                                                   ,kkkkl.
                                                 ,kKMMMMMk.
                                                 lMMMMMMMMl
                                                 lMMMMMMMMl
                                                 lMMMMMMMK,
                                                .kMMMMMMMl
                                               .kMMMMMMMK,
                                              ,KMMMMMMMK,
                                             ,KMMMMMMMk.
                                           .lKMMMMMMMk.
                                          .kMMMMMMMMk.
                                         ,KMMMMMMKkl.
                                        ,KMMMMMMK,
                                      .lKMMMMMMK,
                                     .kMMMMMMMk.
                                    .kMMMMMMKl.
                                   ,KMMMMMMK,
                                  ,KMMMMMMK,
                                .lKMMMMMMk.
                               .kMMMMMMMk.
                              .kMMMMMMKl.
                             ,KMMMMMMK,
                           .lKMMMMMMK,
                          .kMMMMMMMK,
                         .kMMMMMMMk.
                        ,KMMMMMMKl.
                       ,KMMMMMMK,
                     .lKMMMMMMK,
                    .kMMMMMMMk.
                   .kMMMMMMMk.
                  ,KMMMMMMKl.                              .lkkkkkkl,.
                 ,KMMMMMMK,                                lMMMMMMMMMKkl.
                ,KMMMMMMK,                                 lMMMMMMMMMMMMKl.
               .kMMMMMMk.                                  .lkkkkKMMMMMMMMK,
               lMMMMMMMl                                         .,lKMMMMMMK,
               lMMMMMMMl                                            .kMMMMMMK,
               lMMMMMMMl                                             .kMMMMMMl
               .kMMMMMMl                                              lMMMMMMl
                lMMMMMMK,                                            .kMMMMMMl
                .kMMMMMMKl.               .,lkkkkl,,.               ,KMMMMMMk.
                 .kMMMMMMMKl,.          .lKMMMMMMMMMKl.         .,lkKMMMMMMK,
                  .lKMMMMMMMMKkl,,,,,,,lKMMMMMMMMMMMMMKkkkkkkkkkKMMMMMMMMMK,
                    .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                      .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                         .lkkKMMMMMMMMMMMMMMMMMMKkkkkkkkkkkkkkkkkkl,,.
                             .,,,,,,,,,,,,,,,,,,.


'), nl.

dibuja_nariz('PO') :-
write('                                    .,,,,,,,,,,,,,,,,,,,,.
                            .,,,lkkkKMMMMMMMMMMMMMMMMMMMMKkkkkkkkl,,.
                      .,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkl,,.
                  .,lkKMMMMMMMMMMMMMMMMMKkkkkkkkkkkkkkkkKMMMMMMMMMMMMMMMMMKkl,.
               .lkKMMMMMMMMMMKkkkl,,,,,,.               .,,,,lkkkKMMMMMMMMMMMMKl,.
            .lkKMMMMMMMMKkkl,.                                   .,,lkkKMMMMMMMMMk.
          .lKMMMMMMMKkl,.                                              .,,lkKMMMMMKkl.
        .lKMMMMMMKl,.                                                       .lkKMMMMMKkl.
       .kMMMMMMKl.                                                             .lKMMMMMMk.
      .kMMMMMk,.                                                                 .lKMMMMMk.
      lMMMMMk.             .,,,,,.           .,,,,,.            .,,,.              .kMMMMMl
     ,KMMMMk.            .lKMMMMMk.        .lKMMMMMKl.        .lKMMMKkl.            .kMMMMk.
     lMMMMMl             lMMMMMMMMk.      .kMMMMMMMMMl       ,KMMMMMMMMk.            lMMMMMl
     lMMMMMl             lMMMMMMMMK,      ,KMMMMMMMMMl       lMMMMMMMMMMl            lMMMMMl
     ,KMMMMl             ,KMMMMMMK,        ,KMMMMMMMMl       .kMMMMMMMMk.            lMMMMMl
      lMMMMK,             .lkkkkl.          .lkkkkkkl.        .lkKMMKkl.            ,KMMMMMl
      .kMMMMKl.                                                  .,,.             .lKMMMMKl.
       ,KMMMMMKl.                                                               .lKMMMMKl.
        .kMMMMMMKkl.                                                         .,lKMMMMMK,
         .,lKMMMMMMKkl.                                                   .,lKMMMMMMKl.
            .lKMMMMMMMKkl,,,.                                         .,lkKMMMMMMMKl.
              .,lkKMMMMMMMMMKkkl,,.                          .,,,,,lkkKMMMMMMMMKl,.
                  .lKMMMMMMMMMMMMMKkkkkkkl,,,,,,,,,,,lkkkkkkkKMMMMMMMMMMMMKkl,,.
                    .,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl,.
                          .,,,,,,lkkkKMMMMMMMMMMMMMMMMMMMMMMMMKkkkkkl,.
                                     .,lkkkkkkkkkkkkkl,,,,,,,,.

'), nl.

dibuja_nariz('SI') :-
write('
                      .,,.                                                    .,,,,,.
                  .,lkKMMKkkl,.                                            .lkKMMMMMKkl.
                 ,KMMMMMMMMMMMK,                                         .lKMMMMMMMMMMMK,
                ,KMMMMMMMMMMMMMKl.                                     .lKMMMMMMMMMMMMMMk.
                lMMMMMMMMMMMMMMMMKl.                                 .lKMMMMMMMMMMMMMMMMMl
                lMMMMMMMMMMMMMMMMMMKkl.                            .lKMMMMMMMMMMMMMMMMMMk.
                ,KMMMMMMMMMMMMMMMMMMMMk,.                        .lKMMMMMMMMMMMMMMMMMMKk,
                 ,kKMMMMMMMMMMMMMMMMMMMMKl.                    .lKMMMMMMMMMMMMMMMMMMMK,
                   .lKMMMMMMMMMMMMMMMMMMMMKl.                .lKMMMMMMMMMMMMMMMMMMMKl.
                     .lKMMMMMMMMMMMMMMMMMMMMKl.            .lKMMMMMMMMMMMMMMMMMMMKl.
                       .lKMMMMMMMMMMMMMMMMMMMMk.         .lKMMMMMMMMMMMMMMMMMMMk,.
                         .lKMMMMMMMMMMMMMMMMMMMKl.     .lKMMMMMMMMMMMMMMMMMMMKl.
                           .lKMMMMMMMMMMMMMMMMMMMKkl,,lKMMMMMMMMMMMMMMMMMMMKl.
                             .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                               .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                 ,kKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                   .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                     .lKMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                       .kMMMMMMMMMMMMMMMMMMMMMMMK,
                                      .lKMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                    .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                  .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                                .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk,.
                              .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                            .lKMMMMMMMMMMMMMMMMMMMMKllKMMMMMMMMMMMMMMMMMMMMKl.
                          .lKMMMMMMMMMMMMMMMMMMMKl,.  .lKMMMMMMMMMMMMMMMMMMMMKl.
                        .lKMMMMMMMMMMMMMMMMMMMKl.       .lKMMMMMMMMMMMMMMMMMMMMKl.
                      .lKMMMMMMMMMMMMMMMMMMMKl.           .lKMMMMMMMMMMMMMMMMMMMMKl.
                    .lKMMMMMMMMMMMMMMMMMMMKl.               .lKMMMMMMMMMMMMMMMMMMMMKl.
                  .lKMMMMMMMMMMMMMMMMMMMKl.                   .lKMMMMMMMMMMMMMMMMMMMMKl.
                .lKMMMMMMMMMMMMMMMMMMMKl.                       .lKMMMMMMMMMMMMMMMMMMMMK,
                lMMMMMMMMMMMMMMMMMMMKl.                           .lKMMMMMMMMMMMMMMMMMMMK,
               ,KMMMMMMMMMMMMMMMMMKl.                               .lKMMMMMMMMMMMMMMMMMMl
               .kMMMMMMMMMMMMMMMKl.                                   .lKMMMMMMMMMMMMMMMK,
                ,KMMMMMMMMMMMMKl.                                       .lKMMMMMMMMMMMMk.
                 .lKMMMMMMMMKl.                                           .lkKMMMMMMMKl.
                   .,,,,,,,,.                                                .,,,,,,,.





'), nl.



%Bocas

dibuja_boca('CA') :-
write('

  .,,,,,,,,,,,,,lkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkl.
 ,KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMl
 .kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkkkkkkkkkKMMMMMMMMMMMKkkkkkkkkkkkkl.
  .,,,,,,,,,,,,,,,,,,kMMMMMk,,,,,,,,,,,,kMMMMk,,,,,,,,,kMMMMl            ,KMMMMk,,,,,.
                     lMMMMMl            lMMMMl         lMMMMl            ,KMMMMl
                     lMMMMMl            lMMMMl         lMMMMl             lMMMMl
                     lMMMMMl            lMMMMK,        lMMMMl             lMMMMl
                     lMMMMMl            lMMMMMl        lMMMMl             lMMMMl
                     .kMMMMl            lMMMMMl        lMMMMl             lMMMMl
                      lMMMMl            lMMMMMl        lMMMMl             lMMMMl
                      lMMMMl            lMMMMMl        lMMMMl             lMMMMl
                      lMMMMl            lMMMMMl        lMMMMk.            lMMMMl
                      lMMMMKl,,,,,,,,,,,kMMMMK,        lMMMMMk,,,lkkkl,,,lKMMMMl
                      ,KMMMMMMMMMMMMMMMMMMMMK,         .lKMMMMMMMMMMMMMMMMMMMMk.
                       .lkKMMMMMMMMMMMMMMMKl.            .lKMMMMMMMMMMMMMMMKl,.
                          .,,,,,,,,,,,,,,,.                .,,,,,,,,,,,,,,,.

'), nl.

dibuja_boca('DA') :-
write('


                                                                                          ..
    ..                                                                                  .c0x.
   ,KK,                                                                                .xN0,
   .lKKl.                                                                             .xN0,
     ,KWKl.                                                                         .l00c.
      .lKWx.                                                                      .l0Wx.
        .lKKl,.                                                                 .l0NWWc
          lWWWKl.                                                            .,l0WWNNWl
         .kWWWWWKxl.                                                      .,l0WNOockNNl
         lWWk;,:dOXKxl,.                                               .,l0WN0d;.  ·ON0,
        ,KWX;     ·kWWWKxl,,.                                     .,,lxKWWWW0;      dWNx.
        lWWd       oWWWWWWWWKxxl,,,.                      .,,,,lxx0WWWW0xxx0XOc.    ;KNWl
        lWMl     ·dXKl,,,xWWWWWWMMWKxxxxxxxxxxxxxxxxxxxxxx0WWWWX0kxkXWWl   .l0N0d;. ·OWWl
        lWMo  .:dXKl.    lMWO:,,;:cdkkOO0XWWWWWWWWWWWWX0Okxdl:;·.  ·OWWl     .c0NX0kOXNK,
        ;KWKkkXWKl.      lMW0·          ..xWWKl,,lkKWWx.           :NWWl       .,lx0W0c.
         .lxkxl,.        ,KWWl           .xWWl     ;KWK;           lWW0,           .,.
                          lWWo          .oNWk.      ;KW0;          dWWl
                          lWWk.         lNWk.        ;KWK:        .kWWl
                          .kWNc       .lNWk.          ,KWKc.      cNWx.
                           ;KMO·     .oNWx.            .xWNd.    .kWWl
                            lMWx.   ;kNKl.              .lKNOc...dNWx.
                            .lKNkllkNKl.                  .lKNK00N0l.
                              .lKMMKl.                      .lxxxl.
                                .,,.




'), nl.

dibuja_boca('DI') :-
write('
                                                                                         .lkl.
   .lkl.                                                                                  lMMMK,
  .kMMMl                                                                                 .kMMMK,
   lMMMK,                                                                                lMMMMl
   ,KMMMk.                                                                              .kMMMk.
    lMMMMl                                                            .,,.             .kMMMK,
    .kMMMK,           .,lkkl,.                                      .lKMMKkl.         .kMMMMl
     .kMMMKl.       .lKMMMMMMk.                                    ,KMMMMMMMKl.      ,KMMMKl.
      .kMMMMk.     ,KMMMMKKMMMk.                                  .kMMMklKMMMMK,   .lKMMMK,
       .lKMMMKl. .lKMMMKl.lMMMMl                                  lMMMMl .lKMMMKl,lKMMMMk.
         .kMMMMKlkMMMKl.  lMMMMl                                  lMMMMl   .lKMMMMMMMMKl.
          .lKMMMMMMMK,    lMMMMl                                  lMMMMl     ,KMMMMMKl.
            .lKMMMMMk,.   lMMMMl                                  ,KMMMl  .,lKMMMMKl.
              .lKMMMMMKl,.lMMMMl                                   lMMMk,lKMMMMMKl.
                .,lkKMMMMKKMMMk.                                  .kMMMMMMMMMKl,.
                    .lkKMMMMMMKkl,,,.                       .,,lkkKMMMMMMKkl,.
                       .,lkKMMMMMMMMKkkkkkl,,,,,,,,,lkkkkkkkKMMMMMMMMKkkl.
                           .,lkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkl,.
                                 .,,,lkkkkkkkkkkKMMMMKkkkkkl,,,.
                                                .,,,,.

'), nl.

dibuja_boca('DO') :-
write('
                    .,,.
                   ,KMMK,
                  .kMMMMl
       .lkkl,.  .,kMMMMK,
       lMMMMMKkkKMMMMMK,
       .lKMMMMMMMMMMMk.
         .,lkkkkKMMMMk.
                ,KMMMMk.
                 ,KMMMMK,
                  .kMMMMKl.
                   .lKMMMMk.
                     ,KMMMMKl.
                    .lKMMMMMMKl.
                  .lKMMMMKKMMMMKl.
                 ,KMMMMKl..lKMMMMKl.
               .lKMMMKl.    .lKMMMMKl,.
              .kMMMMK,        .kMMMMMMKl,.
             .kMMMMK,         .kMKkKMMMMMKl,.
             lMMMMk.         .kMk. .lKMMMMMMKkl,.
            ,KMMMK,         ,KMk.    .,lkKMMMMMMKkkl,,.
            lMMMMl         ,KKl.        .kMMMMMMMMMMMMKkkl,,,.                        .,,,lkkkkl.
           ,KMMMK,         ,k,         .kMMMMKkkKMMMMMMMMMMMMKkkkkkl,,,,,,,,,,,,lkkkkkKMMMMMMMMMl
           lMMMMl                     .kMMMMK,  .,,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
           lMMMMk.                   .kMMMMK,          .,,lkkkkKMMMMMMMMMMMMMMMMMMMMKkkkkl,,,.
           .kMMMMl                 .lKMMMMK,                   .,,,,,,,,,,,,,,,,,,,,.
            lMMMMK,              .lKMMMMKl.
            .lKMMMKl.         .,lKMMMMMK,
              ,KMMMMKkl,,,,,lkKMMMMMMKl.
               .lKMMMMMMMMMMMMMMMMKl,.
                 .,lkKMMMMMMMKkkl,.
                     .,,,,,,,.

'), nl.

dibuja_boca('LA') :-
write('
                                                                 .,,,,,,.
                          .,,,,,lkl,,,,,.                 .,,lkkkKMMMMMMKkkkl,.
                     .,,lkKMMMMMMMMMMMMMKkl,.           .lKMMMMMMMKkkkkKMMMMMMKkk,
                  .,lKMMMMKkkkkl,,,lkkkkKMMMKkl,.  .,lkkKMMKkl,,,,.    .,,,lkkKMMKkl,.
                .lKMMKkkl,.             .,lkkKMMKkkKMMMKkl,.                  .,lkKMMKl,.
              .lKMMKl.                       .lKMMMMMKl.                          .lKMMMk.
            ,kKMMKl.                           .lkkkl.                              .lKMMk.
           ,KMMKl.                                                                    .kMMKk,
         ,kKMMk.                                                                       .lKMMk.
        .kMMKl.                                                                          ,KMMK,
       ,KMMK,                                                                             lMMMk.
       lMMMl                                                                        .,,lkkKMMMk.
      .kMMMk,,,,,.                                                          .,,lkkkkkkkl,lKMMK,
       lMMMMklkkkkkkkkl,,,,,,,,.                          .,,,,,,,,,,lkkkl,,lkkl,,,,.   .kMMK,
       .lKMMk.   .,,,,,,lkkkkkkl,,,,lkkkkkkkkkkkkkkkkkkl,,lkkkkkkkkkl,,,,.             .kMMMl
         lMMMk.                     .,,,,,,,,,,,,,,,,,,.                              .kMMMk.
         .lKMMKl.                                                                    ,KMMKl.
           ,kKMMK,                                                                 .lKMMk.
             ,KMMKl.                                                            .lkKMMk,.
              ,kKMMKl,.                                                        ,KMMMKk,
                .lkKMMKl,.                                                  .lkKMKkl.
                   .kMMMMKl,.                                           .,lkKMMKk,
                    .,lKMMMMKkl,.                                    .lkKMMMKkk,
                       .,,lKMMMMKkkl,,.                       .,,lkkkKMMKkkl.
                           .,lkkKMMMMMKkkkkkl,,,,,,,,,,,lkkkkkKMMMMMKkkl.
                                .,lkkKMMMMMMMMMMMMMMMMMMMMMMMMKkkl,,.
                                     .,,,,,lkkkkkkkkkkkkkl,,,,.



'), nl.

dibuja_boca('LO') :-
write('
                                         .,,,,,,,,,,,,,,.
                                .,,lkkkkkKMMMMMMMMMMMMMMKkkkkkl,,,.
                          .,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkl,.
                      .,lkKMMMMMMMMMMMKkkkkkkkkkkkkkkkkkkkkKMMMMMMMMMMMKkl,.
                   .lkKMMMMMMMMKkkl,,,.                    .,,,lkkKMMMMMMMMKkl,.
                .lkKMMMMMMMMMMMl                                  .,,kMMMMMMMMMKl,.
             .,lKMMMMMKkl,kMMMMl                                    ,KMMMKkkKMMMMMKl.
           .lKMMMMMKl,.   lMMMMl                                    lMMMMl  .lkKMMMMKl.
         .lKMMMMMMMK,     lMMMMl                                    lMMMMl     .kMMMMMKl.
        ,KMMMMMKKMMMKl.   lMMMMl                                    lMMMMl    .lKMMMMMMMKl.
      .lKMMMMKl.,KMMMMk.  lMMMMl                                    lMMMMl   ,KMMMMKkKMMMMK,
     .kMMMMKl.   .kMMMMKllKMMMK,                                    lMMMMl.,lKMMMKl. .kMMMMKl.
    ,KMMMMK,      .lKMMMMMMMMMl                                     ,KMMMKKMMMMMK,    .lKMMMMk.
   ,KMMMMk.         .lkKMMMMKl.                                      ,KMMMMMMMKl.       ,KMMMMk.
  ,KMMMMk.             .,,,,.                                         .lkkkkl,.          ,KMMMMk.
 .kMMMMk.                                                                                 ,KMMMMk.
 lMMMMK,                                                                                   lMMMMMl
.kMMMMl                                                                                    .kMMMMk.
lMMMMK,                                                                                     ,KMMMMl
.lkkl.                                                                                       lMMMMl
                                                                                             .lkkl.

'), nl.

dibuja_boca('PA') :-
write('


                                                                                          .,lkl.
    .lkkkl,.                                                                         .,lkkKMMMMk.
    lMMMMMMKkkkl,,.                                                           .,,,lkkKMMMMMMKkl.
    .,lkKMMMMMMMMMKkkkl,,,,.                                        .,,,,lkkkkKMMMMMMMMKkkl,.
        .,,lkkKMMMMMMMMMMMMKkkkkkkkl,,,,,,,,,,,,,,,,,,,,,,,,lkkkkkkkKMMMMMMMMMMMKkkl,,,.
              .,,,lkkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkl,,,.
                       .,,,,lkkkkkkkkKMMMMMMMMMMMMMMMMMKkkkkkkkkl,,,,,,.
                                     .,,,,,,,,,,,,,,,,,.




      .,.                                                                                .,,lkkl.
    ,kKMKkl,,.                                                                     .,,,lkKMMMMMK,
    ,KMMMMMMMKkkl,,,.                                                       .,,,lkkKMMMMMMMMKkl.
     .,lkkKMMMMMMMMMKkkkl,,,,,.                                  .,,,,,lkkkkKMMMMMMMMMKkkl,,.
          .,,lkkKMMMMMMMMMMMMMKkkkkkkkkkl,,,,,,,,,,,,lkkkkkkkkkkkKMMMMMMMMMMMMMKkkkl,,.
                .,,,lkkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkkl,,,.
                         .,,,,,lKMMMMKkkkkkkKMMMMMMMKkkkkkkkkkkkKMMMMl
                                lMMMMl      .,,,,kMMl           lMMMMl
                                lMMMk.           lMMl           .kMMMk.
                                lMMMl            lMMl            lMMMMl
                               ,KMMMl            lMMl            lMMMMl
                               ,KMMMl            lMMl            lMMMMl
                                lMMMl            ,kk,            lMMMMl
                                lMMMk.                           lMMMMl
                                lMMMMl                           lMMMk.
                                .kMMMk.                         ,KMMMl
                                 lMMMMl                        .kMMMK,
                                 ,KMMMK,                      .kMMMK,
                                  ,KMMMKl.                   .kMMMMl
                                   .kMMMMk.                .lKMMMKl.
                                    .lKMMMKkl.           .lKMMMMK,
                                      ,KMMMMMKkl,,,,,,,lkKMMMMKl.
                                       .,lKMMMMMMMMMMMMMMMMKkl.
                                          .,lkkKMMMMMMMKkl,.
                                               .,,,,,,,.



'), nl.

dibuja_boca('RA') :-
write('
                                               .,,,.
                            .,,,,,,lkkkkkkkkkkkKMMMKkkkkkkkkkkkl,,,,.
                      .,,lkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkl,,.
                 .,lkkKMMMMMMMMMMMMMKkkkkkkkkkkkKMMMKkkkkkkkkKMMMMMMMMMMMMMMKkkl,.
             .,lkKMMMMMMMMMMMMk,,,,,.           lMMMl        .,,,,,lkKMMMMMMMMMMMKkl,.
           .lKMMMMMMMKkl,,kMMMk.               ,KMMMl                lMMMklkkKMMMMMMMKl,.
         .lKMMMMMKl,,.    lMMMMl               lMMMMK,               lMMMk.  .,lkKMMMMMMKl.
       .lKMMMMKl,.       ,KMMMMk.             ,KMMMMMk.             ,KMMMMl      .,lKMMMMMKl.
     .lKMMMMKl.         .kMKlkMMk.           .kMKkkKMMl            .kMKkKMK,        .lKMMMMMKl.
    ,KMMMMMMK,         ,KMK, .kMMk.         .kMK,  ,KMKl.         .kMK, ,KMK,         .kMMMMMMk.
   .kMMMMKkKMKl,.    .lKMK,   .kMMKl.     .lKMK,    ,KMMKl.     .lKMK,   ,KMKl.      .lKMMMMMMMk.
  .kMMMMk. .lKMMKkkkkKMKl.     .lKMMKkkkkkKMKl.      .lKMMKl,,lkKMKl.     .lKMKkl,,,lKMKl,lKMMMMl
  lMMMMk.    .,lkkkkkl,.         .,lkkkkkkl,.          .lkkKMMKkl,.         .lkKMMMMKkl.   lMMMMK,
 ,KMMMMl                                                   .,,.                .,,,,.      .kMMMMl
 lMMMMk.                                                                                    lMMMMK,
 lMMMMl                                                                                     ,KMMMMl
 lMMMMl                                                                                      lMMMMl
 lMMMMk.                                                                                    .kMMMMl
 lMMMMMl                                                                                    lMMMMK,
 .kMMMMk.     .,,,,,,.              .,,,,,.               .,,,,.                .,,.        lMMMMl
  lMMMMMl  .lkKMMMMMMKkl.       .,lkKMMMMMKl.          .lkKMMMMKkl.         .lkkKMMKkl,.   ,KMMMK,
  .kMMMMKllKMKkl,,,,lKMMK,     .kMMKl,,,,lKMKl.      .lKMKl,,,lKMMKl.     .lKMKkl,lkKMMKl.,KMMMK,
   .kMMMMMMMK,       .lKMKl. .lKMKl.      .lKMK,   .lKMKl.     .,kMMK,  .lKMKl.     .lKMMKKMMMK,
    .lKMMMMMk.         ,KMMk,kMMk.          ,KMK,.,kMMk.         .lKMK,.kMMk.         .kMMMMMK,
      ,KMMMMMKl.        ,KMMMMMk.            ,KMKKMMMk.            lMMKKMMk.        .,lKMMMKl.
       .lKMMMMMKkl,.     lMMMMK,              lMMMMMK,             .kMMMMk.      .,lKMMMMMk.
         .lkKMMMMMMKkl,. .kMMMl               ,KMMMMl               ,KMMMl   .,lkKMMMMMKl,.
            .lkKMMMMMMMKkkKMMMl                lMMMK,                lMMMklkkKMMMMMMKkl.
               .lkKMMMMMMMMMMMKkkkkl,,,,,,,,,. lMMMk.   .,,,,,,,,,lkkKMMMMMMMMMMMKkl.
                  .,,lkkKMMMMMMMMMMMMMMMMMMMMKkKMMMMKkkkKMMMMMMMMMMMMMMMMMMMKkl,,.
                        .,,,lkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkl,,.
                                .,,,,,,lkkkkkkkkkkkkkkkkkkkkkl,,,,,,.



'), nl.

dibuja_boca('RO') :-
write('

                                     .,,,,lkkkkkl,,,,,.
                                .,lkkKMMMMMMMMMMMMMMMMKkkl,.
                            .,lkKMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                          .lKMMMMMMMMMKkkkl,,,,,lkkkkKMMMMMMMMKkl.
                       .lkKMMMMMMMKkl,.              .,lkKMMMMMMMKl.
                      ,KMMMMMMMKl,.                      .lkKMMMMMMKk,
                    .lKMMMMMMKl.                            .lKMMMMMMKl.
                  .lKMMMMMMKl.                                .lKMMMMMMKl.
                 .kMMMMMMMK,                                    ,KMMMMMMMk.
                .kMMMMMMMk.                                      .lKMMMMMMk.
               .kMMMMMMKl.                                         ,KMMMMMMK,
              .kMMMMMMK,                                            ,KMMMMMMK,
              lMMMMMMMl                                              ,KMMMMMMk.
             ,KMMMMMMk.                                               lMMMMMMMl
            .kMMMMMMK,                                                .kMMMMMMK,
            lMMMMMMMl                                                  ,KMMMMMMl
            lMMMMMMK,                                                   lMMMMMMK,
           ,KMMMMMMl                                                    lMMMMMMMl
           lMMMMMMMl                                                    .kMMMMMMk.
           lMMMMMMMl                                                     lMMMMMMMl
           lMMMMMMMl                                                     lMMMMMMMl
           lMMMMMMMl                                                     lMMMMMMMl
           lMMMMMMMl                                                     lMMMMMMMl
           .kMMMMMMl                                                     lMMMMMMMl
            lMMMMMMK,                                                    lMMMMMMMl
            lMMMMMMMl                                                   .kMMMMMMk.
            ,KMMMMMMk.                                                  lMMMMMMMl
             lMMMMMMMl                                                 .kMMMMMMK,
             .kMMMMMMK,                                                lMMMMMMMl
              ,KMMMMMMk.                                              ,KMMMMMMk.
               lMMMMMMMk.                                            ,KMMMMMMK,
               .kMMMMMMMk.                                          ,KMMMMMMK,
                .kMMMMMMMk.                                        ,KMMMMMMK,
                 .lKMMMMMMKl.                                    .lKMMMMMMK,
                   ,KMMMMMMMk.                                  ,KMMMMMMMK,
                    .lKMMMMMMKl.                              .lKMMMMMMMk.
                      ,KMMMMMMMKkl.                        .,lKMMMMMMMKl.
                       .lKMMMMMMMMKl,.                  .,lKMMMMMMMMKl.
                         .,lKMMMMMMMMKkkl,,,,,,,,,,,,,lkKMMMMMMMMKkl.
                            .lkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkl.
                               .,lkKMMMMMMMMMMMMMMMMMMMMMMKkkl.
                                   .,,lkkkkKMMMMMKkkkkkl,,.
                                           .,,,,,.

'), nl.

dibuja_boca('SE') :-
write('
            .,.
           .kMKkkl,.
            .,lkKMMKkkl,,,.                                                       .,,lkkkl.
                .,,lkKMMMMKkkkl,,,,.                                     .,,,,lkkkKMMKkkk,
                     .,lkkkKMMMMMMMKkkkkkkkkkkl,,,,,,,,,,,,,,,,,lkkkkkkkkKMMMMMKkkl,,.
                           .,,,lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkl,,,,.
                                lMMKl,,,kMMMKkkkkkkkkkkkkkkkkl,,,,,,,,.
                               ,KMMl    lMMMl
                              .kMMk.    lMMMl
                             .kMMK,     lMMK,
                             lMMK,     .kMMl
                           .lKMMl      lMMMl
                           lMMKl.      lMMK,
                         .lKMK,       .kMMl
                        ,KMMK,        lMMK,
                       ,KMMK,        ,KMMl
                     .lKMMk.         lMMK,
                   .lKMMMMk,,,,.    ,KMMl
                 .lKMMMMMMMMMMMK,  ,KMMk.
                 .lkkkkkkkkkkKMMKllKMMK,
                             .kMMMMMMK,
                              ,KMMMMK,
                               ,KMMk.
                                .,,.

'), nl.



%Accesorios

dibuja_complemento('CA') :- write('

               .,,,lkkl,,,.                                           .,,,lkkkkl,,.
           .,lkKKkkkkkkkkKKkl,.                                     .lKMKkkkkkkkkkkkkl,.
         .lKKkl,.        .,,lKKl.                                .lkkkl,.         .,lkKKl.
       .lKKl.                .,l,                                ,kl.                 .lKK,
      .kKl.      .,,,,,,.                                                .,,,,,,,.      ,KKl.
     ,KK,      ,l,,,,,,,,,,.                                           .,,,,. .,ll,.     .kMl
    .kMl      ,l.         ,l.                                        .,,.         ,k,     ,KK,
    lMk.     ,l.           ll                                        ll            lk.     lMl
    lMl      ,,         .llll.                                       ,l,,.         .,.     lMl
    lMl                ,kl.                                             .,,.               lMl
    .kK,               ll                                                 ll              .kMl
     lMk.              ll                                                .kl             .kMk.
     .lKk.             .ll.                                            .,ll.            .kMk.
       ,KK,             .,,,,.                                       .,,,.             .kMk.
        ,KK,                                                                          ,KKl.
         ,KKl.                                                                       ,KK,
          .kMk.                                                                    .lKK,
           .lKk.                                                                  .kMK,
             ,KK,              ,l.                               ,k,             .kMk.
              ,KK,            ,KMl                               lMl            .kMk.
               ,KKl.         .kKl.                               .kKl.         .kKl.
                .lKKl,,,..,lkKk.                                  .lKKl,,,,,,lkkl.
                  .lkKMMKKKkl,.                                     .,lkkKMKkkl.
                     .,,,,.                                              .,.

'), nl.

dibuja_complemento('CO') :- write('
                                                                                 .,,.
                                                                           .,lkkkKMMK,
                                                                        .lkKMMMMMMMMMl
                                                                  .,,,lkKMMMMMMMMKkl,.
                                                               .,lKMMMMMMMKkkkkl,.
                                                           .,lkKMMMMMKkl,,.
                                                       .,lkKMMMMKkkl,.
                                                   .,lkKMMMMKkl,.
                                              .,lkkKMMMMKkl,.
                                           .lkKMMMMMKkl,.
                                        .lkKMMMKkl,,.
                                     .lkKMMMKkl.
                                  .lkKMMMKl,.
                               .lkKMMMKl,.
                             .lKMMMKl,.
                          .lkKMMKkl.
                        .lKMMMKl.
                      .lKMMMKl.
                     .kMMMKl.
                   .lKMMKl.
                  .kMMMk.
                 .kMMMk.
                 lMMMk.
                 lMMMl
                 lMMMl
                 lMMMk.
                 .kMMMKl.
                  .lKMMMKkl,,.
                    .,lKMMMMMKkkl,,,,.
                       .,lkkkKMMMMMMMKkkkl,,.
                             .,,lkkkkKMMMMMMKkkl,.
                                     .,,lkkkKMMMMKkkl.
                                            .,lkKMMMMKl.
                                                .,,lKMMKl.
                                                    .kMMMl
                                                     .kMMK,
                                       .lk,          .kMMK,
                                     .lKMMl        .lKMMK,
                                   .lKMMMMl   .,,lkKMMMK,
                                 .lKMMMMMMk,lkKMMMMMKkl.
                              .,lKMMMMMMMMMMMMMKkl,,.
                            .lKMMMMMMMMMMMMMKl,.
                          .lKMMMMMMMMMMMMMMMKl.
                          ,kkkkkKMMMMMMMMMMMMMK,
                                .,,,,,,,,,,,,,,.




'), nl.

dibuja_complemento('CU') :- write('
          .,,.                                                                          ..
         ,KMMl                                                                         .kKl.
         lMMMK,                                                                        lMMMl
        ,KMMMMk.                                                                     .lKMMMK,
        lMKlkMMK,                                                                   .kMMkkMMl
        lMl .kMMk.                                                                 .kMMk.,KMK,
       ,KMl  .kMMl                                                                 lMMk.  lMMl
       lMMl   .kMKl.                                                             .lKMk.   lMMl
       lMMl  .c0KKMk.                                                           ,KMMMk,,. lMMl
       lMMKkkkxc.,KMKl.                                                       .lKMKl,lkkkkKMMl
       ,KMk,,.    .kMMk.                                                     ,KMKl.     .lKMK,
        lMk.       .lKMKl.                                                 ,kKMK,        lMMl
        lMMl         .lKMk,.                                             .lKMKl.         lMMl
        ,KMK,          ,KMMKl.                                        .,lKMMK,          ,KMk.
         ,KMk.     .,llll,lKMKkl.                                  .,lKMMKl,lkkl,.     .kMMl
          lMMk,,lkllkl.    .lkKMKl,,.                           .,lKMMKl,.   .,lkllkl,lKMKl.
          .lKMKl,,.           .lKMMMl                          ,KMMKl,.           .,,kMMK,
            lMMk.               ,KMK,                          ,KMMk.               ,KMMl
            .lKMK,            .lKMK,                            .kMMk.            .lKMKl.
              ,KMKl.       .,lKMKl.                              .lKMKkl.        .kMMk.
               .lKMKl,,,,lkKMMKl.                                  .lKMMKkl,,,,,lKMKl.
                 .,kMMMMMKkkl,.                                      .,lkKMMMMMMMKl.
                   .,,,,,.                                               .,,,,,,,.



'), nl.

dibuja_complemento('LA') :- write('

                                                                                .,,,lkkl,,.
                                                                            .lkkKMMMMMMMMMKl.
                                                                         .lkKMMKkkl,,,,lkKMMK,
                                                                      .lkKMMKkl.         .kMMK,
                                                                    .lKMMKkl.             ,KMMK,
                                                                  .lKMMKl.                 lMMMk.
       .,,lkkkkkkkl,,,.                                         .lKMMKl.                   ,KMMMl
     .lKMMMMMMMMMMMMMMKkkl,,.                                  .kMMMK,                      lMMMl
    ,KMMMKkkl,,,,lkkkkKMMMMMKkl.                              ,KMMKl.                       lMMMK,
   ,KMMMk.            .,,lkKMMMKkl.                          ,KMMK,                         lMMMMl
   lMMMk.                  .,lKMMMKkl.                      ,KMMK,                          lMMMMl
  ,KMMMl                      .lkKMMMKl.        .,,,,,,,.  ,KMMMl                           lMMMMl
  lMMMMl                         .lKMMMKl. .,lkkKMMMMMMMKkkKMMMk.                           .kMMMl
  .kMMMl                           .lKMMMKkKMMMMMMMMMMMMMMMMMMMl                            ,KMMMl
   lMMMk.                            .kMMMMMMMKkl,,,,,,lKMMMMMMl .,,.                       lMMMMl
   lMMMMl                             .kMMMMMK,         .kMMMMMKkKKl.                       lMMMMl
   .kMMMk.                             .kMMMMl           .kMMMMMMK,                         lMMMMl
    ,KMMMl                        .lkkkkKMMMMl            lMMMMMMMKl,.                      lMMMMl
     lMMMk.                        .,,kMMMMMMK,           lMMMMk,,,,l,                      lMMMMl
     .kMMMl                          .kMMMMMMMl           lMMMMK,                           lMMMMl
      ,KMMK,                        ,kkl,,kMMMK,         .kMMMMMk.                         .kMMMk.
       lMMMK,                       ..    lMMMMKkl,,,,lkkKMMMMMMMk.                        lMMMMl
       .kMMMk.                            lMMMMMMMMMMMMMMMMMKKMMMMk.                       lMMMK,
        .kMMMk.                          ,KMMMMMMMMMMMMKkkl,..kMMMMK,                     .kMMMl
         .kMMMl                          lMMMMk,,,,,,,,.      .,kMMMKl.                   lMMMK,
          .kMMK,                        ,KMMMk.                 .lKMMMKl.               .lKMMK,
           ,KMMK,                      .kMMMk.                    .lKMMMKkl.           .kMMMK,
            ,KMMK,                     lMMMK,                       .lKMMMMKl,,.    .,lKMMMK,
             lMMMKl.                  ,KMMMl                          .lkKMMMMMKkkkkKMMMMKl.
             .lKMMMk.               .lKMMKl.                             .,lkKMMMMMMMKkkl.
               ,KMMMKl.            ,KMMMk.                                   .,,lkl,,.
                .lKMMMKl.       .,lKMMMk.
                  .lKMMMKkl,,,lkKMMMMKl.
                    .lkKMMMMMMMMMMKl,.
                       .,lkkkkkkl,.


'), nl.

dibuja_complemento('LU') :- write('
                                                             .,,,.
                        .,,lkkkkkkkl.                      ,kKMMMKkkkkl,.
                     .,lkkkl,,,lkKMK,                      lMMk,,,,,,lkKKl,.
                   .lkl,.        lMl                       .kMl        .,lKKl.
                 .,ll.          .kK,                        lMK,          .lKKl.
               .lk,             lMl                         .kMl            .,kKl.
              ,Kk.             .kK,                          ,KK,             .lKKl.
            .lkl.              lMl                            lMl               .kMk.
           .kK,                lMl                            lMk.               .lKk.
         .,kK,                 lMl                            ,KMl                 ,Kk.
         lMk.                  lMl                             lMl                  ,KK,
        ,KK,                   lMl                             lMl                   ,KK,
       .kK,                    lMl                             lMl                    ,KK,
      .kMl                     lMl                            ,KMl                     lMk.
      lMk.                     lMl                            lMK,                     .kMl
     ,KK,                      lMk.                           lMl                       ,KK,
    .kK,                       .lKl                          .kK,                        lMk.
    lMl                          lK,                        .kMl                         .kMl
   .kK,                          ,kk,                      .kMk.                          lMK,
   lMl                             lKl.                  .lKKl.                           .kMl
   lMl                             .,lkl,.             .lKKl.                              lMK,
  ,Kk.                                .lKKl.         .lkkl.                                .kMl
  lMl                                   .kMl         lMl                                    lMk.
  lMl                                    lMK,       .kMl                                    ,KMl
 .kK,                                    lMk.       .kMl                                     lMl
 lMl                                   .lKK,         .kKl,.                                  lMl
 lMl                                .lkkkl.           .,lKKl.                                lMK,
.kMl                               .kKl.                 .lKKl.                              .kMl
,KMl                              ,Kk.                     .lKk.                              lMl
 lMl                             ,Kk.                        ,Kk.                             lMl
 lMl                            .kK,                          lMl                             lMl
 lMl                            lMl                           lMK,                            lMl
 lMl                           .kMl                           .kMl                            lMl
 lMl .,,,.     .,,,.     .,,,,,kMk.                            lMKllkkkl,.  .lkkkkl.  .lkkkkl,kMl
 lMKkKKkkkkl..lkkkkkkl,,lkkkkKMMMl                             lMMMKl,,lKKllKKl,,lKKllKKl,,,lKMMl
 lMMk,.  .lKKKK,   .lKMMK,   .lKMl                             lMMk.    .kMMk.    .kMMk.     ,KMl
 lMk.      ,KK,      lMK,      ,Kl                             ,Kk.      .kk.      .ll.       ,k,
 ,k,        ..       .,.        ..                              ..        ..





'), nl.

dibuja_complemento('MI') :- write('
                     .,,,,,,,,,,,,,,,,,,,lkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkl,,.
                   .lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl.
                 ,kKMMMKkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkllkkKMMMK,
                ,KMMMKl.                                                    .lKMMK,
               .kMMMk.                                                        lMMMK,
               lMMMMl                                                         .kMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                          lMMMl
               lMMMMl                                                         .kMMMl
               lMMMMl                                                         lMMMMl
               lMMMMl                                                         lMMMMl
               lMMMMl                                                         lMMMMl
               .kMMMl                                                         lMMMMl
                lMMMk,,.                                                .,,,,,kMMMMl
               ,KMMMKkkllkkkkkkkl,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,lkkkkkkllkkkkkkKMMMl
               lMMMMl   .,,,,,,,,,lkkkkkkkkkkkkkkkkkkkkkkkkkkl,,,,,,,,,.       lMMMl
   .,,.        lMMMMl                                                          lMMMl        .,,,.
  ,KMMKkkkl,,,,kMMMMl                                                          lMMMk,,,,,lkkKMMMl
  ,kKMMMMMMMMMMMMMMMk,,,,.                                            .,,,,,,lkKMMMMMMMMMMMMKkkl.
    .,,,lkkkKMMMMMMMMMMMMKkkkkkkkkkkl,,,,,,,,,,,,,,,,,,,,lkkkkkkkkkkkkKMMMMMMMMMMMKkkkkl,,,,.
            .,,,,,,lkkkkkKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKkkkkkkkl,,,.
                         .,,,,,,,lkkkkkkkkkkkkkkkkkkkkkkkkkkkkkl,,,,,,.


'), nl.

dibuja_complemento('PE') :- write('

                                                                              ..
                                                                    .,,,lkkkkkKKkkl.
                                                             .,,lkkkKMMMMMMMMMMMMMMl
                                                         .,lkKMMMMMMMMMMMMMMMMMMMMMl
                                                     .,lkKMMMMMMMMMMMMMMMMMMMMMMMKl.
                                                .,,lkKMMMMMMMMMMMMMMMMMKkkkkkl,,,.
                                             .,lKMMMMMMMMMMMMMMMKkkl,,,.
                                           .lKMMMMMMMMMMMMMKkkl,.
                                        .lkKMMMMMMMMMMMKkkl.
                                      .lKMMMMMMMMMMMKkl.
                                    .lKMMMMMMMMMKl,,.
                                  .lKMMMMMMMMMKk,                      .,,,lkkkkkkl.
                                .lKMMMMMMMMKl,.                   .,lkkKMMMMMMMMMMMK,
                               .kMMMMMMMMKl.                  .,lkKMMMMMMMMMMMMMMMMMl
                             .lKMMMMMMMMK,                 .lkKMMMMMMMMMMMMMMMMMMMMK,
                            .kMMMMMMMMKl.               .lkKMMMMMMMMMMMMMMKkkkkkl,,.
                           ,KMMMMMMMKl.              .,lKMMMMMMMMMMMMKkl,,.
                         .lKMMMMMMMK,              .lKMMMMMMMMMMMKl,,.
                        .kMMMMMMMMk.            .lkKMMMMMMMMMKkl,.
                       .kMMMMMMMMk.            .kMMMMMMMMMMKl.
                      .kMMMMMMMKl.           .lKMMMMMMMMMKl.
                      lMMMMMMMK,            .kMMMMMMMMMKl.                  .,,,lkl,.
                     ,KMMMMMMMl            ,KMMMMMMMMMk.               .,lkkKMMMMMMMK,
                    .kMMMMMMMk.           ,KMMMMMMMMKl.             .lkKMMMMMMMMMMMMMK,
                   .kMMMMMMMK,           ,KMMMMMMMMK,             ,kKMMMMMMMMMMMMMMMKl.
                   lMMMMMMMMl           ,KMMMMMMMk,.            .lKMMMMMMMMMMMKkkkl,.
                   lMMMMMMMk.          .kMMMMMMMK,            .lKMMMMMMMMMKkl,.
                  .kMMMMMMMl           lMMMMMMMK,            .kMMMMMMMMKl,.
                  lMMMMMMMk.          ,KMMMMMMMl            .kMMMMMMMMK,
                  lMMMMMMMl           lMMMMMMMMl            lMMMMMMMMk.
                 ,KMMMMMMMl           lMMMMMMMk.           ,KMMMMMMMk.
                 lMMMMMMMMl          ,KMMMMMMMl            lMMMMMMMk.
                 lMMMMMMMMl          lMMMMMMMMl           ,KMMMMMMMl
                 lMMMMMMMk.          lMMMMMMMMl           lMMMMMMMMl
                 lMMMMMMMK,          lMMMMMMMMl           ,KMMMMMMK,
                 lMMMMMMMMl          ,KMMMMMMK,            ,KMMMMK,
                 .kMMMMMMk.           ,kKMMKl.              .,,,,.
                  .lkkkkl.              .,,.







'), nl.

dibuja_complemento('PI') :- write('

                                              .ll.
                                             .kMMKkl.
                                            ,KMKKMMMk.
                                           ,KMk..lkKMk.
                                         .lKMk.    ,KMk.
                                        .kMKl.      ,KMk.
                 ,kkl.                 .kMK,         ,KMk.                .,lkkl.
                ,KMMMKl,.             ,KMK,           ,KMk.             .lKMMMMMl
                lMMk,lKMKkl.         ,KMK,             ,KMK,         .,lKMKklkMMl
                lMMl  .,lKMKl,.     ,KMK,               ,KMK,      .lKMKl,.  lMMl
                lMMl     .lkKMKl,,,lKMk. .,,,,,,,,,,,,,. .kMK,  .lkKKkl.     lMMl
                lMMl        .lKMMMMMMMKkkKMMMMMMMMMMMMMKkkKMMKkkKMKl.        lMMl
                lMK,      .,lkKMMMMKkkkkkl,,,,,,,,,,,,,lkkkkkKMMMMKl,,.      .kMK,
               ,KMl  .,lkkKMKkkl,,,.                         .,,lkkkKMKkl,.   lMMl
    ..         lMMk,lKMMKl,,.                                       .,lkKMKkl,kMMl
   ,KKkkkkl,,,,kMMMMKkl,.                                               .,lkKMMMMk,,,,,,lkkkkl.
   lMMMKkkKMMMMMMKkl.                                                       .lKMMMMMMMMMKkKMMK,
   .kMMl  .lKMMKl.                                                            .,lKMMk,,,..kMK,
    .kMk. ,KMKl.                                                                 ,KMKl. .kMMl
     ,KMKkKKl.                                                                    .lKMKlkMMk.
      ,KMMK,                                                                        .lKMMMk.
       ,Kk.                                                                           ,KMk.
        ..                                                                             .,.


'), nl.

dibuja_complemento('RI') :- write('
                                          .,lkkkkkkl,.     .,,,.
                              .,,,,,,,,,lkKMMMMMMMMMMKl,,lkKMMMKkkl.
                           .lkKMMMMMMMMMMMMKl,,,,,,lKMMMMMMMMKKMMMMKl.
                          ,KMMKkkllkkKMMMKl.        .lKMMKl,,..,,lKMMK,
                        .lKMMk.      .,ll.            .,,.        ,KMMKkkkkkl,.
                 .,lkkkkKMMMk.                                     lMMMMMMMMMMKkl.
               .lKMMMMMMMMMK,                                 ..   .lkl,,,,,lKMMMK,
              ,KMMKl,,,,,,,.                                  lKl.           .lKMMk.
             ,KMMk.                                           .kMl             lMMMl
             lMMMl             ,k,                       .,,..lKMl             lMMMKkl,.
          .,lKMMMl             lMl   .,.                 ,KMKKKkl.             ,KMMMMMMKl.
       .lkKMMMMMK,             ,KKl,lKMl                  .,,,.                 .,,,,lKMMKk,
      .kMMMKkl,,.               .lkkkkl.                                              .kMMMk.
     ,KMMKl.                                                                           .kMMMl
     lMMK,                                                                              lMMMl
     lMMk.                                               .,.                           ,KMMMl
     lMMMl          .lk,                         ,kk,   ,KMl                          .kMMMMKl.
    .kMMMK,        ,KMk.                         ,kKKl,lKMk.                           .lkkKMMK,
  .lKMMMKk,        lMK,                            .lkkkkl.                      ,kk,      .kMMK,
 .kMMKl,.          .lKKkkk,                                                ,k,   lMK,       .kMMl
 lMMK,               .lkkl.                                                ,KKkkkKK,         lMMl
 lMMl                                  .,,.            .lkl.                .,lkl,.         ,KMMl
 lMMK,                                ,KMMKl,.      .,lKMMMk.                             .lKMMk.
 ,KMMKl.                            .lKMMMMMMKkkkkkkKMMMMMMMKl,.       .,.               .kMMMMl
  ,KMMMK,               .,,,.   .,,lKMMKl,lkkKMMMMMKkkkl,,lKMMMKkkl,lkkKMK,               ,kKMMk.
  .kMMMK,              .kMMMKkkkKMMMMKl.     .,,,,,.       .,lkKMMMMMMMMMMk.                ,KMMK,
 .kMMMk.               lMMMKkKMKkkkl,.                         .,,,,,,,lKMMk.                lMMMl
 lMMMk.               .kMMK, .,.                                        ,KMMKl.              lMMMl
 lMMMl              .lKMMK,                                              ,KMMMKkl,.         ,KMMk.
 ,KMMk.          .,lKMMMK,                                                .,kMMMMMl     .,lkKMMk.
  ,KMMKl.       ,KMMMMMk.                                                  ,KMMMKl.    ,KMMMMKl.
   .lKMMKkk,    .lkKMMMk.                                                 ,KMMKl.      .kMMMk.
     .kMMMMl       .lKMMK,                                                lMMK,         .kMMk.
      lMMMk.         ,KMMl                                                lMMl           lMMK,
      lMMMl           lMMl                                                lMMK,         ,KMMl
      ,KMMk.         ,KMMl                                                .kMMKl,.   .,lKMMK,
       ,KMMKl.     .lKMMK,                                                 .lKMMMKkkkKMMMKl.
        ,KMMMKkkkkkKMMKl.                                                    .lkkkKMKkkkl.
         .,lKMMMMMMKkl.                                                           .,.
            .,,,,,,.


'), nl.

dibuja_complemento('TA') :- write('

         .,,,,,,.                                                               .,,lkkkkl,.
      .,lKMMMMMMKkl,.                                                         .lKMMMMMMMMMKl.
     ,KMMMMMMMMMMMMMk.                                                      .lKMMMMMMMMMMMMMK,
    ,KMMMMMMMMMMMMMMMK,                                                    .kMMMMMMMMMMMMMMMMK,
    lMMMMMMMMMMMMMMMMMK,                                                  .kMMMMMMMMMMMMMMMMMMl
    lMMMMMMMMMMMMMMMMMMKl,.                                            .,lKMMMMMMMMMMMMMMMMMMMl
   .kMMMMMMMMMMMMMMMMMMMMMKl.                                        .lKMMMMMMMMMMMMMMMMMMMMMMl
    ,KMMMMMMMMMMMMMMMMMMMMMMKl.                                    .lKMMMMMMMMMMMMMMMMMMMMMMKl.
     .kMMMMMMMMMMMMMKKMMMMMMMMKl.                                 ,KMMMMMMMKkkkKMMMMMMMMMMKl.
      .,lkKMMMMMMKl,..,,lKMMMMMMK,                              .lKMMMMMMKl.   .,lkkkkkkkl.
          .,,ll,,.       .kMMMMMMKl.                           ,KMMMMMMKl.
                          .lKMMMMMMK,                         ,KMMMMMMk.
                            .kMMMMMMK,                       ,KMMMMMKl.
                             .kMMMMMMk.                     ,KMMMMMK,
                              .kMMMMMMk.                   ,KMMMMMK,
                               .kMMMMMMk.                 ,KMMMMMK,
                                .kMMMMMMk.               ,KMMMMMK,
                                 ,KMMMMMMl               lMMMMMMl
                                  lMMMMMMk.             ,KMMMMMk.
                                  .kMMMMMMl            .kMMMMMK,
                                   ,KMMMMMk.           lMMMMMMl
                                    lMMMMMMl          .kMMMMMK,
                                    lMMMMMMk.         lMMMMMMl
                                    .kMMMMMMl         lMMMMMMl
                                     lMMMMMMl        ,KMMMMMK,
                                     lMMMMMMl        lMMMMMMl
                                     ,KMMMMMK,       lMMMMMMl
                                      lMMMMMMl       lMMMMMMl
                                      lMMMMMMl       lMMMMMMl
                                      lMMMMMMl       lMMMMMMl
                                      lMMMMMMl       lMMMMMMl
                                      ,KMMMMk.       ,KMMMMk.
                                       .,ll,.         .,,,,.



'), nl.


%Monstruo Entero

dibuja_monstruo(1) :- ansi_format([bold],'
                            .;.                                ..
                            ,,·.                               ,:.
                           .,..·.                             ·..,
                           .,..::.         ·lolol,.         .;· .,.
                           .:;·..·.      ,oo:...;odo;      .,;,·:;
                            ·.    ·;.  .lo,        .ll.   .·.  .;,
                            .·  .·;:,.,o:            ;d;.;c·    ,.
                             ·;,,·. .lx,              .do·.,,,·;·
                              ..    :o.                .ll.  .;;
                               .. .co.                  .co. ..
                                .;ol.                     :o;.
                                .ol.                       :d.
                               .o:                          ;o.
                              .o;     .......                ;o.
   .·,,,············.........,o,    .,·.....·,.      ....     ;o.
.;:;,...         ...........·,.     ··.....,xk;    ..   ..     ,l,.....···················,;;.
co.                                .·.      .,,. ...     ..     ...........                .,ol.
,l.                                 ..       ..   ..,:.  ..                                  ,d·
 ·c,                                 ...   ...      :o,...                                  .l,
  .;c,                                .......                                             .;c.
    .,;,.                                                                               .,:·
       ·;;,.                             .;,       .;,                                ·;;·
         .·;;,.                           .:;    .,c;                              .,;,.
            .·;;,.                          ::. .cl,                           .·,,,.
               .·;;,.                        ;c;c·                          .,;,,.
                  .oc                         ,c.                        .;;,·.
                  .o,                                                    co.
                  :l.                     .···...····.                   ·o·
                 .o;                   .;cl,.      .cc:,                  lc
                 ,o.                  ·,,:;         ,:,·,.                ;o.
                 :l                  ··                 .,.               .o,
                .l:                  .                                     cc
                .o,                                                        ;l.
                ·o·                                                        ,o.
                ,l.                                                        .o·
                ;l.                                                        .l,
                ;c                           .:·                           .c;
                ;c                         .cxodo.                          c;
                ;l.                       ,xo. .:xxc.                      .l;
                ,o.                     .ox,     .:od;                     .l,
                .o,                   .ckl.         ,dd·                   ·o·
                .l:                  ,xd·             :xo.                 ;o.
                 :o.               ·dk:                .lkl.               lc
                 .d;             .oOl.                   .okl.            ,d·
                 .ld.          ·oOo.                       ·dkd,         .dd..
             ·::;;:;.        ·dOo·                           .lkx:.      .::;;;;::·
            ,ko·          .;odc.                               .,lol;.          ·ok,
             ·::;;;;;;;;;;::·                                      ·::;;;;;;;;;;::·
                 ..····..                                              ..····..

',[]), nl.


dibuja_monstruo(2) :- ansi_format([bold],'

                     ·c:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;c·
                      lo.......................·····.......................ol
            .····..   cl                     ...   ...                     cl  ...···..
         ·:::;;;;::;::xl                    .. .:,.  ..                    ckc;;:;;;;;:c;.
       .co·.,:;;;:;,·,xl                    .. .c;.  ..                    lx,,;;:;;:;..:o·
       cl.,l:.....·;:ckl                     ...   ...                     ckc:,.....,lc.,d·
      ·d,,o·     .....dl                 ...     ..   ....                 co. ...     cl.cl
      ;o·l:    .... ..dl              ...   ...     ..    ..               cd.. ....   .o;;o.
      :l,o,   ..      cc             ..  ,o·  .    .. .cc. ..              :c      ..   lc;o.
      :l,d,   ..  ..  :c              .  ·:. ..    ..  ,,  ..              :c  ..  ..   lc;o.
      :l,d,    .....  cl               .......      ........               cl  .. ..    lc;o.
      :l,d,     ...·,·ol                      .......                      cd,,·...     lc;o.
      :l;d,      ....,kl                    .·..·....·                     cx,...       lc;o.
      :l;d,        ...dl                    .·      .·                     cd...        lc;o.
      ;l;d,           ll                     .·...··.                      cl           lc;o.
      ;l;d,           cl           .           .·..           .            cl           lc:o.
      ;l;o,           cl           .,·.                    ..,·            cl           lc:o.
      ;l;o,           cl             .;,,,...............,,;;.             cl           lc:o.
      co;o,           cl             .. .,;l,·c:·,:c:·cl.·. ..             cl           lc:d.
    ·okdlo.           cl             .. .·;,  ·:.·l:. .:·.. ..             cl           :olkx:.
    ;d:·.             cl              ....;·  .:.,x;   ;, ...              cl            ..,lo.
                      cl                  ;·  .:.,d;   ;·                  cl
                      cl                  ,:  ;; .;:. .:.                  cl
                      cl                   ,;;,.   .;,;.                   cl
                      cl                     .       .                     cl
                      cl                                                   cl
                      :d:;;;;;;;:cooooc:;;;;;;;;;;;;;;;;;:loool:;;;;;;;;;;:d:
                       .........·xx::kd..................ckl:ok:............
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                                .l:  cl                  ;o. ·d,
                             ..·:x;  cl                  ;o. .dl··.
                           .cl:,,·.  cl                  ;d.  .,,;cl·
                           .:l:;,,,;:l·                  .cc:;,,;;cc·
                              .·,,·..                       .·,,·..






',[]), nl.

dibuja_monstruo(3) :- ansi_format([bold],'
                                   ·ol.          .·:o;
                                   lNXo·        .lx0Nx.
                                   ....::.     ;c. ·c.
                                  :,    :;    ,d,  ,d.
                               .;coc,,,..c.  .ldlolooc.
                                ·dx;;c:;:l;  ·ocoOOl:lc:,
                                ·:.. ·c·;Ol  ;dl:,··,l:.lc
                                      .c·co. ;;      .o,·o·
                                       ,::xc :;       c:.l;
                                       .lxkxcoo·...   :c.cc
                                   .·;,,;od,.lo·,;;,;,ol ;l.
                                 ·;;,.   ..  ..     .·do ,o.
                               ·:;.                   :l .d:
                             .::.                     cc .dd;·
                            .lc............;·..... ...co,cc..::.
                           .lo:::..·..,:;ldl:,..·. .;::lc,    .:;.
                           ;c    ..  . .·,.   .    .            ,c.
                           :;        .·,.                        .c,
                           :;      .,,.    ..                     .c,
                           ·c.     ,:..... ·:.                     .l·
                            ;c.     .·····...                       ·c.
                             ;c.       ..             ..             ::
                              .;;,..   ..,:·     .;:;·.              .c.
                                .·,,,···;lc,.....,;;·.                :;
                                         ;c. ....                     ;:
                                         .c,                          ,c.
                                          :,                          ·l.
                                          :,                          ·l.
                                         .c·                          ,c.
                                         ;c.                          ;:
                                        ,c.                           :;
                                      .:;.                           .c·
                                     ·c·                             ,c.
                                    :c.                              c;
                                   :c                               ·l.
                                  ·c.                               ::
                                  ,c.                              .l.
                                  .c.                             .c;
                                   ;c                            .c:
                                   .c:                          .c,
                                    .::.                      .::.
                                      ,c,                   .c:.
                                      .ld;;·.         .·.   c:
                                      ,l. :x:,·······,,do. ,l.
                                     .l: .l:          .l; .l;
                                 ..·,cl. ;l.     ...·,cl. ;l.
                                cdcc::·.·o;    .cocccc:·.,o,
                                ·;,;;;;;;·      ·;,,;;;;;;·





',[]), nl.

dibuja_monstruo(4) :- ansi_format([bold],'


                                                     ..··,,,,·..
                                                .,;;;;,,·...·,,;;;,.
                                              ,;;,·.             .·;:,.
                                           .,:,.                     ,:;.
                                          ,c,                          ·c;.
                                        .c:.                             ,c·
                                       ,l,....           ...          ... .c;
                                      ;c...    ..     ..    ..     ..    ...:c.
                                     ;c... .::. ..   ..  ,l.  .   ..  ;c.  ..:c.
                                    ;l. .. .:;. ..   ..  ,c.  .   ..  ;:.  .  cc.
                                   ,l.   ..    ..      ..   ..     ...   ..   .c:
                                  .l,             ...           ..             .l,
    .............                 c:           ..     ..     ..    ..           ,l.
   .,;·.......·;,.               ·l.          .  .:c,  ..   .. .:;  ..           c;
      ...   ..·;,,,,,,·..        c:           .  .cl,  ..   .. .c;  ..           ,l.
        ...·.        ..·,·..    ·l.            ..     ..     ..    ..            .c;
                        .·.·.   :c                     .;lol:.                    ;c
                        .·..·  .c;                    ,0WMMMWK;                   ·l.
                       ....·.  .l·                   .xMMMMMMMk.                  .l,
                    .......    ,l.                    :KMMMMMXc                    c;
                 ........      ,c.                     .lxkxl·                     ::
             ..........        ;c.                                                 :c
          ..... ....           ;c.        ..·,:cllloooooolloooooooooolc:,·.        :c
       ....   ....             ,c.           ....··,;;::llcccccc::;;,·...          ::
     ...    ...                ,l.                      .·                         c:
    ..    .·.                  .l.                     ...                        .c,
   ..    .·.                   .l,                    ...                         .l·
   ·.    ..                     ::                  ....                          ;l.
   .·.    ...                   ;c              .......                          .l:
    .·.    .....                c:         .......·..                            .o,
      ....     .........       .l,               ..                               c:
         .....       ..........cl.              .                                 ;l.
            ........          .l;                                                 .l,
                 ..........   ,l.                                                  ;c.
                        .....·o;                                                   .l,
                             ;l.                                                    ;l.
                            .l,                                                      c:
                            c:                                                       .l·
                           ;c.        .,.                                  .·         ,l.
                          ,l.        ·ok;                                 .ok:.        ;c.
                         ,l.      .;:;.c:                                 .l;·:;·       :c.
                        ,c.    .,;;·   c:                                 .l·  .,;;·.    ;c.
                      .:c.  .;;;·      c;      .;cc.            .:l·      .l,     .,;;,.  ,c·
                     ,c,.·;;;.        .l,     ·c,l0c    .c;.    ·o:::.     c;        .,;;,..::.
                   ,llc;;,.           ,l.  .,:;. :0c   ;c,;lc.  ·l· ,:;.   ;c.          .·;;:ll:.
                  ,dc,·.             .c;.·;:,.  .cO; ,c;.   ,c;..l,   .;:,..l,              .,;ol.
                                     cxc;;.     .dOo:;.       ·::d:     .,;;dd.
                                   ·cl:.         .;·            .·.        .·cl;.
                                   ..                                         .·.


',[]), nl.

dibuja_monstruo(5) :- ansi_format([bold],'



                            ..    ..             ...    ..
                            .   ·:...           .. .,:.  ..
                            .  .cd,..      ..    ...cd·  ..
                             .....cc.   ..:c.    ,oo;....
                                  ,xx·   ·dc   .lOOl.
                                   .d0:  ·dc. .x0;
                                    .xK:·c,:;.xK;
                                     ·0Xx, .c0Xl
                                      lXc   .kO.
                       .,::c·         :l.    ,l.          ·c::,.
                      :OOxOkl.       ·c.      ;c.        ·lkkxOk;
                      :o:·.,c:      .c·        :;        :c·.·:o;
                      .:;,.,l.     .c;         .c,       .l,.,;;.
                        .,c;::     ::  .     .  .cl.     ::;c·
                          ,c·::   ;c. .lk:.,xx·  ,oc.  .:;·c·
                           ;:.::.·c.   .l0XXx·     ;c..c;.c;
                           .c;.;ol·    ,x0xOk:.     :ll;.::
                ...         .c·.o:    .lo. .cd·     .ol ,c.         ...
             .:odxk:         ·lo;  ...         ..... .ccc.         ckxxo:.
             cOOoooc;         lo...;c:··,....·.,ccl;..;x;         ;coooOO:
             ,l;. .c:        ·c,.. ·:,.·o;..cl..;:c. .·c:.        :c. .;l,
             .;;;,,l·       .c,..   .   .    .  ...   .·c;        ,l,,;;,
                .c:,c.     .c;..                      ...c,      .c,:c.
                 .c,·c.    ::  ..  .,. .;.  ·, .·,,.  .. .c.    ·c·;c.
                  .l··l·  ,c.   ...;c:.,l,..:c.·:co;...   ,c.  ·c.·c.
                   ,c..c··c.      .·;,..      ..;;;·.      ;:.,c..l·
          ....      ;c..od·                                .:dc..c;      ....
       .:odxko.      c;.c;                                  .o; ::      .okxdl;.
       ,k0dool:      .cxc                                    .lo:.     .:lood0x,
       ·l;...:c.      :l.                                     ;d·      .c:...:l.
        ·;;,·l,      ·c.                                       ;:       ;l·,;;·
          .c:,c.    .c,                                        .c;     .c,:c.
           .c,,c.  .:;                                          .c,   .c,,c.
            ,c.;c. ;:                                            .c. .c,.c·
             ::.;ccc.                                             ,c·c;.c;
             .c, cx.                                               :x; ;c.
              ·c;:,                                                .c;·c.
               ;x;                                                  .lx,
               ;c.                                                   ·l·
              ,c.                                                     ,c.
             .c.          .·,,,,,·.                  .,,,,,,.          ::
            .c,          ;:,.. ..,:,               .:;·.  .·;:.        .:;
            cc.        .c:         :c.           ,ol.        ·l,        ·l,
           .;;.·······.:o.         .o:···········o0:          :o·········;·
                       .c,         ;c.           ,xc.        .c,
                        .c;.     .;:.             .,c·      ·c,
                          ·;,,,,,;·                 .,,,,,,,,.
                             ...                        ..


',[]), nl.

dibuja_monstruo(6) :- ansi_format([bold],'

                                  ......  ..           ..
                        .·..,;;;;,:;,:::xxc::c:,·,;,;;·;c···.
                     ...:cc:colccldxOxc;oxddclollclccodl:cc;,;ll::lolclc· ..,..
          .  .. ...·dxccool:,dd;lkdooc;,od::;lddo;;lkxkdcdo;;:ldco0KKKko;···;:.
        .,.  ;,.,;·,xo:llcldc:ll:ldocc:collc:ol:codoo:,:lxx;,;·;oxkOOxcclc:c;..
         ...·:c;:lclooldxdoxd::lodkxok0OxdkOOOxdkOO0Kkxkk00xkOd:c:;od:;lxkOxxkxl;,·...
         ,;.,loccoxkOxk0kdxkdlxd:::loxOOOOddxOkkKK0kdokdoxOxdlcoxdoO0xddolodkkkxol;...
       .·co:,oddkOKKkx0XOc··,cx:.cdc;:lkKX0OO0KKKKKOkOOooxl,·,;;:loddlokxookOo:lood:·. ..
    ....·ckkddoxxoxdcldxdoo:.;xl:dkk0K0kxccxO0XXKOkxdk0K0x:,c:·;lc:cdkocdOxdxxoox0k:,;,·;·
   ·,..cclxo;,ld::odkkl::::·  ;loO0Oo;.. ,OWMWNXXx;. .oOk0Odo:,l:..;xkl;cl,·cxxxx0kc;::;:c·
    . .cxxc;,;clokOo:oko:;:,.  ,kX0:     lWMMWXKXkc. .:ocxNNx:oxc·.,:coc:locclcld00Oo:;·.·.
      ..cd;,,·cddOO;.·,·....    .cOKkc·. .xNMWNNK:.  .lOK0d;·:lc::,,col:;okkOxloxOoldl;.
      ...;cc;:xdldxl,.             ·lk0Oxllx000Odllok0Od:.     .  .,cdlcooOOkOxdodo:lc;.
          .cxO0xc;:dd·                .,coxkkkkkkdol:·.            .;dooxdOK0kkxllc:c,.
           .cokxcclll;.                      ..                    .:kkollx0o;lol::·..
           ...cdoddolc:;,,;;,,·...           .c.         ...·,,;;,,:ll:·,;cc:::od;
             ·;·:ol::;.   ...·,,,l;           ;l.       .l:,,·...   .·. .·..,lxd;.
             ......,loc;.        :;            :l.      .c·         ..     ...,,..
             .;::;. ·:;,.       .c.             cc.      ;:              ·::cc...
            .l;  ,l·            ,:              .dO:     ·c.            ;l...cc.
           .l,    ·l·           :; ..        .;;;::·    ..:·           :c.    cc
          .l;      .::,.       .c·  ·. .,.   .·.  .·.  ·. ;;        .;c;.     .l;
          ;l.        .,;,,;;;;;lo.   .;ll.       .:cc:,.  ,o:;;;;,,;;,.        ,o.
          ·l:,.           .....;c.     .;;·......;::,.    ·l·.....           .;cc.
            .,::·              ,c.        .......         ·c.             .,:;·.
               .;;;;,..........cc                         .l;.........·,;;;,.
                  ..,,;;;;,;;;;oc                         .ll;;;,,;;;;,·.
                               ,:                         .c·
                               ,:                         .c.
                               ,:                         .c.
                               ·c.                        ·c.
                               .c.                        ,c.
                               .c·                        ;:
                                :;                        c;
                                ;:                       .c·
                                .c.                      ·c.
                                 c;                      :;
                                 ,c.                    .l.
                                 .c,                    ::
                          .·,;,,,,ol.                  .ol,,,;;,.
                        ·::,·..   .c;                  ::    ..·;:;.
                      .:c.     ..··cx,                ;d;··..     ,l,
                      cc     .c:,,,,cl.              ·l:,,,;c;     .l,
                     ·o·     .l,     ·l·            ,c.     cc      :l
                     .cc.     .l;     .c;        ..;c.    .c:.     ·l;
                      .cd.     .;l,     ,:,.   .,::,    .;c·      ;d,
                     ·;:·       .;dd·    .·;,·,;·      ;xl·       .;:;.
                    ,dl;;;;;,,,,;;;;.                  ·;;;,,,,;;;;;;oo.
                     .......                                   ........



',[]), nl.
