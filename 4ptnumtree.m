(* ek[L][a,k]= epsilon(L)(a).k*)
(* e[L][a,b] = epsilon(L).epsilon*)
(* s[a,b]=2*k[a]*k[b] *)
(* s[a2,a3,p1] = 2**)
(* k1+k2+a1+..+an=0*)
(* k1=-p1 --- k2=p1'*)
(*4pt numerator and tree*)
M4numR[{k1_,a2_,a3_,k2_},L_]:=1/2 (s[a2,k1] e[L][a2,a3]-4 ek[L][a2,k1] (ek[L][a3,a2]+ek[L][a3,k1]));
A4Tree[{k1_,a2_,a3_,k2_},R_]:=(-e[R][a2,a3]-(s[a2,k1] e[R][a2,a3])/s[a2,a3]+(2 ek[R][a2,k1] ek[R][a3,a2])/s[a2,a3]+(2 ek[R][a2,k1] ek[R][a3,a2])/s[a2,k1]-(2 ek[R][a2,a3] ek[R][a3,k1])/s[a2,a3]+(2 ek[R][a2,k1] ek[R][a3,k1])/s[a2,k1]);
