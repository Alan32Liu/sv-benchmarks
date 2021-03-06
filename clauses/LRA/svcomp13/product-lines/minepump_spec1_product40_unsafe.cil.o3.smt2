(set-info :origin "SVCOMP13 benchmarks generated by Arie Gurfinkel")
(set-info :status unsat)
(set-logic HORN)
(declare-fun cp-rel-bb1.i.i23.i.i () Bool)
(declare-fun cp-rel-entry () Bool)
(declare-fun cp-rel-bb1.i.i (Real Real Real Real) Bool)
(assert |cp-rel-entry|)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Bool) )(let (($x215694 (and |cp-rel-entry| (<= ?D 0.0) (>= ?C 1.0) (<= ?C 1.0) (>= ?B 1.0) (<= ?B 1.0) (>= ?A 0.0) (<= ?A 0.0) (= ?E true) (>= ?D 0.0))))
(=> $x215694 (|cp-rel-bb1.i.i| ?A ?B ?C ?D))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Bool) (?J Bool) (?K Bool) (?L Bool) (?M Bool) (?N Bool) (?O Real) (?P Real) (?Q Bool) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Real) (?X Real) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Real) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Real) (?N1 Real) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Bool) (?B2 Real) (?C2 Real) (?D2 Real) (?E2 Real) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Real) (?L2 Bool) (?M2 Real) (?N2 Real) (?O2 Bool) (?P2 Real) (?Q2 Real) (?R2 Bool) (?S2 Real) (?T2 Bool) (?U2 Bool) (?V2 Bool) )(let (($x559303 (|cp-rel-bb1.i.i| ?E ?F ?G ?H)))
(let (($x66561 (= ?J2 (or ?V2 ?U2))))
(let (($x261165 (or (not ?I) (and ?J ?K (not ?L)))))
(let (($x841764 (or (not ?I) ?K)))
(let (($x533613 (not ?M)))
(let (($x4014 (or $x533613 (and ?I ?N (<= ?O ?P) (>= ?O ?P)) (and ?J ?Q ?L (<= ?O ?B) (>= ?O ?B)))))
(let (($x545028 (or $x533613 (and ?N (not ?Q)) (and ?Q (not ?N)))))
(let (($x931864 (or (not ?R) (and ?M ?S (not ?T)))))
(let (($x515350 (or (not ?R) ?S)))
(let (($x146995 (not ?U)))
(let (($x547552 (or $x146995 (and ?R ?V (<= ?W ?X) (>= ?W ?X)) (and ?M ?Y ?T (<= ?W ?A) (>= ?W ?A)))))
(let (($x348177 (or $x146995 (and ?V (not ?Y)) (and ?Y (not ?V)))))
(let (($x89165 (or (not ?Z) (and ?U ?A1 ?B1))))
(let (($x833166 (or (not ?Z) ?A1)))
(let (($x279462 (not ?C1)))
(let (($x320909 (or $x279462 (and ?Z ?D1 ?E1 (<= ?F1 ?C) (>= ?F1 ?C)) (and ?U ?G1 (not ?B1) (<= ?F1 1.0) (>= ?F1 1.0)))))
(let (($x582905 (or $x279462 (and ?D1 (not ?G1)) (and ?G1 (not ?D1)))))
(let (($x860221 (or (not ?H1) (and ?C1 ?I1 (not ?J1)))))
(let (($x594114 (or (not ?H1) ?I1)))
(let (($x129787 (or (not ?K1) (and ?H1 ?L1 (<= ?M1 ?N1) (>= ?M1 ?N1)) (and ?C1 ?O1 ?J1 (<= ?M1 ?O) (>= ?M1 ?O)))))
(let (($x287890 (or (not ?K1) (and ?L1 (not ?O1)) (and ?O1 (not ?L1)))))
(let (($x482117 (or (not ?P1) (and ?K1 ?Q1 (not ?R1)))))
(let (($x487727 (or (not ?P1) ?Q1)))
(let (($x278039 (or (not ?S1) (and ?P1 ?T1 ?J1))))
(let (($x466376 (or (not ?S1) ?T1)))
(let (($x365279 (or (not ?U1) (and ?P1 ?V1 (not ?J1)))))
(let (($x538275 (or (not ?U1) ?V1)))
(let (($x926815 (or (not ?W1) (and ?U1 ?X1 ?Y1))))
(let (($x117740 (or (not ?W1) ?X1)))
(let (($x81717 (and ?Z ?I2 (not ?E1) (<= ?B2 0.0) (>= ?B2 0.0) (<= ?C2 ?O) (>= ?C2 ?O) (<= ?D2 0.0) (>= ?D2 0.0))))
(let (($x532458 (>= ?C2 ?M1)))
(let (($x649817 (<= ?C2 ?M1)))
(let (($x608740 (>= ?B2 ?F1)))
(let (($x599299 (<= ?B2 ?F1)))
(let (($x125258 (and ?K1 ?H2 ?R1 $x599299 $x608740 $x649817 $x532458 (<= ?D2 ?D) (>= ?D2 ?D))))
(let (($x861649 (and ?U1 ?G2 (not ?Y1) $x599299 $x608740 $x649817 $x532458 (<= ?D2 0.0) (>= ?D2 0.0))))
(let (($x20192 (not ?Z1)))
(let (($x856653 (or $x20192 (and ?S1 ?A2 $x599299 $x608740 $x649817 $x532458 (<= ?D2 ?E2) (>= ?D2 ?E2)) (and ?W1 ?F2 $x599299 $x608740 $x649817 $x532458 (<= ?D2 ?D) (>= ?D2 ?D)) $x861649 $x125258 $x81717)))
(let (($x539954 (or $x20192 (and ?A2 (not ?F2) (not ?G2) (not ?H2) (not ?I2)) (and ?F2 (not ?A2) (not ?G2) (not ?H2) (not ?I2)) (and ?G2 (not ?A2) (not ?F2) (not ?H2) (not ?I2)) (and ?H2 (not ?A2) (not ?F2) (not ?G2) (not ?I2)) (and ?I2 (not ?A2) (not ?F2) (not ?G2) (not ?H2)))))
(let (($x270867 (= ?Z1 true)))
(let (($x397008 (= ?J2 true)))
(let (($x855196 (= ?L (= ?K2 0.0))))
(let (($x94252 (= ?M2 (ite ?L2 1.0 0.0))))
(let (($x33729 (= ?T (= ?N2 0.0))))
(let (($x238740 (= ?X (ite ?O2 1.0 0.0))))
(let (($x19551 (= ?B1 (= ?P2 0.0))))
(let (($x344966 (= ?E1 (= ?Q2 0.0))))
(let (($x573275 (= ?R2 (not (<= ?O 0.0)))))
(let (($x216241 (= ?S2 (+ (~ 1.0) ?O))))
(let (($x515344 (= ?N1 (ite ?R2 ?S2 ?O))))
(let (($x206566 (= ?R1 (= ?F1 0.0))))
(let (($x365674 (= ?T2 (not (<= ?M1 1.0)))))
(let (($x450950 (= ?Y1 (= ?W 0.0))))
(let (($x258641 (= ?U2 (= ?W 0.0))))
(let (($x326027 (= ?V2 (= ?D2 0.0))))
(let (($x255551 (and (|cp-rel-bb1.i.i| ?A ?B ?C ?D) $x326027 $x258641 $x450950 (= ?E2 (ite ?T2 1.0 ?D)) $x365674 $x206566 $x515344 $x216241 $x573275 (= ?J1 (= ?D 0.0)) $x344966 $x19551 $x238740 (= ?O2 (= ?A 0.0)) $x33729 (= ?P (+ ?M2 ?B)) $x94252 (= ?L2 (not (<= 2.0 ?B))) $x855196 (>= ?H ?D2) (<= ?H ?D2) (>= ?G ?B2) (<= ?G ?B2) (>= ?F ?C2) (<= ?F ?C2) (>= ?E ?W) (<= ?E ?W) $x397008 $x270867 $x539954 $x856653 $x117740 $x926815 $x538275 $x365279 $x466376 $x278039 $x487727 $x482117 $x287890 $x129787 $x594114 $x860221 $x582905 $x320909 $x833166 $x89165 $x348177 $x547552 $x515350 $x931864 $x545028 $x4014 $x841764 $x261165 $x66561)))
(=> $x255551 $x559303))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Bool) (?F Bool) (?G Bool) (?H Bool) (?I Bool) (?J Bool) (?K Real) (?L Real) (?M Bool) (?N Bool) (?O Bool) (?P Bool) (?Q Bool) (?R Bool) (?S Real) (?T Real) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Real) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Real) (?J1 Real) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Real) (?Y1 Real) (?Z1 Real) (?A2 Real) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Real) (?H2 Bool) (?I2 Real) (?J2 Real) (?K2 Bool) (?L2 Real) (?M2 Real) (?N2 Bool) (?O2 Real) (?P2 Bool) (?Q2 Bool) (?R2 Bool) )(let (($x66561 (= ?F2 (or ?R2 ?Q2))))
(let (($x261165 (or (not ?E) (and ?F ?G (not ?H)))))
(let (($x841764 (or (not ?E) ?G)))
(let (($x533613 (not ?I)))
(let (($x895308 (or $x533613 (and ?E ?J (<= ?K ?L) (>= ?K ?L)) (and ?F ?M ?H (<= ?K ?B) (>= ?K ?B)))))
(let (($x545028 (or $x533613 (and ?J (not ?M)) (and ?M (not ?J)))))
(let (($x931864 (or (not ?N) (and ?I ?O (not ?P)))))
(let (($x515350 (or (not ?N) ?O)))
(let (($x146995 (not ?Q)))
(let (($x392107 (or $x146995 (and ?N ?R (<= ?S ?T) (>= ?S ?T)) (and ?I ?U ?P (<= ?S ?A) (>= ?S ?A)))))
(let (($x348177 (or $x146995 (and ?R (not ?U)) (and ?U (not ?R)))))
(let (($x89165 (or (not ?V) (and ?Q ?W ?X))))
(let (($x833166 (or (not ?V) ?W)))
(let (($x279462 (not ?Y)))
(let (($x582527 (or $x279462 (and ?V ?Z ?A1 (<= ?B1 ?C) (>= ?B1 ?C)) (and ?Q ?C1 (not ?X) (<= ?B1 1.0) (>= ?B1 1.0)))))
(let (($x582905 (or $x279462 (and ?Z (not ?C1)) (and ?C1 (not ?Z)))))
(let (($x860221 (or (not ?D1) (and ?Y ?E1 (not ?F1)))))
(let (($x594114 (or (not ?D1) ?E1)))
(let (($x129787 (or (not ?G1) (and ?D1 ?H1 (<= ?I1 ?J1) (>= ?I1 ?J1)) (and ?Y ?K1 ?F1 (<= ?I1 ?K) (>= ?I1 ?K)))))
(let (($x287890 (or (not ?G1) (and ?H1 (not ?K1)) (and ?K1 (not ?H1)))))
(let (($x482117 (or (not ?L1) (and ?G1 ?M1 (not ?N1)))))
(let (($x487727 (or (not ?L1) ?M1)))
(let (($x278039 (or (not ?O1) (and ?L1 ?P1 ?F1))))
(let (($x466376 (or (not ?O1) ?P1)))
(let (($x365279 (or (not ?Q1) (and ?L1 ?R1 (not ?F1)))))
(let (($x538275 (or (not ?Q1) ?R1)))
(let (($x926815 (or (not ?S1) (and ?Q1 ?T1 ?U1))))
(let (($x117740 (or (not ?S1) ?T1)))
(let (($x81717 (and ?V ?E2 (not ?A1) (<= ?X1 0.0) (>= ?X1 0.0) (<= ?Y1 ?K) (>= ?Y1 ?K) (<= ?Z1 0.0) (>= ?Z1 0.0))))
(let (($x532458 (>= ?Y1 ?I1)))
(let (($x649817 (<= ?Y1 ?I1)))
(let (($x608740 (>= ?X1 ?B1)))
(let (($x599299 (<= ?X1 ?B1)))
(let (($x289603 (and ?G1 ?D2 ?N1 $x599299 $x608740 $x649817 $x532458 (<= ?Z1 ?D) (>= ?Z1 ?D))))
(let (($x861649 (and ?Q1 ?C2 (not ?U1) $x599299 $x608740 $x649817 $x532458 (<= ?Z1 0.0) (>= ?Z1 0.0))))
(let (($x20192 (not ?V1)))
(let (($x809447 (or $x20192 (and ?O1 ?W1 $x599299 $x608740 $x649817 $x532458 (<= ?Z1 ?A2) (>= ?Z1 ?A2)) (and ?S1 ?B2 $x599299 $x608740 $x649817 $x532458 (<= ?Z1 ?D) (>= ?Z1 ?D)) $x861649 $x289603 $x81717)))
(let (($x539954 (or $x20192 (and ?W1 (not ?B2) (not ?C2) (not ?D2) (not ?E2)) (and ?B2 (not ?W1) (not ?C2) (not ?D2) (not ?E2)) (and ?C2 (not ?W1) (not ?B2) (not ?D2) (not ?E2)) (and ?D2 (not ?W1) (not ?B2) (not ?C2) (not ?E2)) (and ?E2 (not ?W1) (not ?B2) (not ?C2) (not ?D2)))))
(let (($x270867 (= ?V1 true)))
(let (($x855196 (= ?H (= ?G2 0.0))))
(let (($x94252 (= ?I2 (ite ?H2 1.0 0.0))))
(let (($x33729 (= ?P (= ?J2 0.0))))
(let (($x238740 (= ?T (ite ?K2 1.0 0.0))))
(let (($x19551 (= ?X (= ?L2 0.0))))
(let (($x344966 (= ?A1 (= ?M2 0.0))))
(let (($x573275 (= ?N2 (not (<= ?K 0.0)))))
(let (($x216241 (= ?O2 (+ (~ 1.0) ?K))))
(let (($x515344 (= ?J1 (ite ?N2 ?O2 ?K))))
(let (($x206566 (= ?N1 (= ?B1 0.0))))
(let (($x365674 (= ?P2 (not (<= ?I1 1.0)))))
(let (($x450950 (= ?U1 (= ?S 0.0))))
(let (($x258641 (= ?Q2 (= ?S 0.0))))
(let (($x326027 (= ?R2 (= ?Z1 0.0))))
(let (($x559303 (|cp-rel-bb1.i.i| ?A ?B ?C ?D)))
(let (($x553879 (and $x559303 $x326027 $x258641 $x450950 (= ?A2 (ite ?P2 1.0 ?D)) $x365674 $x206566 $x515344 $x216241 $x573275 (= ?F1 (= ?D 0.0)) $x344966 $x19551 $x238740 (= ?K2 (= ?A 0.0)) $x33729 (= ?L (+ ?I2 ?B)) $x94252 (= ?H2 (not (<= 2.0 ?B))) $x855196 (not (= ?F2 true)) $x270867 $x539954 $x809447 $x117740 $x926815 $x538275 $x365279 $x466376 $x278039 $x487727 $x482117 $x287890 $x129787 $x594114 $x860221 $x582905 $x582527 $x833166 $x89165 $x348177 $x392107 $x515350 $x931864 $x545028 $x895308 $x841764 $x261165 $x66561)))
(=> $x553879 |cp-rel-bb1.i.i23.i.i|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (not cp-rel-bb1.i.i23.i.i))
(check-sat)
