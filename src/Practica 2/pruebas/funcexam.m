
function f = funcexam( t, x )
f1 = x(2);
f2 = 3*x(1) + sqrt(t) - (1/10) * cos(t) * (x(2))^2 ;
f = [f1; f2];
end

