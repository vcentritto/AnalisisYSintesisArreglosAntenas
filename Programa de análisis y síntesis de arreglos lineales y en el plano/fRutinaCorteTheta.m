function [minimosTheta,posicionThetaPositivo] = fRutinaCorteTheta(ejeY,ejeZ,ejeX,angulocorteTheta)

% ¿CUÁLES MÓDULOS USAN LA FUNCIÓN fRutinaCorteTheta?
%   - Es una subfunción de fGraficayAnalisisPlano, por lo que aplica en:
%       - Módulo de análisis de arreglos en el plano. 
%       - Módulo de variación de la fase entre elementos para arreglos en el plano.

% ¿QUÉ SE PUEDE ENCONTRAR EN LA FUNCIÓN fRutinaCorteTheta?
% I.  Corte del diagrama de radiación en un valor de theta ingresado por el usuario.
%     Se calculan el siguiente parámetro a partir de este corte:
%     - Posiciones de los nulos (numéricamente y gráficamente).

% ¿CUÁLES SON LOS PARÁMETROS DE ENTRADA? 
%     ejeX ----------------------------> Intervalo de grados de theta (-90>theta>90).
%     ejeY ----------------------------> Intervalo de grados de phi (-90>phi>90)
%     ejeZ ----------------------------> Valores que toma el Factor de Arreglo.
%     angulocorteTheta ----------------> Valor de corte en theta.

% ¿CUÁLES SON LOS PARÁMETROS DE SALIDA? 
%     minimosTheta --------------------------------> Posiciones de los nulos (corte en theta).
%     posicionThetaPositivo ----------------------> Altura de nulos (corte en theta).

%PARÁMETROS Y SÍMBOLOS INICIALES
colorminimos3dB = 1/255*[102 85 163]; 
colorcurva3dB = 1/255*[47 44 121]; 
v = [0.5,0.5];

%PARTE I: CORTE DEL DIAGRAMA DE RADIACIÓN EN THETA (PHI-AF) -> Para todos los módulos que usan esta función
figure('Name','Corte del diagrama de radiación (en valor de corte theta)');

%I.1. Se encuentra el corte del diagrama en theta
otrosCortesTheta = contour(ejeY,ejeZ,(ejeX - angulocorteTheta), v,'Color',colorcurva3dB,'LineWidth',1.75);

% I.2. Se calculan los nulos del corte en theta
minimocorteTheta = otrosCortesTheta(2,:);
[posicionTheta,indiceTheta] = findpeaks(-(minimocorteTheta()));
equivalenteTheta = otrosCortesTheta(1,:);
minimosTheta = equivalenteTheta(indiceTheta);

% I.3. Se grafica el corte del diagrama en theta
posicionThetaPositivo = (-1)*posicionTheta;
hold on
grid minor
%Se realiza la gráfica
plot(minimosTheta,posicionThetaPositivo,'*','Color',colorminimos3dB,'LineWidth',1.50); 
ax = gca;
set(ax,'FontName', 'Times New Roman','FontSize', 15);
%Título y subtítulo concatenado
cad1CorteTheta = ['{\bf\fontsize{20} Corte del diagrama en \theta = ', num2str(angulocorteTheta), 'º}'];
cad2CorteTheta = '{\it\fontsize{15} Cortes (\phi o \theta) y nulos}';
len_diff = length(cad1CorteTheta) - length(cad2CorteTheta);
if len_diff > 0
    cad2CorteTheta = [cad2CorteTheta, blanks(len_diff)];
elseif len_diff < 0
    cad1CorteTheta = [cad1CorteTheta, blanks(-len_diff)];
end
title({cad1CorteTheta; cad2CorteTheta}, 'FontName', 'Times New Roman','FontWeight','Normal');
%Etiquetas de los ejes
xlabel("\phi",'FontSize', 16,'FontWeight', 'bold','FontName', 'Times New Roman');
xtickformat('degrees');
ylabel("|AF|",'FontSize', 16,'FontWeight', 'bold','FontName', 'Times New Roman');
xticks(-90:10:90);



