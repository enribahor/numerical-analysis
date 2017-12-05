function [t,x] = puntomedio(f, intervalo, x0, N)

% Preparación de los datos
r = 2;
m = 1;
h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);

%Pasos 1 y 2
[t_aux,x] = eulermej(f,[t(1) t(2)], x0, 1);
x = x.';
fres(:,1) = feval(f,t(1),x(:,1));
fres(:,2) = feval(f,t(2),x(:,2));

%Paso 3
for i=1:N-r
	x(:,i+2) = x(:,i+1) + h / 2 * (3 * feval(f,t(i+1),x(:,i+1)) - feval(f,t(i),x(:,i)));
	for j=1:m
		fres(:,i+r) = feval(f,t(i+r),x(:,i+r));
		x(:,i+2) = x(:,i+1) + h / 12 * (5 * fres(:,i+2) + 8 * fres(:,i+1) - fres(:,i));
	end
	fres(:,i+r) = feval(f,t(i+r),x(:,i+r));
end

%Paso 3
x(:,N+1) = x(:,N) + h / 2 * (3 * feval(f,t(N),x(:,N)) - feval(f,t(N-1),x(:,N-1)));
for j=1:m
	fres(:,N+1) = feval(f,t(N+1),x(:,N+1));
	x(:,N+1) = x(:,N) + h / 12 * (5 * fres(:,N+1) + fres(:,N) - fres(:,N-1));
end

% Preparación de los resultados
t = t(:);
x = x.';