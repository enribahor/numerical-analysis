function [t,x] = ab4(f, intervalo, x0, N)

h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);
[x,x] = rk3(f, [t(1) t(4)], x0, 3);
x = x.'

for i=1:N-3
	x(:,i+4) = x(:,i+3) + h / 24 * (55 * feval(f,t(i+3),x(:,i+3)) - 59 * feval(f,t(i+2),x(:,i+2)) + 37 * feval(f,t(i+1),x(:,i+1)) - 9 * feval(f,t(i),x(:,i)));
end

t = t(:);
x = x.';