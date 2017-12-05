colx=size(x,2); % Numero de columnas de la matriz x
color=['r' 'g' 'b'];
figure(1)
for i=1:colx 
  subplot(colx,1,i)
  plot(t,x(:,i),color(i))
  s=sprintf('Coordenada %d de la solucion. 100 subintervalos.',i);
  title(s)
end

pause(2) 

figure(2)
plot(x(:,1),x(:,2),'r')
title('Trayectoria de la solucion. 100 subintervalos.')

pause(3)

figure(3)
for i=1:colx 
  subplot(colx,1,i)
  plot(t2,x2(:,i),color(i))
  s=sprintf('Coordenada %d de la solucion. 6 subintervalos',i);
  title(s)
end

pause(2) 

figure(4)
plot(x2(:,1),x2(:,2),'r')
title('Trayectoria de la solucion. 6 subintervalos')

