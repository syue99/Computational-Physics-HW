options = odeset('RelTol',1e-10,'AbsTol',1e-12);
endtime = 20;
time = [];
tspan = [0 endtime];
A = 1;
B = 1;
r0 = [1;sqrt(0.13);0;sqrt(0.03)];
%r0 = [1;0;0;0.5];
%[t,y] = ode45(@eqn1, tspan, r0, options);
[t,y] = ode45(@(t,r) eqn2(t,r,A,B), tspan, r0, options);

plot(y(:,1),y(:,3));
%xlabel = "time";
%tylabel = "r";
