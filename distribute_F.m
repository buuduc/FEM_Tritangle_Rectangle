function distribute_F(i,j,fx,fy)
global F
global h
global point
x=[point(i,2) point(j,2) ];
y=[point(i,3) point(j,3) ];
L=sqrt((x(1)-x(2))^2+(y(1)-y(2))^2);
bool=[2*i-1,2*i,2*j-1,2*j];
m=max([i,j]);
if size(F,1)<2*m
    F(2*m,1)=0;
end
F(bool,1)=F(bool,1)+(h*L/2)*[fx;fy;fx;fy];