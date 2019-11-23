function boundary(n,direct)
global bound
if size(bound,1)<2*n
    bound(2*n,1)=0
end
switch direct
    case 'ux'
        bound(2*n-1,1)=-1
    case 'uy'
         bound(2*n,1)=-1
    case 'all'
        bound(2*n,1)=-1
        bound(2*n-1,1)=-1
end
