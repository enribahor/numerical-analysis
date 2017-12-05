function [t,x] = ab3(f, intervalo, x0, N)

h = (intervalo(2) - intervalo(1)) / N;
t = linspace(intervalo(1), intervalo(2), N+1);
[x,x] = eulermej(f, [t(1) t(3)], x0, 2);
x = x.'

for i=1:N-2
	x(:,i+3) = x(:,i+2) + h / 12 * (23 * feval(f,t(i+2),x(:,i+2)) - 16 * feval(f,t(i+1),x(:,i+1)) + 5 * feval(f,t(i),x(:,i)));
end

t = t(:);
x = x.';