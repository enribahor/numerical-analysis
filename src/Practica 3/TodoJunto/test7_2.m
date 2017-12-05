f=@funchoja2pr5; intervalo=[0 100]; x0=1; N=1000000000;
[t,x] = puntomedio(f,intervalo,x0,N);
graficas
pause(2)

[t,x] = ab2(f,intervalo,x0,N);
graficas
pause(2)

f=@funchoja2pr6; intervalo=[0 100]; x0=1; N=100000;
[t,x] = puntomedio(f,intervalo,x0,N);
graficas
pause(2)

[t,x] = ab2(f,intervalo,x0,N);
graficas