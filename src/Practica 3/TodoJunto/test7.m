f=@funchoja2pr1; intervalo=[0 100]; x0=0; N=1000;
[t,x] = puntomedio(f,intervalo,x0,N);
graficas
sprintf('Punto medio')
pause(3)

[t,x] = ab2(f,intervalo,x0,N);
graficas
sprintf('ab2')
pause(3)

[t,x] = ab3(f,intervalo,x0,N);
graficas
sprintf('ab3')
pause(3)

[t,x] = ab4(f,intervalo,x0,N);
graficas
sprintf('ab4')
pause(3)

pause(2)

f=@funchoja2pr5; intervalo=[0 100]; x0=1; N=1000;
[t,x] = puntomedio(f,intervalo,x0,N);
graficas
sprintf('Punto medio')
pause(3)

[t,x] = ab2(f,intervalo,x0,N);
graficas
sprintf('ab2')
pause(3)

[t,x] = ab3(f,intervalo,x0,N);
graficas
sprintf('ab3')
pause(3)

[t,x] = ab4(f,intervalo,x0,N);
graficas
sprintf('ab4')
pause(3)

pause(2)

f=@funchoja2pr6; intervalo=[0 100]; x0=1; N=1000;
[t,x] = puntomedio(f,intervalo,x0,N);
graficas
sprintf('Punto medio')
pause(3)

[t,x] = ab2(f,intervalo,x0,N);
graficas
sprintf('ab2')
pause(3)

[t,x] = ab3(f,intervalo,x0,N);
graficas
sprintf('ab3')
pause(3)

[t,x] = ab4(f,intervalo,x0,N);
graficas
sprintf('ab4')