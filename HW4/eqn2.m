function drdt = eqn2(t,r,A,B)
    G=1;
    M=1;
    d = sqrt(r(1)^2+r(3)^2);
    v = sqrt(r(2)^2+r(4)^2);
    drdt = [r(2);-r(1)*G*M/(4*d^3)-A/(v^3+B)*r(2);r(4);-r(3)*G*M/(4*d^3)-A/(v^3+B)*r(4)];
end