% Inicialización de los datos
f=@funcestabs; 
intervalo=[0 1]; 
x0=0;
mi=50;
N1=24;
N2=26;

% I
h1 = (intervalo(2) - intervalo(1)) / N1;
h2 = (intervalo(2) - intervalo(1)) / N2;
t1 = linspace(intervalo(1), intervalo(2), N1+1);
t2 = linspace(intervalo(1), intervalo(2), N2+1);
x1(:,1) = x0(:);
x2(:,1) = x0(:);
for i=1:N1
    x1(:,i+1) = x1(:,i) + h1 * feval(f,t1(i),x1(:,i),mi);
end
for i=1:N2
    x2(:,i+1) = x2(:,i) + h2 * feval(f,t2(i),x2(:,i),mi);
end

x1=x1.';   % Convertimos la matriz x1 en una de tipo (N+1, n)
x2=x2.';   % Convertimos la matriz x2 en una de tipo (N+1, n)

% II
color=['r' 'g'];
figure(1)
plot(t1(:),x1(:,1),color(1));
hold on;
plot(t2(:),x2(:,1),color(2));