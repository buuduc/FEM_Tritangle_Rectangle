clear all
% global style
% global h
% style='us'
determine_problem('ungsuatphang')
node(0,0)
node(2,0)
node(2,1)
node(0,1)
% TRITANG(1,2,4,0.3,2e11)
RECTANG(1,2,3,4,0.3,2e11)
distribute_F(3,4,5,6)
concent_F(3,4,5)
boundary(3,'all')
SOLVE()