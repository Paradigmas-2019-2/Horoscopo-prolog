menu :- write('Bem vindo ao Horóscopo!'), nl,
        write('Escolha uma das opções:'), nl,
        write(' Digite 1 para descobrir seu signo!'),nl,
        write(' Digite 2 para ver seu ascendente'),nl,
        write(' Digite 3 para sair'),nl,
        read(Op),
        opcao(Op).

% if Op == 1:
opcao(1) :- userData().

% if Op == 2:
opcao(2) :- ascendente().

% if Op == 3:
opcao(4) :- write('Até mais!'),nl,
            halt.

userData() :-
            write('Digite o mes de seu nascimento: '),nl,
            read(Mes),
            write('Digite o dia de seu nascimento: '),nl,
            read(Dia),
            signo(Mes,Dia).

signo(1,Dia):- 
  Dia =< 20, capricornio().

signo(1,_):- aquario().
signo(2,Dia):-  Dia =< 19, aquario().
signo(2,_):- peixe().

signo(3,Dia):-  Dia =< 20, peixe().
signo(3,_):- aries().

signo(4,Dia):-  Dia =< 20, aries().
signo(4,_):- touro().

signo(5,Dia):-  Dia =< 21, touro().
signo(5,_):- gemeos().

signo(6,Dia):-  Dia =< 21, gemeos().
signo(6,_):- cancer().

signo(7,Dia):-  Dia =< 22, cancer().
signo(7,_):- leao().

signo(8,Dia):-  Dia =< 22, leao().
signo(8,_):- virgem().

signo(9,Dia):-  Dia =< 23, virgem().
signo(9,_):- libra().

signo(10,Dia):-  Dia =< 23, libra().
signo(10,_):- escorpiao().

signo(11,Dia):-  Dia =< 22, escorpiao().
signo(11,_):- sargitario().

signo(12,Dia):-  Dia =< 21, sargitario().

signo(12,_):- sargitario().


capricornio():-write("Capricornio\n").
aquario():- write("Aquario\n").
peixe():- write("Peixe\n").
sargitario():- write("Sargitário\n").
escorpiao():- write("Escorpião\n").
virgem():- write("Virgem\n").
touro():- write("Touro\n").
leao():- write("Leão\n").
libra():- write("Libra\n").
cancer():- write("Cancer\n").
aries():- write("Aries\n").
gemeos():- write("Aries\n").