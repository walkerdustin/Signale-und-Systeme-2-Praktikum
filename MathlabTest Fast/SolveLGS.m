function [u, v, w] = SolveLGS(u0, v0, w0, A, B, C)


syms xn yn zn u v w;

%A0 = subs(A(1),[xn, yn, zn],[u0,v0,w0])

A = double(subs(A,[xn, yn, zn],[u0,v0,w0]));
B = double(subs(B,[xn, yn, zn],[u0,v0,w0]));
C = double(subs(C,[xn, yn, zn],[u0,v0,w0]));


%zA = A(1)+ A(2)*(u - u0) + A(3)*(v - v0) + A(4)*(w - w0);
%zB = B(1)+ B(2)*(u - u0) + B(3)*(v - v0) + B(4)*(w - w0);
%zC = C(1)+ C(2)*(u - u0) + C(3)*(v - v0) + C(4)*(w - w0);
%LGS = [zA == 0, zB == 0, zC == 0];
%[u v w] = solve(LGS);

LGS = [A(2) A(3) A(4); B(2) B(3) B(4); C(2) C(3) C(4)];
Sol = [ (-A(1) + u0*A(2) + v0*A(3) + w0*A(4));
        (-B(1) + u0*B(2) + v0*B(3) + w0*B(4));
        (-C(1) + u0*C(2) + v0*C(3) + w0*C(4))];

x = LGS\Sol;


u = x(1);
v = x(2);
w = x(3);
end