function[imprimirExc] = fSimbolosLaxpati(vectorExcitaciones2,vectorFases,numNulo,cantNulos)

flecha2 = char(8594);
angulo = char(8736);
numero0 = char(8320);
numero1 = char(8321);
numero2 = char(8322);
numero3 = char(8323);
numero4 = char(8324);
numero5 = char(8325);
numero6 = char(8326);
numero7 = char(8327);
numero8 = char(8328);
numero9 = char(8329);

if cantNulos <= 40
    if numNulo == 1
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 2
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 3
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 4
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero4),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 5
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero5),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 6
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero6),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 7
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero7),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 8
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero8),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 9
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero9),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 10
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero0),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 11
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero1),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 12
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero2),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 13
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero3),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 14
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero4),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 15
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero5),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 16
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero6),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 17
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero7),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 18
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero8),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 19
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero1),num2str(numero9),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 20
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero0),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 21
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero1),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 22
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero2),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 23
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero3),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 24
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero4),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 25
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero5),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 26
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero6),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 27
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero7),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 28
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero8),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 29
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero2),num2str(numero9),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 30
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero0),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 31
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero1),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 32
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero2),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 33
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero3),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 34
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero4),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 35
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero5),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 36
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero6),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 37
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero7),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 38
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero8),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 39
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero3),num2str(numero9),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    elseif numNulo == 40
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(numero4),num2str(numero0),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
    end
else
        imprimirExc = (['    ',num2str(flecha2),' a',num2str(1,numNulo),' = (',num2str(vectorExcitaciones2(1,numNulo)),' ',num2str(angulo),' ',num2str(vectorFases(1,numNulo)),'°)']);
end