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
opcao(2) :- write('Até mais!'),nl,
            halt.

userData() :-
            write('Digite o dia de seu nascimento: '),nl,
            read(Dia),
            write('Digite o mes de seu nascimento: '),nl,
            read(Mes),
            signo(Mes,Dia).

signo(1,Dia):- Dia =< 21, capricornio().
signo(1,_):- aquario().

signo(2,Dia):-  Dia =< 19, aquario().
signo(2,_):- peixe().

signo(3,Dia):-  Dia =< 20, peixe().
signo(3,_):- aries().

signo(4,Dia):-  Dia =< 21, aries().
signo(4,_):- touro().

signo(5,Dia):-  Dia =< 20, touro().
signo(5,_):- gemeos().

signo(6,Dia):-  Dia =< 21, gemeos().
signo(6,_):- cancer().

signo(7,Dia):-  Dia =< 22, cancer().
signo(7,_):- leao().

signo(8,Dia):-  Dia =< 23, leao().
signo(8,_):- virgem().

signo(9,Dia):-  Dia =< 22, virgem().
signo(9,_):- libra().

signo(10,Dia):-  Dia =< 23, libra().
signo(10,_):- escorpiao().

signo(11,Dia):-  Dia =< 22, escorpiao().
signo(11,_):- sargitario().

signo(12,Dia):-  Dia =< 21, sargitario().

signo(12,Dia):- Dia > 21, capricornio().


capricornio():-
        write("Seu signo é Capricornio.\n"), 
        random(0,2,X), 
        gerarFrase(X).
        
aquario():- 
        write("Seu signo é Aquario.\n"), 
        random(0,2,X), 
        gerarFrase(X).
        
peixe():- 
        write("Seu signo é Peixe.\n"), 
        random(0,2,X), 
        gerarFrase(X).

sargitario():-
        write("Seu signo é Sargitário.\n"), 
        random(0,2,X), 
        gerarFrase(X).

escorpiao():-
         write("Seu signo é Escorpião.\n"), 
        random(0,2,X), 
        gerarFrase(X).

virgem():- 
        write("Seu signo é Virgem.\n"), 
        random(0,2,X), 
        gerarFrase(X).

touro():- 
        write("Seu signo é Touro.\n"), 
        random(0,2,X), 
        gerarFrase(X).

leao():-
        write("Seu signo é Leão.\n"), 
        random(0,2,X), 
        gerarFrase(X).
        
libra():- 
        write("Seu signo é Libra.\n"), 
        random(0,2,X), 
        gerarFrase(X).

cancer():- 
        write("Seu signo é Cancer.\n"), 
        random(0,2,X), 
        gerarFrase(X).

aries():- 
        write("Seu signo é Aries.\n"), 
        random(0,2,X), 
        gerarFrase(X).

gemeos():- 
        write("Seu signo é Gemeos.\n"), 
        random(0,2,X), 
        gerarFrase(X).


gerarFrase(0):-
            write("Você terá "),
            random(0,4,X),
            seleciona(['amor.','novas amizades.', 'companhia.', 'azar no amor.','inimizades.'],X,H).

gerarFrase(1):-
            write('Você deve Buscar '),
            random(0,2,X),
            seleciona(['se afastar de ','se aproximar de ','investir mais em vc e '],X,H),
            random(0,2,Y),
            seleciona(['amizades antigas.','amizades novas.','relacionamento.'],Y,H).

gerarFrase(2):-
            write("Você conseguirá "),
            random(0,2,X),
            seleciona(['prosperidade.', 'paz.', 'emprego desejado.'],X,H).

imprimeQuestao().
imprimeQuestao(X):-
        format("~w\n", X).


seleciona([X|_],0,H):-
        imprimeQuestao(X),!.
         
seleciona([_|Z],Y,H):-
        Y > 0, 
        Y1 is Y-1,
        seleciona(Z,Y1,H). 

% Você terá ','Você deve Buscar ', 'Você conseguirá']

% voce tera
%['amor ','amizade ', 'companhia', 'azar','inimizades']

% vc deve buscar 
%['se afastar de ','se aproximar de ','investir mais em vc e ']
%['amizades antigas.','amizades novas.','relacionamento.']

% voce conseguirá
%['prosperidade', 'paz', 'emprego desejado', '']