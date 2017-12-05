function [t,x] = ab5(f, intervalo, x0, N)

h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);
[~,x] = rk4(f, [t(1) t(5)], x0, 4);
x = x.';

for i=1:N-4
	x(:,i+5) = x(:,i+4) + (h/720)* (1901*feval(f, t(i+4), x(:,i+4)) - 2774*feval(f,t(i+3),x(:,i+3)) + 2616* feval(f,t(i+2),x(:,i+2)) - 1274 * feval(f,t(i+1),x(:,i+1)) + 251 * feval(f,t(i),x(:,i)));
end

t = t(:);
x = x.';