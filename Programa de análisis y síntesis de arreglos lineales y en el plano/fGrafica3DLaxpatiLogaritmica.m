function fGrafica3DLaxpatiLogaritmica(theta,phi,fcGrafica,colorLaxpati)


figure('Name','Diagrama de radiación (en coordenadas cartesianas en escala logaritmica)');
surf(theta*180/pi, phi*180/pi, 20*log10(abs(fcGrafica)));
ax = gca;
shading interp;
colorLaxpatiGrafica = flipud(colorLaxpati); 
colormap(colorLaxpatiGrafica);
set(ax,'FontName', 'Times New Roman','FontSize', 16);
title("Diagrama de Radiación",'FontSize', 22,'FontName', 'Times New Roman');
xlabel("\theta",'FontSize', 18,'FontWeight', 'bold','FontName', 'Times New Roman');
ylabel("\phi",'FontSize', 18,'FontWeight', 'bold','FontName', 'Times New Roman');
zlabel("|AF|_{(dB)}",'FontSize', 18,'FontWeight', 'bold','FontName', 'Times New Roman');
xticks(-90:10:90);
yticks(-90:10:90);
xtickformat('degrees');
ytickformat('degrees');
xlim([-90 90]);
ylim([-90 90]);
zlim([-70 0]);
caxis([-70 0]);
view(-30.281,60.0606);