function [t,x] = milne(f, intervalo, x0, N)

h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);
[~,x0] = rk3(f, [t(1) t(4)], x0, 3);
x = x0.';

for i=1:N-3
	x(:,i+4) = x(:,i) + (4*h)/3 * ( 2 * feval(f,t(i+3),x(:,i+3)) - feval(f,t(i+2),x(:,i+2)) + 2 * feval(f,t(i+1),x(:,i+1)) );
end

t = t(:);
x = x.';