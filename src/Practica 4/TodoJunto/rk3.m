function [t, x] = rk3(f, intervalo, x0, N)
    h = (intervalo(2) - intervalo(1)) / N;
    t = linspace(intervalo(1), intervalo(2), N+1);
    x0=x0(:);
    x(:, 1) = x0;
    for i = 1:N
        F_1 = f(t(i), x(:, i));
        F_2 = f(t(i) + h/2, x(:, i) + (h/2) * F_1);
        F_3 = f(t(i) + (3*h)/4, x(:, i) + (3*h/4) * F_2);
        x(:, i + 1) = x(:, i) + (h/9) * (2*F_1 + 3*F_2 + 4*F_3);
    end

    t = t(:);
    x = x.';
end
