[t,x]=ode45(@funcosciladorarmo,[0 10],[1 0])
[t,x]=ode45(@funcosciladorarmo,[0:0.01:10],[1 0])
figure(1)
subplot(2,1,1)
plot(t,x(:,1))
subplot(2,1,2)
plot(t,x(:,2))

