function [t,x]=euler(f,intervalo,x0,N)

% La función euler resuelve un problema de valor inicial de la forma
%  x'=f(t,x) en [t0,T]
%  x(t0)=x0,
% con x0 en R^n, mediante el método de Euler (explícito)
% 
% ENTRADA:
%  f=@func: función f definida en el fichero func.m
%  intervalo: [t0,T], donde esta planteado el sistema de ecuaciones
%             diferenciales
%  x0: vector inicial de R^n
%  N: número de subintervalos
%
% SALIDA:
%  t: vector de abscisas donde se va a aproximar la solución
%  x: matriz de ordenadas de la solución aproximada de tamaño (N+1) x n

h=(intervalo(2)-intervalo(1))/N;
%t=intervalo(1):h:intervalo(2);
t=linspace(intervalo(1),intervalo(2),N+1);
x0=x0(:); % Convertimos x0 en vector columna
x(:,1)=x0;
for i=1:N
    x(:,i+1)=x(:,i)+h*feval(f,t(i),x(:,i));
end
t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)