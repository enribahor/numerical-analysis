function f=funccorazon_espacial(t,x)

    f1 = x(2);
    f2 = -16*x(1)+4*sin(2*t);
    f3 = x(1)+4*x(3);
    
f=[f1;f2;f3];
