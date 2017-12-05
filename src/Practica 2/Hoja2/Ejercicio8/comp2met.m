function comp2met(met1,met2)
    
    [t1, x1] = met1(f, intervalo, x0, N);
    [t2, x2] = met2(f, intervalo, x0, N);
    
    colx=size(x1,2); % Numero de columnas de la matriz x
    color=['r' 'g' 'b']; % Colores para cada dimension
    figure('Name','Solucion para cada coordenada','NumberTitle','off')
    %Pintamos la solucion para cada dimension
    for i=1:colx
        subplot(colx,1,i) %Metemos subplot nuevo
        plot(t1,x1(:,i),color(i)) %Pintamos la solucion
        s=sprintf('Coordenada %d de la solucion.',i);
        title(s)
        legend(s)
    end

    pause(1)
    
    dif = x1 - x2;
    figure('Name','Diferencia entre soluciones','NumberTitle','off')
    %Pintamos las diferencias entre soluciones
    for i=1:colx
        subplot(colx,1,i) %Metemos subplot nuevo
        plot(t1,dif(:,i),color(i)) %Pintamos la diferencia
        s=sprintf('Diferencia entre soluciones , dimension: %d ',i);
        title(s)

    end
    
    norm_inf = max(max(abs(dif)));
    figure('Name', 'Diferencia maxima entre soluciones', 'NumberTitle','off')
    subplot(111)
    plot(t1,norm_inf,'r')
    legend(num2str(norm_inf));

end

