function [t,x] = puntomedio(f, intervalo, x0, N)

h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);
% [x,x] = euler(f, [t(1) t(2)], x0, 1);
% x = x.'
x(:,1) = x0(:);
x(:,2) = x(:,1) + h * f(t(1),x(:,1));

for i=1:N-1
	x(:,i+2) = x(:,i+1) + h / 2 * (3 * feval(f,t(i+1),x(:,i+1)) - feval(f,t(i),x(:,i)));
end

t = t(:);
x = x.';