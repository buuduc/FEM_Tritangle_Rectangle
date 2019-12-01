function Stress(element,varargin)
global point
global phantu
global bound
    if nargin==1
        x=[point(phantu(element,2),2) point(phantu(element,3),2) point(phantu(element,4),2)];
        y=[point(phantu(element,2),3) point(phantu(element,3),3) point(phantu(element,4),3)];
        c1=phantu(element,6);
        c2=phantu(element,7);
        k=(1-c2)/2;
        % t=10E-3; %%chi co o ung suat phang
        xij=x(1)-x(2);
        xjk=x(2)-x(3);
        xik=x(1)-x(3);
        yij=y(1)-y(2);
        yjk=y(2)-y(3);
        yik=y(1)-y(3);
        A=(1/2)*det([ [ 1 1 1]' x' y']);;
        S=(c1/(2*A))*[yjk -c2*xjk -yik c2*xik yij -c2*xij;c2*yjk -xjk -c2*yik xik c2*yij -xij;-k*xjk k*yjk k*xik -k*yik -k*xij k*yij];
        bool=[phantu(element,2)*2-1 phantu(element,2)*2 phantu(element,3)*2-1 phantu(element,3)*2 phantu(element,4)*2-1 phantu(element,4)*2];
        ungsuat=S*bound([bool],:);
        fprintf(' Stress of triangle element %d is \n',[element])
        disp(ungsuat)
    else
        x=varargin{1}
        y=varargin{2}
        X=[point(phantu(element,2),2) point(phantu(element,3),2) point(phantu(element,4),2) point(phantu(element,5),2)]
        Y=[point(phantu(element,2),3) point(phantu(element,3),3) point(phantu(element,4),3) point(phantu(element,5),3)]
        c1=phantu(element,6);
        c2=phantu(element,7);
        k=(1-c2)/2;
        x1=X(1)-x;
        x2=X(2)-x;
        x3=X(3)-x;
        x4=X(4)-x;
        y1=Y(1)-y;
        y2=Y(2)-y;
        y3=Y(3)-y;
        y4=Y(4)-y;
        a=X(2)-X(1);
        b=Y(3)-Y(2);
        S=(1/(a*b))*[-y4,-c2*x2,y4,c2*x1,-y1,-c2*x1,y1,c2*x2;-c2*y4 -x2 c2*y4 x1 -c2*y1 -x1 c2*y1 x2;-k*x2 -k*y4 k*x1 k*y4 -k*x1 -k*y1 k*x2 k*y1];
        bool=[phantu(element,2)*2-1 phantu(element,2)*2 phantu(element,3)*2-1 phantu(element,3)*2 phantu(element,4)*2-1 phantu(element,4)*2  phantu(element,5)*2-1 phantu(element,5)*2];
       bound(bool,:);
       ungsuat=S*bound(bool,:);
       fprintf(' Stress of element %d at X= %d ; Y= %d is: \n',[element,x,y])
       disp(ungsuat)
    end
end

        