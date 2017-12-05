% Inicialización de los datos
f=@funcestabs50; 
intervalo=[0 1]; 
x0=0;
N1=24;

% I
h1 = (intervalo(2) - intervalo(1)) / N1;
t1 = linspace(intervalo(1), intervalo(2), N1+1);
x1(:,1) = x0(:);
for i=1:N1
    x1(:,i+1) = x1(:,i) + h1 * feval(f,t1(i),x1(:,i));
	x1(:,i+1) = x1(:,i) + h1 * feval(f,t1(i+1),x1(:,i+1));
end
x1=x1.';   % Convertimos la matriz x1 en una de tipo (N1+1, n)

% II
[t2,x2] = ode45(f, intervalo, x0);

color=['r' 'g'];
figure(1)
plot(t1(:),x1(:,1),color(1));
hold on;
plot(t2(:),x2(:,1),color(2));