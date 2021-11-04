(* ek[L][a,k]= epsilon(L)(a).k*)
(* e[L][a,b] = epsilon(L).epsilon*)
(* s[a,b]=2*k[a]*k[b] *)
(* s[a2,a3,p1] = 2**)
(* k1+k2+a1+..+an=0*)
(* k1=-p1 --- k2=p1'*)
(*3pt numerator and tree*)
M3numR[{k1_, a2_, k2_}, L_]:= I*Sqrt[2]*ek[L][a2, k1];
A3Tree[{k1_,a2_,k2_},R_]:=-2 ek[R][a2,k1];
