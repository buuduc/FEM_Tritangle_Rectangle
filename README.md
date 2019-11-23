# FEM_Tritangle_Rectangle
#HCMUT
#code by Nguyen Nhu Buu Duc
1) WITH RECTANGLE ELEMENT. YOU MUST INPUT NODE BY:
- FIRST NODE MUST BE NODE UNDER THE LEFT
- ORDER OF NODE MUST BE REVERSE CLOCKWISE. 
WHY ? BECAUSE THE THEORY I USE IN THIS PROGRAM IS MADE FOR THAT CONVENTION.
IF YOU NOT FOLLOW IT, YOUR SOLUTION IS WRONG
2) How to use this code program
 - input node of problem
 node(x,y)
 x:coordinate of x
 y:coordinate of y
 - input element you want to divide
    RECTANG(n1,n2,n3,n4,v,E) if you want to divide rectangle
    TRITANG(n1,n2,n3,v,E) if you want to divide tritangle
     v is poisson coefficient, E is young module
  - input boundary condition with boudary(n,direct)
    n: number of node you wants to fixed
    direct: direction of fixed ( 'ux' ,'uy', or 'all')
 - input Force for that problem with concent_F and distribute_F function
 - SOLVE()