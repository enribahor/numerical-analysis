function [t, x] = computaMetodo( met )
datos
if strcmp( met, 'euler')
    [t, x] = euler(f, intervalo, x0, N);
elseif strcmp(met, 'eulermod')
    [t, x] = eulermod(f, intervalo, x0, N);
elseif strcmp(met, 'eulermej')
    [t, x] = eulermej(f, intervalo, x0, N);
elseif strcmp(met, 'rk3')
    [t, x] = rk3(f, intervalo, x0, N);
elseif strcmp(met, 'rk4')
    [t, x] = rk4(f, intervalo, x0, N);
else
    [t, x] = ode45(f, intervalo, x0, N);
end

