
clear, close all, clc
preg = true;

while preg
    
    %S�mbolos
    romb = char(9830);
    f = char(8658);
    f2 = char(8594);
    theta = char(952);
    phi = char(966);
    letraN = char(8345);  
    numero0 = char(8320);
    numero1 = char(8321);
    numero2 = char(8322);
    
    %INICIO DE PROGRAMA
    disp(' ');
    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
    disp('                            AN�LISIS Y S�NTESIS DE ARREGLOS LINEALES Y EN EL PLANO                            ');
    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
    disp('--------------------------------------------------------------------------------------------------------------');
    disp('        1. An�lisis');
    disp('        2. S�ntesis');
    disp('        3. Salir del programa');
    caso = input('Seleccione su opci�n: ');                                
    disp('--------------------------------------------------------------------------------------------------------------');

    %M�DULO DE AN�LISIS
    switch caso
        case 1            
            close all,                                         
            disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' AN�LISIS DE ARREGLOS DE ANTENAS ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
            disp('--------------------------------------------------------------------------------------------------------------');
            disp('        1. Arreglos lineales');
            disp('        2. Arreglos en el plano');
            disp('        3. Regresar al men� de inicio');
            caso_especifico = input('Seleccione su opci�n: ');
            disp('--------------------------------------------------------------------------------------------------------------');

            %M�dulo de an�lisis de arreglos lineales
            switch caso_especifico
                case 1
                    casoAnalisisoSintesis = 1;
                    pTheta = 0;
                    casoSintesisChebyshev = 1;
                    nivelLL = 0;
                    disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' AN�LISIS DE ARREGLOS LINEALES ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
                    disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                    N = input('       - El n�mero de elementos en direcci�n z: ');
                    d = input('       - La distancia inter-elemento del arreglo: ');
                    anguloZ = input('       - El desfasaje entre los elementos del arreglo: ');
                    disp('       - Elija el tipo de distribuci�n de amplitud');
                    disp('          1. Uniforme');
                    disp('          2. No Uniforme');
                    verif = input('        Seleccione: ');
                    disp('--------------------------------------------------------------------------------------------------------------');
                    %CONDICI�N: Si se ingresa una opci�n que no es v�lida
                    while verif > 2 || verif < 1
                      disp("�LA OPCI�N NO ES V�LIDA!"); 
                      disp('        - Por favor, elija de nuevo el tipo de distribuci�n de amplitud');
                      disp('          1. Uniforme');
                      disp('          2. No Uniforme'); 
                      disp('--------------------------------------------------------------------------------------------------------------');
                      verif = input('        Seleccione: ');
                      disp('--------------------------------------------------------------------------------------------------------------');
                    end
                    [Amplitudes] = fDistribucionAmplitudLineal(N, verif);
                    [Fase,anguloZVariacionFase] = fDesfasajeLineal(N,anguloZ,pTheta,d,casoAnalisisoSintesis);
                    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                    disp('                                                 RESULTADOS                                            ');
                    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                    [ejeX,ejeY,directividad] = fFactorArregloLineal(N,d,Amplitudes,Fase,anguloZ,anguloZVariacionFase,casoAnalisisoSintesis);
                    [ejeX,ejeY] = fGraficayAnalisisLineal(ejeX,ejeY,d,anguloZ,pTheta,casoAnalisisoSintesis,casoSintesisChebyshev,nivelLL,directividad);

                %M�dulo de an�lisis de arreglos en el plano
                case 2
                    casoAnalisisoSintesis = 1;
                    pTheta = 0;
                    pPhi = 0;
                    disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' AN�LISIS DE ARREGLOS EN EL PLANO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
                    disp("�IMPORTANTE!"); 
                    disp(['       ',num2str(f),' Los elementos del arreglo est�n sobre el plano xy.']);
                    disp(['       ',num2str(f),' Se estudian arreglos de per�metro y malla cuadrada.']);
                    disp(['       ',num2str(f),' El n�mero de elementos es igual en ambas dimensiones del plano (Nx = Ny).']);
                    disp(['       ',num2str(f),' La distancia inter-elemento es igual en cada una de las dimensiones del plano (dx = dy).']);
                    disp('--------------------------------------------------------------------------------------------------------------');
                    disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                    N = input('        - El n�mero de elementos en direcci�n x e y: ');
                    d = input('        - La distancia inter-elemento del arreglo en direcci�n x e y: ');
                    anguloX = input('        - El desfasaje entre elementos en direcci�n x: ');
                    anguloY = input('        - El desfasaje entre elementos en direcci�n y: ');
                    disp('        - Elija el tipo de distribuci�n de amplitud');
                    disp('          1. Uniforme');
                    disp('          2. No Uniforme');               
                    verif = input('        Seleccione: ');
                    disp('--------------------------------------------------------------------------------------------------------------');
                   %CONDICI�N: Si se ingresa una opci�n que no es v�lida
                    while verif > 2 || verif < 1
                      disp("�LA OPCI�N NO ES V�LIDA!"); 
                      disp('        - Por favor, elija de nuevo el tipo de distribuci�n de amplitud');
                      disp('          1. Uniforme');
                      disp('          2. No Uniforme'); 
                      disp('--------------------------------------------------------------------------------------------------------------');
                      verif = input('        Seleccione: ');
                      disp('--------------------------------------------------------------------------------------------------------------');
                    end
                    [Amplitudes] = fDistribucionAmplitudPlano(N, verif);
                    %Para cortes cualquiera del diagrama
                    opcion = 1;
                    repetir = 5;
                    [angulocorteTheta,angulocortePhi] = fCortesDiagrama(opcion,repetir);
                    %Funciones
                    disp(' ');
                    [Fase] = fDesfasajePlanoXY(N,anguloX,anguloY,pTheta,pPhi,d,casoAnalisisoSintesis);
                    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                    disp('                                                 RESULTADOS                                            ');
                    disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                    [ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,directividad] = fFactorDeArregloPlanoXY(N,d,Fase,Amplitudes,casoAnalisisoSintesis,pPhi,anguloY,anguloX);
                    [ejeZ,ejeX,ejeY] = fGraficayAnalisisPlano(ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,N,anguloX,anguloY,pTheta,pPhi,d,angulocorteTheta,angulocortePhi,casoAnalisisoSintesis,verif,directividad);
                    
                case 3        
                otherwise
                    disp(['                                     ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' CASO INCORRECTO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
            end
     
        %M�DULO DE S�NTESIS
        case 2            
            close all,                                     
            disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' S�NTESIS DE ARREGLOS DE ANTENAS ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
            disp('--------------------------------------------------------------------------------------------------------------');
            disp('        1. Arreglos lineales'); 
            disp('        2. Arreglos en el plano');
            disp('        3. Regresar al de inicio');
            caso_especifico = input('Seleccione su opci�n: ');
            disp('--------------------------------------------------------------------------------------------------------------');
            
            %M�dulo de s�ntesis de arreglos lineales
            switch caso_especifico
                case 1
                    disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' S�NTESIS DE ARREGLOS LINEALES ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
                    disp("        1. Variaci�n de la fase entre elementos");
                    disp("        2. Dolph-Chebyshev: Nivel Relativo de los l�bulos laterales");
                    disp("        3. Regresar al men� de inicio");
                    casoArreglosLinealesSintesis = input('Seleccione el m�todo de s�ntesis: ');
                    disp('--------------------------------------------------------------------------------------------------------------');
                  
                %M�dulo de variaci�n de la fase entre elementos para arreglos lineales
                switch casoArreglosLinealesSintesis
                    case 1
                        casoAnalisisoSintesis = 2;
                        anguloZ = 0;
                        casoSintesisChebyshev = 1;
                        nivelLL = 0;
                        disp(['                             ', num2str(romb),num2str(romb),num2str(romb),num2str(romb),' VARIACI�N DE LA FASE ENTRE ELEMENTOS ',num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                        N = input('       - El n�mero de elementos del arreglo en direcci�n z: ');
                        d = input('       - La distancia inter-elemento del arreglo: ');
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp("�IMPORTANTE!"); 
                        disp(['       ',num2str(f),' La posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre 0� y 180�.']);
                        disp('--------------------------------------------------------------------------------------------------------------');
                        pTheta = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                        %Condici�n: Si se ingresa una posici�n del l�bulo principal que no est� entre 0� y 180�
                        while ((pTheta < 0) || (pTheta > 180))
                          disp('--------------------------------------------------------------------------------------------------------------');
                          disp(['�LA POSICI�N ',num2str(theta),num2str(numero0),' NO ES V�LIDA!']); 
                          disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre 0� y 180�.']);
                          disp('--------------------------------------------------------------------------------------------------------------');
                          pTheta = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                        end
                        disp('       - Elija el tipo de distribuci�n de amplitud');
                        disp('          1. Uniforme');
                        disp('          2. No Uniforme');
                        verif = input('        Seleccione: ');
                        disp('--------------------------------------------------------------------------------------------------------------');
                        %CONDICI�N: Si se ingresa una opci�n que no es v�lida
                        while verif > 2 || verif < 1
                          disp("�LA OPCI�N NO ES V�LIDA!"); 
                          disp('        - Por favor, elija de nuevo el tipo de distribuci�n de amplitud');
                          disp('          1. Uniforme');
                          disp('          2. No Uniforme'); 
                          disp('--------------------------------------------------------------------------------------------------------------');
                          verif = input('        Seleccione: ');
                          disp('--------------------------------------------------------------------------------------------------------------');
                        end
                        [Amplitudes] = fDistribucionAmplitudLineal(N, verif);
                        disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                        disp('                                                 RESULTADOS                                            ');
                        disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                        [Fase,anguloZVariacionFase] = fDesfasajeLineal(N,anguloZ,pTheta,d,casoAnalisisoSintesis);
                        [ejeX,ejeY,directividad] = fFactorArregloLineal(N,d,Amplitudes,Fase,anguloZ,anguloZVariacionFase,casoAnalisisoSintesis);
                        [ejeX,ejeY] = fGraficayAnalisisLineal(ejeX,ejeY,d,anguloZ,pTheta,casoAnalisisoSintesis,casoSintesisChebyshev,nivelLL,directividad);

                    %M�dulo de Dolph-Chebyshev    
                    case 2
                        casoAnalisisoSintesis = 2;
                        anguloZ = 0;
                        casoSintesisChebyshev = 2;
                        disp(['            ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' M�TODO DE DOLPH-CHEBYSHEV: NIVEL RELATIVO DE LOS L�BULOS LATERALES ',num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                        N = input('       - El n�mero de elementos del arreglo en direcci�n z: ');
                        d = input('       - La distancia inter-elemento del arreglo: ');
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp("�IMPORTANTE!"); 
                        disp(['       ',num2str(f),' La posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre 0� y 180�.']);
                        disp('--------------------------------------------------------------------------------------------------------------');
                        pTheta = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                        %Condici�n: Si se ingresa una posici�n del l�bulo principal que no est� entre 0� y 180�
                        while ((pTheta < 0) || (pTheta > 180))
                          disp('--------------------------------------------------------------------------------------------------------------');
                          disp(['�LA POSICI�N ',num2str(theta),num2str(numero0),' NO ES V�LIDA!']); 
                          disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre 0� y 180�.']);
                          disp('--------------------------------------------------------------------------------------------------------------');
                          pTheta = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                        end
                        nivelLL = input('       - Ingrese el nivel relativo de l�bulos laterales (dB): ');
                        nivelRelativoAdim = 10^(nivelLL/20);
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp("�IMPORTANTE!"); 
                        disp(['       ',num2str(f),' El nivel relativo en escala lineal es ',num2str(nivelRelativoAdim)]);         
                        disp('--------------------------------------------------------------------------------------------------------------');
                        disp(' ');
                        disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                        disp('                                                 RESULTADOS                                            ');
                        disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                        [Amplitudes] = fAmplitudDolphChebyshev(N,nivelLL);
                        [Fase,anguloZVariacionFase] = fDesfasajeLineal(N,anguloZ,pTheta,d,casoAnalisisoSintesis);
                        [ejeX,ejeY,directividad] = fFactorArregloLineal(N,d,Amplitudes,Fase,anguloZ,anguloZVariacionFase,casoAnalisisoSintesis);
                        [ejeX,ejeY] = fGraficayAnalisisLineal(ejeX,ejeY,d,anguloZ,pTheta,casoAnalisisoSintesis,casoSintesisChebyshev,nivelLL,directividad);

                               
                    case 3
                    otherwise
                        disp(['                                     ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' CASO INCORRECTO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                        disp('--------------------------------------------------------------------------------------------------------------');
                end

                %M�dulo de s�ntesis de arreglos en el plano
                case 2
                    disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' S�NTESIS DE ARREGLOS EN EL PLANO ',num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
                    disp("        1. Variaci�n de la fase entre elementos");
                    disp("        2. Dolph-Chebyshev Mejorado: Nivel Relativo de los l�bulos laterales");
                    disp("        3. Laxpati: Especificaci�n de los nulos en el patr�n de radiaci�n");
                    disp("        4. Regresar al men� de inicio");
                    casoArreglosPlanoSintesis = input('Seleccione el m�todo de s�ntesis: ');
                    disp('--------------------------------------------------------------------------------------------------------------');
                    
                    %M�dulo de variaci�n de la fase entre elementos para arreglos en el plano
                    switch casoArreglosPlanoSintesis
                        case 1
                            casoAnalisisoSintesis = 2;
                            casoSintesis = 1;
                            anguloY = 0;
                            anguloX = 0;
                            disp(['                             ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' VARIACI�N DE LA FASE ENTRE ELEMENTOS ' num2str(romb),num2str(romb),num2str(romb),num2str(romb),]);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' Este m�todo ubica al l�bulo principal en una posici�n espec�fica del patr�n de radiaci�n.']);
                            disp(['       ',num2str(f),' Los elementos del arreglo est�n sobre el plano xy.']);
                            disp(['       ',num2str(f),' Se estudian arreglos de per�metro y malla cuadrada.']);
                            disp(['       ',num2str(f),' El n�mero de elementos es igual en ambas direcciones (Nx = Ny).']);
                            disp(['       ',num2str(f),' La distancia inter-elemento es igual en ambas direcciones (dx = dy).']);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                            N = input('        - El n�mero de elementos en direcci�n x e y: ');
                            d = input('        - La distancia inter-elemento del arreglo: ');
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' La posici�n del l�bulo principal (',num2str(theta),num2str(numero0),' y ',num2str(phi),num2str(numero0),') debe estar entre -90� y 90�.']);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            pTheta = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                            pPhi = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),': ']);
                           %Condici�n Theta: Si se ingresa una posici�n del l�bulo principal que no est� entre -90� y 90�
                            while ((pTheta < -90) || (pTheta > 90))
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp(['�LA POSICI�N ',num2str(theta),num2str(numero0),' NO ES V�LIDA!']); 
                                disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre -90� y 90�.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                pTheta = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                            end
                            %Condici�n Phi: Si se ingresa una posici�n del l�bulo principal que no est� entre -90� y 90�
                            while ((pPhi < -90) || (pPhi > 90))
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp(['�LA POSICI�N ',num2str(phi),num2str(numero0),' NO ES V�LIDA!']); 
                                disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),' debe estar entre -90� y 90�.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                pPhi = input(['       - Ingrese la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),': ']);
                            end
                            disp('        - Elija el tipo de distribuci�n de amplitud');
                            disp('          1. Uniforme');
                            disp('          2. No Uniforme');
                            verif = input('        Seleccione: ');
                            disp('--------------------------------------------------------------------------------------------------------------');
                            %CONDICI�N: Si se ingresa una opci�n que no es v�lida
                            while verif > 2 || verif < 1
                                disp("�LA OPCI�N NO ES V�LIDA!"); 
                                disp('        - Por favor, elija de nuevo el tipo de distribuci�n de amplitud');
                                disp('          1. Uniforme');
                                disp('          2. No Uniforme'); 
                                disp('--------------------------------------------------------------------------------------------------------------');
                                verif = input('        Seleccione: ');
                                disp('--------------------------------------------------------------------------------------------------------------');
                            end
                            %Funci�n de distribuci�n de amplitud
                            [Amplitudes] = fDistribucionAmplitudPlano(N, verif);
                            %Para cortes cualquiera del diagrama
                            opcion = 1;
                            repetir = 5;
                            [angulocorteTheta,angulocortePhi] = fCortesDiagrama(opcion,repetir);
                            disp(' ');
                            %Resto de funciones
                            [Fase] = fDesfasajePlanoXY(N,anguloX,anguloY,pTheta,pPhi,d,casoAnalisisoSintesis);
                            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                            disp('                                                 RESULTADOS                                            ');
                            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]); 
                            [ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,directividad] = fFactorDeArregloPlanoXY(N,d,Fase,Amplitudes,casoAnalisisoSintesis,pPhi,anguloY,anguloX);
                            [ejeZ,ejeX,ejeY] = fGraficayAnalisisPlano(ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,N,anguloX,anguloY,pTheta,pPhi,d,angulocorteTheta,angulocortePhi,casoAnalisisoSintesis,verif,directividad);

                        
                        %M�dulo de Dolph-Chebyshev Mejorado
                        case 2 
                            anguloX = 0;
                            anguloY = 0;
                            casoAnalisisoSintesis = 2;
                            casoSintesis = 3;
                            disp(['                         ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' DOLPH-CHEBYSHEV MEJORADO ',num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' Corresponde a Dolph-Chebyshev Mejorado ',num2str(f),' m�todo desarrollado por Cheng-Tseng.']);
                            disp(['       ',num2str(f),' Los elementos del arreglo est�n sobre el plano xy.']);
                            disp(['       ',num2str(f),' Se estudian arreglos de per�metro y malla cuadrada.']);
                            disp(['       ',num2str(f),' El n�mero de elementos es igual en ambas direcciones (Nx = Ny).']);
                            disp(['       ',num2str(f),' La distancia inter-elemento es igual en ambas direcciones (dx = dy).']);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp('INTRODUZCA LOS SIGUIENTES DATOS:');
                            N = input('        - El n�mero de elementos en direcci�n x e y: ');
                            d = input('        - La distancia inter-elemento del arreglo: ');
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' La posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' y ',num2str(phi),num2str(numero0),' debe estar entre -90� y 90�.']);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            pTheta = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                            pPhi = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),': ']);
                           %Condici�n Theta: Si se ingresa una posici�n del l�bulo principal que no est� entre -90� y 90�
                            while ((pTheta < -90) || (pTheta > 90))
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp(['�LA POSICI�N ',num2str(theta),num2str(numero0),' NO ES V�LIDA!']); 
                                disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),' debe estar entre -90� y 90�.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                pTheta = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(theta),num2str(numero0),': ']);
                            end
                            %Condici�n Phi: Si se ingresa una posici�n del l�bulo principal que no est� entre -90� y 90�
                            while ((pPhi < -90) || (pPhi > 90))
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp(['�LA POSICI�N ',num2str(phi),num2str(numero0),' NO ES V�LIDA!']); 
                                disp(['       ',num2str(f),' RECUERDE: la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),' debe estar entre -90� y 90�.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                pPhi = input(['        - Ingrese la posici�n del l�bulo principal ',num2str(phi),num2str(numero0),': ']);
                            end
                            nivelLL = input('        - Ingrese el nivel relativo de l�bulos laterales (dB): ');
                            nivelRelativoAdim = 10^(nivelLL/20);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' El nivel relativo de l�bulos laterales (adim) es ',num2str(nivelRelativoAdim)]);         
                            disp('--------------------------------------------------------------------------------------------------------------');
                            %Para cortes cualquiera del diagrama
                            opcion = 1;
                            repetir = 5;
                            [angulocorteTheta,angulocortePhi] = fCortesDiagrama(opcion,repetir);
                            %Funciones
                            [Amplitudes] = fDistribucionAmplitudDolphChebyshevMejorado(N,nivelLL);
                            [Fase] = fDesfasajePlanoXY(N,anguloX,anguloY,pTheta,pPhi,d,casoAnalisisoSintesis);
                            disp(' ');
                            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                            disp('                                                 RESULTADOS                                            ');
                            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                            [ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,directividad] = fFactorDeArregloPlanoXY(N,d,Fase,Amplitudes,casoAnalisisoSintesis,pPhi,anguloY,anguloX);
                            [ejeZ,ejeX,ejeY] = fGraficayAnalisisDolphChebyshevMejorado(ejeZ,ejeX,ejeY,ejeZCorte,titaCorte,N,pTheta,pPhi,d,angulocorteTheta,angulocortePhi,nivelRelativoAdim,directividad);
                         
                        %M�dulo de Laxpati
                        case 3
                            disp(['                 ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' LAXPATI: ESPECIFICACI�N DE LOS NULOS EN EL PATR�N ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("�IMPORTANTE!"); 
                            disp(['       ',num2str(f),' La configuraci�n geom�trica de los arreglos can�nicos es romboidal.']);
                            disp(['       ',num2str(f),' Es necesario indicar las coordenadas (',num2str(theta),',',num2str(phi),') de los nulos (en grados).']); 
                            disp(['       ',num2str(f),' Se aceptan 3 nulos como M�NIMO y 27 como M�XIMO']);
                            disp('--------------------------------------------------------------------------------------------------------------');
                            disp("INTRODUZCA LOS SIGUIENTES DATOS:"); 
                            CN =  input('        - El n�mero de nulos: ');
                            nulos = [];
                            if CN <3
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp("�RECORDATORIO!"); 
                                disp(['       ',num2str(f),' El n�mero M�NIMO de nulos es 3.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                            elseif CN > 27
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp("�RECORDATORIO!"); 
                                disp(['       ',num2str(f),' El n�mero M�XIMO de nulos es 27.']); 
                                disp('--------------------------------------------------------------------------------------------------------------');
                            else
                                disp(['        - A continuaci�n, ingrese las coordenadas (',num2str(theta),num2str(letraN),',',num2str(phi),num2str(letraN),') para cada nulo:'])
                                for i = 1:1:CN
                                    col = 1;
                                    NT = input(['         ',num2str(f2), ' Ingrese la coordenada ',num2str(theta),num2str(letraN),' del nulo N�',num2str(i),': ']);
                                    nulos(i,col) = NT;
                                    col = 2;
                                    NP = input(['         ',num2str(f2), ' Ingrese la coordenada ',num2str(phi),num2str(letraN),' del nulo N�',num2str(i),': ']);
                                    nulos(i,col) = NP;
                                    disp(' ');
                                end
                                %Imagen de configuraci�n del arreglo
                                im = imread('imagenPrevia.png');
                                scale = 0.35; 
                                im_resized = imresize(im, scale);
                                figure('Name','Arreglo can�nico implementado en este programa');
                                imshow(uint8(im_resized));
                                truesize;
                                %T�tulo y subt�tulo concatenado
                                cad1Laxpati = '{\bf\fontsize{20} Geometr�a del arreglo can�nico}';
                                cad2Laxpati = '{\it\fontsize{14} �Lea detalladamente el Command Window!}';
                                len_diff = length(cad1Laxpati) - length(cad2Laxpati);
                                if len_diff > 0
                                    cad2Laxpati = [cad2Laxpati, blanks(len_diff)];
                                elseif len_diff < 0
                                    cad1Laxpati = [cad1Laxpati, blanks(-len_diff)];
                                end
                                title({cad1Laxpati; cad2Laxpati}, 'FontName', 'Times New Roman','FontWeight','Normal');
                                warning('off','all')
                                disp('--------------------------------------------------------------------------------------------------------------');
                                disp("IMPORTANTE: �OBSERVE LA IMAGEN EN PANTALLA!"); 
                                disp(['       ',num2str(f),' La imagen describe la configuraci�n romboidal de un arreglo can�nico.']);
                                disp(['       ',num2str(f),' Los vectores d',num2str(numero1),' y d',num2str(numero2),' describen la posici�n especial de cada elemento del arreglo can�nico.']);
                                disp(['       ',num2str(f),' Los argumentos ',num2str(phi),num2str(numero1),' y ',num2str(phi),num2str(numero2),' de los vectores d',num2str(numero1),' y d',num2str(numero2),' vienen definidos como 0� y 90� respectivamente.']);
                                disp(['       ',num2str(f),' DEBE definir los m�dulos d',num2str(numero1),' y d',num2str(numero2),' de los vectores d',num2str(numero1),' y d',num2str(numero2),'.']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                d1 =  input(['        - Ingrese el m�dulo d',num2str(numero1),' (distancia del origen al elemento en el eje x): ']);
                                d2 =  input(['        - Ingrese el m�dulo d',num2str(numero2),' (distancia del origen al elemento en el eje y): ']);
                                disp('--------------------------------------------------------------------------------------------------------------');
                                close all
                                disp(' ');
                                %Funciones
                                disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);                       
                                disp('                                                 RESULTADOS                                            ');
                                disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
                                [excitacionesFinal,excTotal,faLaxpati] = fDistribucionCorrienteLaxpati(CN,nulos,d1,d2);
                                [excitacionesFinal,vectorExcitaciones,fc1] = fFactorArregloGraficaLaxpati(excitacionesFinal,excTotal,faLaxpati,nulos, CN, d1,d2);
                            end
                            
                        case 4
                            
                        otherwise
                            disp(['                                     ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' CASO INCORRECTO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                            disp('--------------------------------------------------------------------------------------------------------------');
                    end
                
                case 3
                    
                otherwise
                    disp(['                                     ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' CASO INCORRECTO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
                    disp('--------------------------------------------------------------------------------------------------------------');
            end
            
        case 3
            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
            disp('                                         PROGRAMA FINALIZADO                            ');
            disp([num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb),num2str(romb),num2str(romb),num2str(romb), num2str(romb),num2str(romb)]);
            break
        otherwise
            disp(['                                     ',num2str(romb),num2str(romb),num2str(romb),num2str(romb),' CASO INCORRECTO ', num2str(romb),num2str(romb),num2str(romb),num2str(romb)]);
            disp('--------------------------------------------------------------------------------------------------------------');
    end
end