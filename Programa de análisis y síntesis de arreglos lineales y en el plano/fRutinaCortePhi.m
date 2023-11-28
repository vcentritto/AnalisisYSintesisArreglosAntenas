function [minimosPhi,posicionPhiPositivo] = fRutinaCortePhi(ejeY,ejeZ,ejeX,angulocortePhi)

% �CU�LES M�DULOS USAN LA FUNCI�N fRutinaCortePhi?
%   - Es una subfunci�n de fGraficayAnalisisDolphChebyshevMejorado, por lo que aplica en:
%       - M�dulo de an�lisis de arreglos en el plano. 
%       - M�dulo de variaci�n de la fase entre elementos para arreglos en el plano.

% �QU� SE PUEDE ENCONTRAR EN LA FUNCI�N fRutinaCortePhi?
% I.  Corte del diagrama de radiaci�n en un valor de phi ingresado por el usuario.
%     Se calculan el siguiente par�metro a partir de este corte:
%     - Posiciones de los nulos (num�ricamente y gr�ficamente).

% �CU�LES SON LOS PAR�METROS DE ENTRADA? 
%     ejeX ----------------------------> Intervalo de grados de theta (-90>theta>90).
%     ejeY ----------------------------> Intervalo de grados de phi (-90>phi>90)
%     ejeZ ----------------------------> Valores que toma el Factor de Arreglo.
%     angulocortePhi ----------------> Valor de corte en phi.

% �CU�LES SON LOS PAR�METROS DE SALIDA? 
%     minimosPhi --------------------------------> Posiciones de los nulos (corte en phi).
%     posicionPhiPositivo ----------------------> Altura de nulos (corte en phi).

%PAR�METROS Y S�MBOLOS INICIALES
colorminimos3dB = 1/255*[102 85 163]; 
colorcurva3dB = 1/255*[47 44 121]; 
v = [0.5,0.5];

%PARTE I: CORTE DEL DIAGRAMA DE RADIACI�N EN PHI (THETA-AF) -> Para todos los m�dulos que usan esta funci�n
figure('Name','Corte del diagrama de radiaci�n (en valor de corte phi)');

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
%Se realiza la gr�fica
plot(minimosPhi,posicionPhiPositivo,'*','Color',colorminimos3dB,'LineWidth',1.50); 
ax = gca;
set(ax,'FontName', 'Times New Roman','FontSize', 15);
%T�tulo y subt�tulo concatenado
cad1CortePhi = ['{\bf\fontsize{20} Corte del diagrama en \phi = ', num2str(angulocortePhi), '�}'];
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