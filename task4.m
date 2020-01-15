u=linspace(0,2*pi,100);%Задаем параметр u
v=linspace(0,2*pi,100);%Задаем параметр v
[u,v]=meshgrid(u,v);%Создаем матрицу
x=(2+cos(u)).*cos(v).^3.*sin(v);%Выражаем x через параметры
y=(2+cos(u+2*pi/3)).*cos(v+2*pi/3).^2.*sin(v+2*pi/3).^2;%Выражаем y через параметры
z=-(2+cos(u-2*pi/3)).*cos(v+2*pi/3).^2.*sin(v+2*pi/3).^2;%Выражаем z через параметры
surfl(x,y,z);%Строим поверхность
title('Stiletto surface');%Задаем заголовок
colormap(hsv);% Задаем цветовую гамму
alpha 0.5;%Задаем прозрачность
axis off;%ОТключаем оси
shading interp;%Подсветка