function [t, x] = rk3(f, intervalo, x0, N)
    %Runge-Kutta de tres etapas. version examen.
    h = (intervalo(2) - intervalo(1)) / N;
    t = linspace(intervalo(1), intervalo(2), N+1);
    x0=x0(:);
    x(:, 1) = x0;
    for i = 1:N
        F_1 = f(t(i), x(:, i));
        F_2 = f(t(i) + ((4*h)/3), x(:, i) + ((4*h)/3) * F_1);
        F_3 = f(t(i) + h, x(:, i) + ((7*h)/8) * F_1 + (h/8) * F_2);
        x(:, i + 1) = x(:, i) + (h/8) * (3*F_1 - 3*F_2 + 8*F_3);
    end

    t = t(:);
    x = x.';
end
