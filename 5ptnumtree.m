(* ek[L][a,k]= epsilon(L)(a).k*)
(* e[L][a,b] = epsilon(L).epsilon*)
(* s[a,b]=2*k[a]*k[b] *)
(* s[a2,a3,p1] = 2**)
(* k1+k2+a1+..+an=0*)
(* k1=-p1 --- k2=p1'*)
(*5pt numerator*)
M5numR[{k1_, a2_, a3_, a4_, k2_}, L_]:= ((-I/3)*(3*ek[L][a2, k1]*(s[a2, a3]*e[L][a3, a4] + s[a3, k1]*e[L][a3, a4] - 4*(ek[L][a3, a2] + ek[L][a3, k1])* (ek[L][a4, a2] + ek[L][a4, a3] + ek[L][a4, k1])) + s[a2, k1]*(-2*e[L][a3, a4]*ek[L][a2, a3] + e[L][a2, a4]* (2*ek[L][a3, a2] + 3*ek[L][a3, k1]) + e[L][a2, a3]* (2*ek[L][a4, a2] + 4*ek[L][a4, a3] + 3*ek[L][a4, k1]))))/Sqrt[2];


(* 5 point tree*)
A5Tree[{k1_,a2_,a3_,a4_,k2_},R_]:=((2 e[R][a3,a4] ek[R][a2,k1])/s[a2,k1]+(2 s[a2,a3] e[R][a3,a4] (ek[R][a2,a3]+ek[R][a2,a4]+ek[R][a2,k1]))/(s[a3,a4] (s[a2,a3]+s[a2,a4]+s[a3,a4]))+(2 (e[R][a3,a4] ek[R][a2,a3]+e[R][a3,a4] ek[R][a2,k1]-e[R][a2,a4] ek[R][a3,a2]-e[R][a2,a4] ek[R][a3,k1]+e[R][a2,a3] ek[R][a4,a2]+e[R][a2,a3] ek[R][a4,k1]))/(s[a2,a3]+s[a2,a4]+s[a3,a4])+1/s[a4,k2] (2 e[R][a2,a3] (ek[R][a4,a2]+ek[R][a4,a3]+ek[R][a4,k1])-1/s[a2,k1] 4 ek[R][a2,k1] (ek[R][a3,a2]+ek[R][a3,k1]) (ek[R][a4,a2]+ek[R][a4,a3]+ek[R][a4,k1]))+1/s[a2,a3] ((2 s[a3,a4] e[R][a2,a3] ek[R][a4,k1])/(s[a2,a3]+s[a2,a4]+s[a3,a4])-2 (e[R][a3,a4] ek[R][a2,a3]-e[R][a2,a4] ek[R][a3,a2]+e[R][a2,a3] ek[R][a4,a2]+e[R][a2,a3] ek[R][a4,k1])+(-2 s[a4,k2] (e[R][a3,a4] ek[R][a2,a3]-e[R][a2,a4] ek[R][a3,a2]+e[R][a2,a3] ek[R][a4,a2])+2 s[a2,k1] e[R][a2,a3] (ek[R][a4,a2]+ek[R][a4,a3])-4 (ek[R][a2,k1] ek[R][a3,a2]-ek[R][a2,a3] ek[R][a3,k1]) (ek[R][a4,a2]+ek[R][a4,a3])+4 (ek[R][a2,a4] ek[R][a3,a2]-ek[R][a2,a3] ek[R][a3,a4]) ek[R][a4,k1])/(s[a2,a3]+s[a2,a4]+s[a3,a4])+1/s[a4,k2] (2 s[a2,k1] e[R][a2,a3] (ek[R][a4,a2]+ek[R][a4,a3]+ek[R][a4,k1])-4 (ek[R][a2,k1] ek[R][a3,a2]-ek[R][a2,a3] ek[R][a3,k1]) (ek[R][a4,a2]+ek[R][a4,a3]+ek[R][a4,k1])))+1/s[a3,a4] ((2 s[a4,k2] e[R][a3,a4] ek[R][a2,k1])/s[a2,k1]-2 (e[R][a3,a4] ek[R][a2,a3]+e[R][a3,a4] ek[R][a2,k1]+e[R][a2,a4] ek[R][a3,a4]-e[R][a2,a3] ek[R][a4,a3])+1/s[a2,k1] 4 ek[R][a2,k1] (ek[R][a3,a4] ek[R][a4,a2]-ek[R][a3,a2] ek[R][a4,a3]-ek[R][a3,k1] ek[R][a4,a3]+ek[R][a3,a4] ek[R][a4,k1])+(-2 s[a4,k2] e[R][a3,a4] (ek[R][a2,a3]+ek[R][a2,a4])+2 s[a2,k1] (e[R][a3,a4] ek[R][a2,a4]-e[R][a2,a4] ek[R][a3,a4]+e[R][a2,a3] ek[R][a4,a3])+4 (ek[R][a2,k1] (ek[R][a3,a4] ek[R][a4,a2]-ek[R][a3,a2] ek[R][a4,a3])+(ek[R][a2,a3]+ek[R][a2,a4]) (ek[R][a3,k1] ek[R][a4,a3]-ek[R][a3,a4] ek[R][a4,k1])))/(s[a2,a3]+s[a2,a4]+s[a3,a4])))

