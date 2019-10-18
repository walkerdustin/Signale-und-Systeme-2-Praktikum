figure
[x y z] = sphere
surf(distanceA*x+0.5,distanceA*y+0.5,distanceA*z, 'FaceColor', [1 0 0], 'FaceAlpha', 0.25, 'LineStyle' , ':')
hold on
surf(distanceB*x-0.5,distanceB*y-0.5,distanceB*z, 'FaceColor', [1 1 0], 'FaceAlpha', 0.25, 'LineStyle' , ':')
surf(distanceC*x-0.5,distanceC*y+0.5,distanceC*z, 'FaceColor', [0 1 0], 'FaceAlpha', 0.25, 'LineStyle' , ':')
surf(distanceD*x+0.5,distanceD*y-0.5,distanceD*z, 'FaceColor', [0 0 1], 'FaceAlpha', 0.25, 'LineStyle' , ':')
plot3(0.33,0.2,0.3,'*')


axis([-0.5 0.5 -0.5 0.5 0 1])
