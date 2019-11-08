function drdt = eqn1(t,r)
    G=1;
    M=1;
    d = sqrt(r(1)^2+r(3)^2);
    drdt = [r(2);-r(1)*G*M/(4*d^3);r(4);-r(3)*G*M/(4*d^3)];
end