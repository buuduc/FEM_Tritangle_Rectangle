function concent_F(n,fx,fy)
global F
if size(F,1)<2*n
    F(2*n,1)=0
end
F([2*n-1 2*n],1)=F([2*n-1 2*n],1)+[fx;fy]