function setDerivatives (TimeDivs)
    global A0;
    global Ax;
    global Ay;
    global Az;
    global B0;
    global Bx;
    global By;
    global Bz;
    global C0;
    global Cx;
    global Cy;
    global Cz;
    
    global mic0;
    global mic1;
    global mic2;
    global mic3;
    
    global vSound
    t10 = TimeDivs(1);  %t0-t1
    t20 = TimeDivs(2);  %t0-t2
    t30 = TimeDivs(3);  %t0-t3
    
    

    x0 = mic0(1);    y0 = mic0(2);    z0 = mic0(3);
    x1 = mic1(1);    y1 = mic1(2);    z1 = mic1(3);
    x2 = mic2(1);    y2 = mic2(2);    z2 = mic2(3);
    x3 = mic3(1);    y3 = mic3(2);    z3 = mic3(3);
    
    syms xn yn zn;
    %@(xn, yn, zn); norm statt sqrt
    A0 = @(xn, yn, zn) sqrt((xn-x0)^2+(yn-y0)^2+(zn-z0)^2) - sqrt((xn-x1)^2+(yn-y1)^2+(zn-z1)^2) - (t10)*vSound;
    B0 = @(xn, yn, zn) sqrt((xn-x0)^2+(yn-y0)^2+(zn-z0)^2) - sqrt((xn-x2)^2+(yn-y2)^2+(zn-z2)^2) - (t20)*vSound;
    C0 = @(xn, yn, zn) sqrt((xn-x0)^2+(yn-y0)^2+(zn-z0)^2) - sqrt((xn-x3)^2+(yn-y3)^2+(zn-z3)^2) - (t30)*vSound;
    
    
    Ax = @(xn, yn, zn) (2*xn - 2*x0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*xn - 2*x1)/(2*((xn - x1)^2 + (yn - y1)^2 + (zn - z1)^2)^(1/2));
    Ay = @(xn, yn, zn) (2*yn - 2*y0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*yn - 2*y1)/(2*((xn - x1)^2 + (yn - y1)^2 + (zn - z1)^2)^(1/2));
    Az = @(xn, yn, zn) (2*zn - 2*z0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*zn - 2*z1)/(2*((xn - x1)^2 + (yn - y1)^2 + (zn - z1)^2)^(1/2));

    Bx = @(xn, yn, zn) (2*xn - 2*x0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*xn - 2*x2)/(2*((xn - x2)^2 + (yn - y2)^2 + (zn - z2)^2)^(1/2));
    By = @(xn, yn, zn) (2*yn - 2*y0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*yn - 2*y2)/(2*((xn - x2)^2 + (yn - y2)^2 + (zn - z2)^2)^(1/2));
    Bz = @(xn, yn, zn) (2*zn - 2*z0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*zn - 2*z2)/(2*((xn - x2)^2 + (yn - y2)^2 + (zn - z2)^2)^(1/2));

    Cx = @(xn, yn, zn) (2*xn - 2*x0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*xn - 2*x3)/(2*((xn - x3)^2 + (yn - y3)^2 + (zn - z3)^2)^(1/2));
    Cy = @(xn, yn, zn) (2*yn - 2*y0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*yn - 2*y3)/(2*((xn - x3)^2 + (yn - y3)^2 + (zn - z3)^2)^(1/2));
    Cz = @(xn, yn, zn) (2*zn - 2*z0)/(2*((xn - x0)^2 + (yn - y0)^2 + (zn - z0)^2)^(1/2)) - (2*zn - 2*z3)/(2*((xn - x3)^2 + (yn - y3)^2 + (zn - z3)^2)^(1/2));

end