function [ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,directividad] = fFactorDeArregloPlanoXY(N,d,Fase,Amplitudes,casoAnalisisoSintesis,pPhi,anguloY,anguloX)


% �CU�LES M�DULOS USAN LA FUNCI�N fFactorDeArregloPlanoXY?
%   - M�dulo de An�lisis de arreglos en el plano. 
%   - Los siguientes m�dulos pertenecientes al M�dulo de S�ntesis de arreglos en el plano:
%      - M�dulo de variaci�n de la fase entre elementos para arreglos en el plano.
%      - M�dulo de Dolph-Chebyshev Mejorado.

% �QU� SE PUEDE ENCONTRAR EN LA FUNCI�N fFactorDeArregloPlanoXY?
% I. Para todos los m�dulos: se calcula el factor de arreglo en el plano xy.
%    La funci�n tiene las siguientes caracter�sticas:
%    - Se establecen par�metros iniciales (como el intervalo de theta y de phi).
%    - Se calcula el factor de arreglo para arreglos de per�metro y malla cuadrada.
%    - Se normaliza el factor de arreglo.
% II.  Para todos los m�dulos: se calcula el factor de arreglo cuando phi = 0�
% III. Para todos los m�dulos: permite calcular la directividad m�xima.

% �CU�LES SON LOS PAR�METROS DE ENTRADA? 
%     N ---------------------> N�mero de elementos del arreglo (N = Nx = Ny).
%     d ------------------> Distancia inter-elemento (d = dx = dy) .
%     Fase ------------------> Distribuci�n de fases (matriz con fase de cada excitaci�n del arreglo).
%     Excitaciones ----------> Distribuci�n de amplitud (matriz con amplitud de cada excitaci�n del arreglo)

% �CU�LES SON LOS PAR�METROS DE SALIDA? 
%     ejeX -----------------------> Intervalo de valores de theta (desde -90� hasta 90�).
%     ejeY -----------------------> Intervalo de valores de phi (desde 0� hasta 180�).
%     ejeZ -----------------------> Valores que toma el factor de arreglo
%     ejeZCorte ------------------> Valores que toma el factor de arreglo cuando phi = 0�
%     titaCorte ------------------> Intervalo de valores de theta para corte cuando phi = 0� (desde -90� hasta 90�)
%     directividad ---------------> Valor de directividad m�xima.

% �CU�LES SUBFUNCIONES CONTIENE?:
%     fDirectividad Plano ------> Subfunci�n que calcula la directividad m�xima en el plano xy.

%S�MBOLOS Y PAR�METROS INICIALES
%S�mbolos
rombos = char(9830);
flecha2 = char(8594);
angulo = char(8736);

% PARTE I: C�LCULO DE FACTOR DE ARREGLO EN PLANO XY -> Para todos los m�dulos que usan esta funci�n
% I.1. Par�metros iniciales para calcular el factor de arreglo.
tita = -pi/2:(1/100):pi/2;        
phi = -pi/2:(1/100):pi/2;               
[TITA,PHI] = meshgrid(tita,phi);                
factorx=sin(TITA).*cos(PHI);
factory=sin(TITA).*sin(PHI);
matrizExcitaciones = Amplitudes.*(cos(Fase)+j*sin(Fase)); 
matrizZ = zeros(1,1);    
% I.2. Se calcula el factor de arreglo.
for m = 1:1:N
   for n = 1:1:N
       matrizZ = (matrizExcitaciones(m,n)*exp(j*2*pi*(n-1)*d*(factorx)).*exp(j*2*pi*(m-1)*d*(factory))) + matrizZ;    
   end
end   
% I.3. Se normaliza el factor de arreglo.
matrizZ = abs(matrizZ);
valorMaximo = max(max(matrizZ));
matrizNormalizada = zeros(length(matrizZ),length(matrizZ));
for i = 1:length(matrizZ)
   for r = 1: length(matrizZ)
        matrizNormalizada(i,r) = matrizZ(i,r)/valorMaximo;   
    end
end
% I.4. Se definen los ejes.
 ejeX = TITA.*(180/pi);
 ejeY = PHI.*(180/pi);
 ejeZ = matrizNormalizada; 
  
%PARTE II: SE MUESTRA POR CONSOLA LAS EXCITACIONES
disp(' ');
disp([num2str(rombos),num2str(rombos),' EXCITACIONES COMPLEJAS ',num2str(rombos),num2str(rombos)]);
disp(' Cada excitaci�n compleja tiene el siguiente valor amplitud-fase: ');
FaseG = Fase.*(180/pi);
tamMagFase = size(matrizExcitaciones);
tamMagFase = tamMagFase(1);
for numeroExcitacionX = 1:1:tamMagFase
    for numeroExcitacionY = 1:1:tamMagFase  
        disp(['    ',num2str(flecha2),' I(',num2str(numeroExcitacionX),',',num2str(numeroExcitacionY),') = (',num2str(Amplitudes(numeroExcitacionX,numeroExcitacionY)),' ',num2str(angulo),' ',num2str(FaseG(numeroExcitacionX,numeroExcitacionY)),'�)']);
    end
end

%PARTE III: B�SQUEDA DEL FACTOR DE ARREGLO PARA CORTE DE ESF�RICAS -> Para todos los m�dulos que usan esta funci�n
titaCorte = -pi/2:(1/100):pi/2;   
if casoAnalisisoSintesis == 1
 anguloRY = anguloY*(pi/180); 
 anguloRX = anguloX*(pi/180); 
 phiCorte = atan((anguloRY)/(anguloRX));
elseif casoAnalisisoSintesis == 2
 phiCorte = pPhi.*(pi/180);
end
factorxCorte=sin(titaCorte).*cos(phiCorte);
factoryCorte=sin(titaCorte).*sin(phiCorte);
matrizExcitacionesCorte = Amplitudes.*(cos(Fase)+j*sin(Fase)); 
matrizZCorte = zeros(1,1);    
% III.1. Se calcula el factor de arreglo.
for m = 1:1:N
   for n = 1:1:N
       matrizZCorte = (matrizExcitacionesCorte(m,n)*exp(j*2*pi*(n-1)*d*(factorxCorte)).*exp(j*2*pi*(m-1)*d*(factoryCorte))) + matrizZCorte;    
   end
end   
% III.2. Se normaliza el factor de arreglo.
ejeZCorte = (abs(matrizZCorte/max(matrizZCorte))); 


%PARTE IV: SE LLAMA A FUNCI�N DE DIRECTIVIDAD -> Para todos los m�dulos que usan esta funci�n
directividad = fDirectividadPlano(N,d,matrizExcitaciones);   

 
 