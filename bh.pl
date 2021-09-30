%Base de hechos
%Partes del Monstruo.
%
%Cuerpos
cuerpo('PE',0).
cuerpo('CA',1).
cuerpo('FA',1).
cuerpo('SA',1).
cuerpo('MU',2).
cuerpo('PO',2).
cuerpo('RE',2).
cuerpo('TE',3).
cuerpo('CU',4).
cuerpo('TU',5).

%Ojos
ojo('TO',0).
ojo('NO',1).
ojo('SU',1).
ojo('CA',2).
ojo('MA',2).
ojo('PU',2).
ojo('TI',2).
ojo('SO',3).
ojo('GA',4).
ojo('LE',5).

%Nariz
nariz('SI',0).
nariz('CA',1).
nariz('DE',1).
nariz('GO',1).
nariz('LI',1).
nariz('CO',2).
nariz('ME',2).
nariz('PO',3).
nariz('MO',4).
nariz('NA',5).

%Bocas
boca('LO',0).
boca('RO',0).
boca('PA',1).
boca('CA',2).
boca('DI',2).
boca('DO',2).
boca('LA',2).
boca('SE',3).
boca('DA',4).
boca('RA',5).

%Complementos
complemento('RI',0).
complemento('CO',1).
complemento('LA',1).
complemento('CA',2).
complemento('CU',2).
complemento('LU',2).
complemento('TA',2).
complemento('PE',3).
complemento('MI',4).
complemento('PI',5).

%Listas
cuerpos(['PE', 'CA', 'FA', 'SA', 'MU', 'PO', 'RE', 'TE', 'CU', 'TU']).
cuerposP([0, 1, 1, 1, 2, 2, 2, 3, 4, 5]).

ojos(['TO','NO','SU','CA','MA', 'PU', 'TI', 'SO', 'GA', 'LE']).
ojosP([0, 1, 1, 2, 2, 2, 2, 3, 4, 5]).


narices(['SI','CA','DE', 'GO', 'LI', 'CO', 'ME', 'PO', 'MO', 'NA']).
naricesP([0, 1, 1, 1, 1, 2, 2, 3, 4, 5]).

bocas(['LO', 'RO', 'PA', 'CA', 'DI', 'DO', 'LA', 'SE', 'DA', 'RA']).
bocasP([0, 0, 1, 2, 2, 2, 2, 3, 4, 5]).


complem(['RI', 'CO', 'LA', 'CA', 'CU', 'LU', 'TA', 'PE', 'MI', 'PI']).
complemP([0, 1, 1, 2, 2, 2, 2, 3, 4, 5]).
