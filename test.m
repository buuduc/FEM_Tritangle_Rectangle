%Tam Giac 1
v=0.3;
DC=2E11;
%%% US
% c1=DC/(1-v^2);
% c2=v;
% t=10E-3;
%%% BD
c1=((1-v)*DC)/((1+v)*(1-2*v));
c2=v/(1-v);
t=1;
k=(1-c2)/2;
x=[0 2 2];
y=[0 0 2];
p=20E3;
%%chi co o ung suat phang
xij=x(1)-x(2);
xjk=x(2)-x(3);
xik=x(1)-x(3);
yij=y(1)-y(2);
yjk=y(2)-y(3);
yik=y(1)-y(3);
A=(1/2)*2*2;
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
%disp(kpt1)
%%%%%% Tu Giac
a=4;
b=2;
%%%%%%
k11 = (b^2+k*a^2)/3;
k12 = a*b*(k+c2)/4;
k13 = (k*a^2-2*b^2)/6;
k14 = -(k-c2)*a*b/4;
k15 = -(b^2+k*a^2)/6;
k16 = -(k+c2)*a*b/4;
k17 = -(2*k*a^2-b^2)/6;
k18 = -(c2-k)*a*b/4;
k22 = (a^2+k*b^2)/3;
k23 = -(c2-k)*a*b/4;
k24 = -(2*k*b^2-a^2)/6;
k25 = -(c2+k)*a*b/4;
k26 = -(a^2+k*b^2)/6;
k27 = k14;
k28 = (k*b^2-2*a^2)/6;
%%%%
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
k21=k12;
k31 = k13;
k32 = k23;
k41 =k14;
k42 = k24;
k43 = k34;
k51=k15;
k52=k25;
k53=k35;
k54=k45;
k61=k16;
k62=k26;
k63=k36;
k64=k46;
k65=k56;
k71 = k17;
k72 = k27;
k73 = k37;
k74 = k47;
k75 = k57;
k76 = k67;
k81 = k18;
k82 = k28;
k83 = k38;
k84 = k48;
k85 = k58;
k86 = k68;
k87 = k78;
kpt2 = (c1*t/(a*b))*[k11 k12 k13 k14 k15 k16 k17 k18;...
    k21 k22 k23 k24 k25 k26 k27 k28;...
    k31 k32 k33 k34 k35 k36 k37 k38;...
    k41 k42 k43 k44 k45 k46 k47 k48;...
    k51 k52 k53 k54 k55 k56 k57 k58;...
    k61 k62 k63 k64 k65 k66 k67 k68;...
    k71 k72 k73 k74 k75 k76 k77 k78;...
    k81 k82 k83 k84 k85 k86 k87 k88];
%disp(kpt2)
%%%%%%%%%%%%%%%%
%Tam Giac 2
v=0.3;
E=2E11;
x=[6 8 6];
y=[0 0 2];
p=20E3;
xij=x(1)-x(2);
xjk=x(2)-x(3);
xik=x(1)-x(3);
yij=y(1)-y(2);
yjk=y(2)-y(3);
yik=y(1)-y(3);
A=(1/2)*2*2;
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
kpt3 = (c1*t/(4*A))*[k11 k12 k13 k14 k15 k16;...
    k21 k22 k23 k24 k25 k26;...
    k31 k32 k33 k34 k35 k36;...
    k41 k42 k43 k44 k45 k46;...
    k51 k52 k53 k54 k55 k56;...
    k61 k62 k63 k64 k65 k66];
%disp(kpt3)
ktt = zeros(12,12);
ktt([1 2 3 4 11 12],[1 2 3 4 11 12])=ktt([1 2 3 4 11 12],[1 2 3 4 11 12])+kpt1;
ktt([3 4 5 6 9 10 11 12],[3 4 5 6 9 10 11 12])=ktt([3 4 5 6 9 10 11 12],[3 4 5 6 9 10 11 12])+kpt2;
ktt([5 6 7 8 9 10],[5 6 7 8 9 10])=ktt([5 6 7 8 9 10],[5 6 7 8 9 10])+kpt3;
disp(ktt)
