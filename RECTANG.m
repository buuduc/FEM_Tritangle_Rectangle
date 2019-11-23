function RECTANG(n1,n2,n3,n4,v,E)
global point
global h
global ktt
if size(ktt,1)<2*size(point,1)
    ktt(2*size(point,1),2*size(point,1))=0
end
% v=0.3;
% E=2E11;
global style
if style=='bd'
    c1=((1-v)*E)/((1+v)*(1-2*v));
    c2=v/(1-v);
else
    c1=E/(1-v^2);
    c2=v;
end
x=[point(n1,2) point(n2,2) point(n3,2) point(n4,2)];
y=[point(n1,3) point(n2,3) point(n3,3) point(n4,3)];
a=x(2)-x(1)
b=y(3)-y(2)
ld=(1-c2)/2
% a = 2
% b = 1
% E =2*10^11
% v = 0.3
% H = 0.01

% %bien dang phang
% c1_bd = (1-v)*E/((1+v)*(1-2*v))
% c2_bd = v/(1-v)
% ld_bd = (1-c2_bd)/2
% H_bd = 1
% %ung suat phang
% c1_us = E/(1-v^2)
% c2_us = v
% ld_us = (1-c2_us)/2
% H_us = H
% %%%%%khai bao c1, c2, h
% c1 = c1_bd
% c2 = c2_bd
% ld = ld_bd
% h = H_bd

% c1 = c1_us
% c2 = c2_us
% ld = ld_us
% h = H_us
%Ma tran bool cho phan tu PLANE_tu giac
k11 = (b^2 + ld*a^2)/3;
k12 = (c2 + ld)*a*b/4;
k13 = (ld*a^2-2*b^2)/6;
k14 = (c2-ld)*a*b/4;
k15 = -(ld*a^2 + b^2)/6;
k16 = -(ld + c2)*a*b/4;
k17 = -(2*ld*a^2-b^2)/6;
k18 = -(c2 - ld)*a*b/4;
k22 = (a^2+ld*b^2)/3;
k23 = -(c2-ld)*a*b/4;
k24 = -(2*ld*b^2 - a^2)/6;
k25 = -(c2+ld)*a*b/4;
k26 = -(a^2 +ld*b^2)/6;
k27 = (c2-ld)*a*b/4;
k28 = (ld*b^2 - 2*a^2)/6;
k33 = k11;
k34 = k16;
k35 = k17;
k36 = k14;
k37 = k15;
k38 = k12;
k44 = k22;
k45 = k18;
k46 = k28;
k47 = k12;
k48 = k26;
k55 = k11;
k56 = k12;
k57 = k13;
k58 = k14;
k66 = k22;
k67 = k18;
k68 = k24;
k77 = k11;
k78 = k16;
k88 = k22;
k21 = k12;
k31 = k13;
k41 = k14;
k51 = k15;
k61 = k16;
k71 = k17;
k81 = k18;
k32 = k23;
k42 = k24;
k52 = k25;
k62 = k26;
k72 = k27;
k82 = k28;
k43 = k34;
k53 = k35;
k63 = k36;
k73 = k37;
k83 = k38;
k54 = k45;
k64 = k46;
k74 = k47;
k84 = k48;
k65 = k56;
k75 = k57;
k85 = k58;
k76 = k67;
k86 = k68;
k87 = k78;
K_elem = ((c1*h)/(a*b))*[k11 k12 k13 k14 k15 k16 k17 k18 ;...
          k21 k22 k23 k24 k25 k26 k27 k28;...
          k31 k32 k33 k34 k35 k36 k37 k38;...
          k41 k42 k43 k44 k45 k46 k47 k48;...
          k51 k52 k53 k54 k55 k56 k57 k58;...
          k61 k62 k63 k64 k65 k66 k67 k68;...
          k71 k72 k73 k74 k75 k76 k77 k78;...
          k81 k82 k83 k84 k85 k86 k87 k88]
bool =[ 2*n1-1 2*n1 2*n2-1 2*n2 2*n3-1 2*n3 2*n4-1 2*n4]
ktt(bool,bool)=ktt(bool,bool)+K_elem
%  K_elem = round(K_elem,2)
