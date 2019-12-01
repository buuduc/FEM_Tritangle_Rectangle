function TRITANG(n1,n2,n3,v,E)
global point
global h
global ktt
global phantu
if size(ktt,1)<2*size(point,1)
    ktt(2*size(point,1),2*size(point,1))=0
end
% v=0.3;
% E=2E11;
global style
global bound
if style == 'bd'
    c1=((1-v)*E)/((1+v)*(1-2*v));
    c2=v/(1-v);
else
    c1=E/(1-v^2);
    c2=v;
end
phantu(size(phantu,1)+1,7)=0;
phantu(size(phantu,1),:)=[size(phantu,1) n1 n2 n3 0 c1 c2]
t=h
k=(1-c2)/2;
x=[point(n1,2) point(n2,2) point(n3,2)];
y=[point(n1,3) point(n2,3) point(n3,3)];
% t=10E-3; %%chi co o ung suat phang
xij=x(1)-x(2);
xjk=x(2)-x(3);
xik=x(1)-x(3);
yij=y(1)-y(2);
yjk=y(2)-y(3);
yik=y(1)-y(3);
A=(1/2)*det([ [ 1 1 1]' x' y'])
k11 = yjk^2+k*xjk^2;
k12 = -c2*xjk*yjk-k*yjk*xjk;
k13 = -yik*yjk - k*xjk*xik;
k14 = c2*xik*yjk + k*yik*xjk;
k15 = yjk*yij + k*xjk*xij;
k16 = -c2*yjk*xij - k*xjk*yij;
k22 = xjk^2 + k*yjk^2;
k23 = c2*xik*yik + k*xik*yjk;
k24 = -xjk*xik - k*yjk*yik;
k25 = -c2*xjk*yik - k*yjk*yik;
k26 = xij*xjk + k*yjk*yij;
k33 = yik^2 + k*xik^2;
k34 = -c2*xik*yik - k*xik*yik;
k35 = -yik*yij - k*xik*xjk;
k36 = c2*xij*yik + k*xik*yij;
k44 = xik^2 + k*yik^2;
k45 = c2*xik*yij + k*yik*xij;
k46 = -xik*xij - k*yik*yij;
k55 = yij^2 + k*xij^2;
k56 = -c2*xij*yij - k*xij*yij;
k66 = xij^2 + k*yij^2;
%%%%%%%%%
k21=k12;
k31=k13;
k41=k14;
k51=k15;
k61=k16;

k32=k23;
k42=k24;
k52=k25;
k62=k26;

k43=k34;
k53=k35;
k63=k36;

k54=k45;
k64=k46;

k65=k56;
%%%%%
kpt1 = (c1*t/(4*A))*[k11 k12 k13 k14 k15 k16;...
    k21 k22 k23 k24 k25 k26;...
    k31 k32 k33 k34 k35 k36;...
    k41 k42 k43 k44 k45 k46;...
    k51 k52 k53 k54 k55 k56;...
    k61 k62 k63 k64 k65 k66];

disp(kpt1);
bool =[2*n1-1 2*n1 2*n2-1 2*n2 2*n3-1 2*n3];
ktt(bool,bool)=ktt(bool,bool)+kpt1;
    