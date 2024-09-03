% -------------------------------------------
% DATOS GENERALES ANTES DE SALTAR
% -------------------------------------------
gravedad = 9.81;          % Aceleración debido a la gravedad (m/s^2)
tiempo = 0:0.1:10;        % Vector de tiempo en segundos (desde 0 hasta 10 segundos con incrementos de 0.1)
masa = input('masa: ');   % Masa del saltador en kilogramos
peso = masa * gravedad;   % Fuerza de gravedad actuando sobre el saltador (N)

% -------------------------------------------
% CONDICIONES INICIALES
% -------------------------------------------
vi = 0; % Velocidad inicial del saltador (m/s)
yi = 0; % Posición inicial del saltador (m)

% -------------------------------------------
% ECUACIÓN DIFERENCIAL
% -------------------------------------------

% Segundo orden: y''(t) = gravedad
% Primer orden (integración): y'(t) = gravedad * t + C1
% Evaluación en y'(0) = vi:  C1 = vi - gravedad * 0
% Como vi es 0, C1 = 0

% Primer orden (velocidad): v(t) = gravedad * t 
v_t = gravedad * tiempo;

% Primer orden (integración de la velocidad): y(t) = ((1/2) * gravedad * t^2) + C2
% Evaluación en y(0) = yi: C2 = yi = 0

% Posición en función del tiempo
y_t = 0.5 * gravedad * tiempo.^2;

% -------------------------------------------
% RESULTADOS
% -------------------------------------------
% Graficar la posición del saltador a lo largo del tiempo
figure;
plot(tiempo, y_t);
xlabel('Tiempo (s)');
ylabel('Posición (m)');
title('Posición del saltador de bungee vs Tiempo');
grid on;




% -------------------------------------------
% DATOS GENERALES POSTERIORES A SALTAR
% -------------------------------------------

% y(t) = L0

% Fuerza elástica de la cuerda Fe = -k(y(t) - C2)
% K es la constante de la cuerda (N/m)
% L0 es la longitud de la cuerda en reposo (m)
% y(t) es la posición del saltador en función del tiempo (t)