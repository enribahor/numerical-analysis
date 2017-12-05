function f = funcvanderpol(t, x)
    alpha = 1;
    beta = 1;
    
    f1 = x(2);
    f2 = - alpha * (x(1)^2 - beta) * x(2) - x(1);

    f=[f1; f2];
end