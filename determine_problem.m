function determine_problem(type,thin)
global h
global style

switch nargin
    case 1
        if type=='biendangphang'
            h=1;
            style='bd'
        end
    case 2
        if type=='ungsuatphang'
        h=thin;
        style='us'
        end
end
end