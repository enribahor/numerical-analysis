function [t, x] = eulermej(f, intervalo, x0, N)
    h = (intervalo(2) - intervalo(1)) / N;
    t = linspace(intervalo(1), intervalo(2), N+1);
    x0=x0(:);
    x(:, 1) = x0;
    for i = 1:N
        F_1 = f(t(i), x(:, i));
        F_2 = f(t(i+1), x(:, i) + h * F_1);

        x(:, i + 1) = x(:, i) + (h/2) * (F_1 + F_2);
    end

    t = t(:);
    x = x.';
end
