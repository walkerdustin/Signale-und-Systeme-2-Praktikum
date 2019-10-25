figure
[x y z] = sphere;

mesh(distMic0*x+mic0(1),distMic0*y+mic0(2),distMic0*z+mic0(3), 'FaceColor', [0 0 1], 'FaceAlpha', 0.05, 'LineStyle' , ':');
hold on

mesh(distMic1*x+mic1(1),distMic1*y+mic1(2),distMic1*z+mic1(3), 'FaceColor', [1 0 0], 'FaceAlpha', 0.05, 'LineStyle' , ':');
mesh(distMic2*x+mic2(1),distMic2*y+mic2(2),distMic2*z+mic2(3), 'FaceColor', [1 1 0], 'FaceAlpha', 0.05, 'LineStyle' , ':');
mesh(distMic3*x+mic3(1),distMic3*y+mic3(2),distMic3*z+mic3(3), 'FaceColor', [0 1 0], 'FaceAlpha', 0.05, 'LineStyle' , ':');
pos = plot3(fly(1),fly(2),fly(3),'*','MarkerSize',30,'Color','r');
p.LineWidth = 4;
m0 = plot3(mic0(1),mic0(2),mic0(3),'.','MarkerSize',30,'Color','c');
m1 = plot3(mic1(1),mic1(2),mic1(3),'.','MarkerSize',30,'Color','c');
m2 = plot3(mic2(1),mic2(2),mic2(3),'.','MarkerSize',30,'Color','c');
m3 = plot3(mic3(1),mic3(2),mic3(3),'.','MarkerSize',30,'Color','c');

%mesh

axis([0 1 0 1 0 1]);


