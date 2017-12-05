function [t, x] = rk4(f, intervalo, x0, N)
    h = (intervalo(2) - intervalo(1)) / N;
    t = linspace(intervalo(1), intervalo(2), N+1);
    x0=x0(:);
    x(:, 1) = x0;
    for i = 1:N
        F_1 = f(t(i), x(:, i));
        F_2 = f(t(i) + h/2, x(:, i) + (h/2) * F_1);
        F_3 = f(t(i) + h/2, x(:, i) + (h/2) * F_2);
        F_4 = f(t(i) + h, x(:, i) + h * F_3);
        x(:, i + 1) = x(:, i) + (h/6) * (F_1 + 2*F_2 + 2*F_3 + F_4);
    end

    t = t(:);
    x = x.';
end
