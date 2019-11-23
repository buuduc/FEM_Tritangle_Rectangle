function determine_problem(type,thin)
global h
global style

switch nargin
    case 1
        if type=='ungsuatphang'
            h=1;
            style='us'
        end
    case 2
        if type=='biendangphang'
        h=thin;
        style='bd'
        end
end
end