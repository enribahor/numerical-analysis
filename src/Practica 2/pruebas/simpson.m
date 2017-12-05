function [t, x] = simpson(f, intervalo, x0, N)
    %Calculamos el ancho del intervalo
    h = (intervalo(2) - intervalo(1)) / N;
    %Definimos los puntos
    t = linspace(intervalo(1), intervalo(2), N+1);
    x0=x0(:);
    %Hacemos la prediccion con Runge-Kutta
    x(:, 1) = x0;
    [~, z] = rk3(f, intervalo, x0, N);
    z = z.';
    
    %Hacemos una iteracion de correccion con Simpson
    %Utilizando la prediccion de Runge-Kutta
    %Al ser de dos pasos necesitamos arrancar con el segundo punto
    x(:, 2) = z(:,2);
    
    for i = 1:N-1
        x(:, i + 2) = x(:, i) + (h/3) * (f(t(i), x(:, i)) + 4 * f(t(i+1), x(:, i+1)) + f(t(i+2), z(:, i+2)));
    end

    t = t(:);
    x = x.';
    
end
