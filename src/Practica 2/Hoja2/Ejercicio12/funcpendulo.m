function f = funcpendulo(t, x)

datospendulo;

L = 1;
F = 1;
beta = 0.5;

f1 = x(2);
f2 = (F - m*g*sin(x(1)) - 2*L*beta*x(2))/(m*L);

f = [f1; f2];       
end
