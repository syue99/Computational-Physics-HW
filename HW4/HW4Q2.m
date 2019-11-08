options = odeset('RelTol',1e-10,'AbsTol',1e-12,'Events', @myEvent);
endtime = 50;
time = [];
tspan = [0 endtime];
    for B = 0.5:0.5:10
        A = 1;
        r0 = [1;0;0;0.4];
%r0 = [1;0;0;0.5];
%[t,y] = ode45(@eqn1, tspan, r0, options);
        [t,y] = ode45(@(t,r) eqn2(t,r,A,B), tspan, r0, options);
        time(B*2) = t(length(t));
    end
disp(time)
%plot(t,y(:,1),t,y(:,3))
%plot(y(:,1),y(:,3))
%plot(t,(y(:,1).^2+y(:,3).^2))
%semilogy(t,sqrt((y(:,1).^2+y(:,3).^2)));
plot(time)

