function [t,x] = puntomedio(f, intervalo, x0, N)

% Preparación de los datos
r = 3;
m = 1;
h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);

%Pasos 1 y 2
[t_aux,x] = rk3(f,[t(1) t(3)], x0, 2);
x = x.';
for i=1:r
	fres(:,i) = feval(f,t(i),x(:,i));
end

%Paso 3
for i=1:N-r
	x(:,i+3) = x(:,i+2) + h / 12 * (23 * fres(:,i+2) - 16 * fres(:,i+1) + 5 * fres(:,i));
	for j=1:m
		fres(:,i+r) = feval(f,t(i+r),x(:,i+r));
		x(:,i+3) = x(:,i+2) + h / 24 * (9 * fres(:,i+3) + 19 * fres(:,i+2) - 5 * fres(:,i+1) + fres(:,i));
	end
	fres(:,i+r) = feval(f,t(i+r),x(:,i+r));
end

%Paso 4
x(:,N+1) = x(:,N) + h / 12 * (23 * fres(:,N) - 16 * fres(:,N-1) + 5 * fres(:,N-2));
for j=1:m
	fres(:,N+1) = feval(f,t(N+1),x(:,N+1));
	x(:,N+1) = x(:,N) + h / 24 * (9 * fres(:,N+1) + 19 * fres(:,N) - 5 * fres(:,N-1) + fres(:,N-2));
end

% Preparación de los resultados
t = t(:);
x = x.';