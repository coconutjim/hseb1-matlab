u=linspace(0,2*pi,100);%������ �������� u
v=linspace(0,2*pi,100);%������ �������� v
[u,v]=meshgrid(u,v);%������� �������
x=(2+cos(u)).*cos(v).^3.*sin(v);%�������� x ����� ���������
y=(2+cos(u+2*pi/3)).*cos(v+2*pi/3).^2.*sin(v+2*pi/3).^2;%�������� y ����� ���������
z=-(2+cos(u-2*pi/3)).*cos(v+2*pi/3).^2.*sin(v+2*pi/3).^2;%�������� z ����� ���������
surfl(x,y,z);%������ �����������
title('Stiletto surface');%������ ���������
colormap(hsv);% ������ �������� �����
alpha 0.5;%������ ������������
axis off;%��������� ���
shading interp;%���������