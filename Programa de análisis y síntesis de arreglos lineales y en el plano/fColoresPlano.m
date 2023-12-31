function[colorDUniforme,colorDUniformeEsferica,colorminimosuniforme,colormaximosuniforme,coloranchohazuniforme,colorlpuniforme] = fColoresPlano

% �CU�LES M�DULOS USAN LA FUNCI�N fColoresLineal?
%   - Todos los m�dulos usados para arreglos lineales

% �QU� SE PUEDE ENCONTRAR EN LA FUNCI�N fColoresLineal?
%   Vectores de colores RGB para graficar el diagrama de radiaci�n y sus
%   caracter�sticas m�s importantes.

% �CU�LES SON LOS PAR�METROS DE ENTRADA? 
%   La funci�n no necesita par�metros de entrada

% �CU�LES SON LOS PAR�METROS DE SALIDA? 
%     colorDUniforme ----------------------------> Matriz de colores RGB
%     para diagrama de radiaci�n 3D.
%     colorminimosuniforme ----------------------------> Vector de colores
%     RGB para m�nimos en diagrama de radiaci�n 3D.
%     colormaximosuniforme ----------------------------> Vector de colores
%     RGB para m�ximos en diagrama de radiaci�n 3D.
%     coloranchohazuniforme ----------------------------> Vector de colores
%     RGB para ancho de haz a -3 dB en diagrama de radiaci�n 3D.
%     colorlpuniforme ----------------------------> Vector de colores
%     RGB para m�ximo principal en diagrama de radiaci�n 3D.
%     colorminimos3dB ----------------------------> Vector de colores
%     RGB para m�nimos en diagrama de radiaci�n 2D.
%     coloranchohaz3dB ----------------------------> Vector de colores
%     RGB para ancho de haz a -3 dB en diagrama de radiaci�n 2D.
%     curvaCorteTheta ----------------------------> Vector de colores
%     RGB para curva 2D con corte espec�fico en Theta.
%     minimosCorteTheta ----------------------------> Vector de colores
%     RGB para m�nimos en curva 2D con corte espec�fico en Theta.
%     curvaCortePhi ----------------------------> Vector de colores
%     RGB para curva 2D con corte espec�fico en Phi.
%     minimosCortePhi ----------------------------> Vector de colores
%     RGB para m�nimos en curva 2D con corte espec�fico en Phi.

%Color Gr�fica 3D
colorDUniforme = 1/255.*[203 255 255
                201 255 255
                199 255 255
                197 255 255
                195 255 255
                193 255 255
                191 255 255
                189 255 255
                187 255 255
                185 255 255
                183 255 255
                181 255 255
                179 255 255
                177 255 255
                175 255 255
                173 255 255
                172 255 255
                170 255 255
                168 255 255
                166 255 255
                164 255 255
                162 255 255
                160 255 255
                158 255 255
                156 255 255
                154 255 255
                152 255 255
                150 255 255
                148 255 255
                146 255 255
                144 255 255
                142 255 255
                140 255 255
                138 255 255
                136 255 255
                134 255 255
                132 255 255
                130 255 255
                128 255 255
                126 253 255
                124 251 255
                122 249 255
                120 247 255
                118 245 255
                116 242 255
                114 241 255
                112 238 255
                110 237 255
                108 235 255
                106 233 255
                104 231 255
                102 229 255
                100 227 255
                98 225 255
                96 223 255
                94 221 255
                92 219 255
                90 217 255
                88 215 255
                86 213 255
                84 211 255
                81 209 255
                79 207 255
                77 205 255
                75 203 255
                73 201 255
                71 199 255
                69 197 255
                67 195 255
                65 193 255
                63 191 255
                61 189 255
                59 187 255
                57 185 255
                55 183 255
                53 181 255
                51 179 255
                49 177 255
                47 175 255
                45 173 255
                43 171 255
                41 169 255
                39 167 255
                37 165 255
                35 163 255
                33 161 255
                31 159 255
                29 157 255
                27 155 255
                25 153 255
                23 151 255
                21 149 255
                19 147 255
                17 145 255
                15 143 255
                13 141 255
                11 138 255
                9 136 255
                7 134 255
                5 132 255
                3 131 255
                1 129 255
                0 126 254
                0 125 252
                0 122 250
                0 121 248
                0 118 246
                0 116 244
                0 115 242
                0 113 240
                0 111 238
                0 109 236
                0 107 234
                0 105 232
                0 102 230
                0 100 228
                0 98 227
                0 97 225
                0 94 223
                0 93 221
                0 91 219
                0 89 217
                0 87 215
                0 84 213
                0 83 211
                0 81 209
                0 79 207
                0 77 205
                0 75 203
                0 73 201
                0 70 199
                0 68 197
                0 66 195
                0 64 193
                0 63 191
                0 61 189
                0 59 187
                0 57 185
                0 54 183
                0 52 181
                0 51 179
                0 49 177
                0 47 175
                0 44 174
                0 42 172
                0 40 170
                0 39 168
                0 37 166
                0 34 164
                0 33 162
                0 31 160
                0 29 158
                0 27 156
                0 25 154
                0 22 152
                0 20 150
                0 18 148
                0 17 146
                0 14 144
                0 13 142
                0 11 140
                0 9 138
                0 6 136
                0 4 134
                0 2 132
                0 0 130
                0 0 128
                0 0 126];

colorDUniformeEsferica = 1/255.*[193 255 255
                191 255 255
                189 255 255
                187 255 255
                185 255 255
                183 255 255
                181 255 255
                179 255 255
                177 255 255
                175 255 255
                173 255 255
                172 255 255
                170 255 255
                168 255 255
                166 255 255
                164 255 255
                162 255 255
                160 255 255
                158 255 255
                156 255 255
                154 255 255
                152 255 255
                150 255 255
                148 255 255
                146 255 255
                144 255 255
                142 255 255
                140 255 255
                138 255 255
                136 255 255
                134 255 255
                132 255 255
                130 255 255
                128 255 255
                126 253 255
                124 251 255
                122 249 255
                120 247 255
                118 245 255
                116 242 255
                114 241 255
                112 238 255
                110 237 255
                108 235 255
                106 233 255
                104 231 255
                102 229 255
                100 227 255
                98 225 255
                96 223 255
                94 221 255
                92 219 255
                90 217 255
                88 215 255
                86 213 255
                84 211 255
                81 209 255
                79 207 255
                77 205 255
                75 203 255
                73 201 255
                71 199 255
                69 197 255
                67 195 255
                65 193 255
                63 191 255
                61 189 255
                59 187 255
                57 185 255
                55 183 255
                53 181 255
                51 179 255
                49 177 255
                47 175 255
                45 173 255
                43 171 255
                41 169 255
                39 167 255
                37 165 255
                35 163 255
                33 161 255
                31 159 255
                29 157 255
                27 155 255
                25 153 255
                23 151 255
                21 149 255
                19 147 255
                17 145 255
                15 143 255
                13 141 255
                11 138 255
                9 136 255
                7 134 255
                5 132 255
                3 131 255
                1 129 255
                0 126 254
                0 125 252
                0 122 250
                0 121 248
                0 118 246
                0 116 244
                0 115 242
                0 113 240
                0 111 238
                0 109 236
                0 107 234
                0 105 232
                0 102 230
                0 100 228
                0 98 227
                0 97 225
                0 94 223
                0 93 221
                0 91 219
                0 89 217
                0 87 215
                0 84 213
                0 83 211
                0 81 209
                0 79 207
                0 77 205
                0 75 203
                0 73 201
                0 70 199
                0 68 197
                0 66 195
                0 64 193
                0 63 191
                0 61 189
                0 59 187
                0 57 185
                0 54 183
                0 52 181
                0 51 179
                0 49 177
                0 47 175
                0 44 174
                0 42 172
                0 40 170
                0 39 168
                0 37 166
                0 34 164
                0 33 162
                0 31 160
                0 29 158
                0 27 156
                0 25 154
                0 22 152
                0 20 150
                0 18 148
                0 17 146
                0 14 144
                0 13 142
                0 11 140
                0 9 138
                0 6 136
                0 4 134
                0 2 132
                0 0 130
                0 0 128
                0 0 126
                0 0 124
                0 0 122
                0 0 120
                0 0 118
                0 0 116
                0 0 114
                0 0 112
                0 0 110
                0 0 108
                0 0 106
                0 0 104
                0 0 102
                0 0 100
                0 0 98
                0 0 96
                0 0 94
                0 0 92
                0 0 90
                0 0 88
                0 0 86
                0 0 83
                0 0 81
                0 0 79
                0 0 77
                0 0 75
                0 0 73
                0 0 71
                0 0 69
                0 0 67
                0 0 65
                0 0 63
                0 0 61
                0 0 59
                0 0 57
                0 0 55
                0 0 53
                0 0 51
                0 0 49
                0 0 47
                0 0 45
                0 0 43
                0 0 41
                0 0 39
                0 0 37
                0 0 35
                0 0 33
                0 0 31
                0 0 29
                0 0 26
                0 0 24
                0 0 22
                0 0 20
                0 0 18
                0 0 16
                0 0 14
                0 0 12];

%Colores usados en Gr�fica 3D      
colorminimosuniforme = 1/255*[102 85 163]; %Color m�nimos 
colormaximosuniforme = 1/255*[204 94 224]; %Color m�ximos
colorlpuniforme = 1/255*[160 33 104]; %Color m�ximo principal
coloranchohazuniforme = 1/255*[103 5 165]; %Color ancho haz principal

% %Colores Gr�ficos - Ancho
% colorminimos3dB = 1/255*[139,0,139]; %Color m�nimos
% coloranchohaz3dB = 1/255*[72,61,139]; %Color ancho de haz

% %Colores Curvas de Nivel
% curvaCorteTheta = 1/255*[205,92,92];
% minimosCorteTheta = 1/255*[106,90,205];
% curvaCortePhi = 1/255*[0,206,209];
% minimosCortePhi = 1/255*[178,34,34];
%     