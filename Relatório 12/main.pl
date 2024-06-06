% fatos
resultado(joao, 8).
resultado(maria, 7).
resultado(pedro, 5).
resultado(jose, 6).
resultado(ana, 9).
falta(joao, 2).
falta(maria, 0).
falta(pedro, 5).
falta(jose, 1).
falta(ana, 0).

% regras
reprovado(X) :-
    resultado(X, Nota),
    (Nota < 6 ; (falta(X, F), F > 3)).
    
aprovado(X) :-
    resultado(X, Nota),
    falta(X, F),
    Nota >= 7,
    F =< 1.

% Ex 1)
% a) consulta para o aluno "joao":
% ?- resultado(joao, X).
% X = 8. 

% b) Consulta para encontrar alunos com faltas:
% ?- falta(X, Y), Y > 0.
% X = joao,
% Y = 2 ;
% X = pedro,
% Y = 5 ;
% X = jose,
% Y = 1.

% c) Consulta para verificar se o aluno "jose" está reprovado:
% ?- reprovado(jose).
% false. % josé não está reprovado.

% Ex 2)
% Consulta para os alunos aprovados:
?- aprovado(X).
% X = maria ;
% X = ana.