function [minimosPhi,posicionPhiPositivo] = fRutinaCortePhi(ejeY,ejeZ,ejeX,angulocortePhi)

% ¿CUÁLES MÓDULOS USAN LA FUNCIÓN fRutinaCortePhi?
%   - Es una subfunción de fGraficayAnalisisDolphChebyshevMejorado, por lo que aplica en:
%       - Módulo de análisis de arreglos en el plano. 
%       - Módulo de variación de la fase entre elementos para arreglos en el plano.

% ¿QUÉ SE PUEDE ENCONTRAR EN LA FUNCIÓN fRutinaCortePhi?
% I.  Corte del diagrama de radiación en un valor de phi ingresado por el usuario.
%     Se calculan el siguiente parámetro a partir de este corte:
%     - Posiciones de los nulos (numéricamente y gráficamente).

% ¿CUÁLES SON LOS PARÁMETROS DE ENTRADA? 
%     ejeX ----------------------------> Intervalo de grados de theta (-90>theta>90).
%     ejeY ----------------------------> Intervalo de grados de phi (-90>phi>90)
%     ejeZ ----------------------------> Valores que toma el Factor de Arreglo.
%     angulocortePhi ----------------> Valor de corte en phi.

% ¿CUÁLES SON LOS PARÁMETROS DE SALIDA? 
%     minimosPhi --------------------------------> Posiciones de los nulos (corte en phi).
%     posicionPhiPositivo ----------------------> Altura de nulos (corte en phi).

%PARÁMETROS Y SÍMBOLOS INICIALES
colorminimos3dB = 1/255*[102 85 163]; 
colorcurva3dB = 1/255*[47 44 121]; 
v = [0.5,0.5];

%PARTE I: CORTE DEL DIAGRAMA DE RADIACIÓN EN PHI (THETA-AF) -> Para todos los módulos que usan esta función
figure('Name','Corte del diagrama de radiación (en valor de corte phi)');

%I.1. Se encuentra el corte del diagrama en phi
otrosCortesPhi = contour(ejeX,ejeZ,(ejeY - angulocortePhi), v,'Color',colorcurva3dB,'LineWidth',1.75);

% I.2. Se calculan los nulos del corte en phi
minimocortePhi = otrosCortesPhi(2,:);
[posicionPhi,indicePhi] = findpeaks(-(minimocortePhi()));
equivalentePhi = otrosCortesPhi(1,:);
minimosPhi = equivalentePhi(indicePhi);

% I.3. Se grafica el corte del diagrama en phi
posicionPhiPositivo = (-1)*posicionPhi;
hold on
grid minor
%Se realiza la gráfica
plot(minimosPhi,posicionPhiPositivo,'*','Color',colorminimos3dB,'LineWidth',1.50); 
ax = gca;
set(ax,'FontName', 'Times New Roman','FontSize', 15);
%Título y subtítulo concatenado
cad1CortePhi = ['{\bf\fontsize{20} Corte del diagrama en \phi = ', num2str(angulocortePhi), 'º}'];
cad2CortePhi = '{\it\fontsize{15} Cortes (\phi o \theta) y nulos}';
len_diff = length(cad1CortePhi) - length(cad2CortePhi);
if len_diff > 0
    cad2CortePhi = [cad2CortePhi, blanks(len_diff)];
elseif len_diff < 0
    cad1CortePhi = [cad1CortePhi, blanks(-len_diff)];
end
title({cad1CortePhi; cad2CortePhi}, 'FontName', 'Times New Roman','FontWeight','Normal');
%Etiquetas de los ejes
xlabel("\theta",'FontSize', 16,'FontWeight', 'bold','FontName', 'Times New Roman');
xtickformat('degrees');
ylabel("|AF|",'FontSize', 16,'FontWeight', 'bold','FontName', 'Times New Roman');
xticks(-90:10:90);