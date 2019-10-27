function [p] = bornFly (xmax, ymax, zmax)
    p(1) = rand() * xmax;
    p(2) = rand()* ymax;
    p(3) = rand() * zmax;
end