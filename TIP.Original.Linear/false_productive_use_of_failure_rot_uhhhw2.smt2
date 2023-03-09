(set-logic HORN)
(declare-datatypes ((Nat_698 0)) (((S_616 (projS_248 Nat_698)) (Z_2680 ))))
(declare-fun diseqNat_698 (Nat_698 Nat_698) Bool)
(declare-fun projS_249 (Nat_698 Nat_698) Bool)
(declare-fun isS_554 (Nat_698) Bool)
(declare-fun isZ_554 (Nat_698) Bool)
(assert (forall ((x_115694 Nat_698))
	(projS_249 x_115694 (S_616 x_115694))))
(assert (forall ((x_115697 Nat_698))
	(isS_554 (S_616 x_115697))))
(assert (isZ_554 Z_2680))
(assert (forall ((x_115698 Nat_698))
	(diseqNat_698 (S_616 x_115698) Z_2680)))
(assert (forall ((x_115699 Nat_698))
	(diseqNat_698 Z_2680 (S_616 x_115699))))
(assert (forall ((x_115700 Nat_698) (x_115701 Nat_698))
	(=> (diseqNat_698 x_115700 x_115701)
	    (diseqNat_698 (S_616 x_115700) (S_616 x_115701)))))
(declare-datatypes ((list_378 0)) (((nil_432 ) (cons_372 (head_744 Nat_698) (tail_750 list_378)))))
(declare-fun diseqlist_372 (list_378 list_378) Bool)
(declare-fun head_745 (Nat_698 list_378) Bool)
(declare-fun tail_751 (list_378 list_378) Bool)
(declare-fun isnil_432 (list_378) Bool)
(declare-fun iscons_372 (list_378) Bool)
(assert (forall ((x_115703 Nat_698) (x_115704 list_378))
	(head_745 x_115703 (cons_372 x_115703 x_115704))))
(assert (forall ((x_115703 Nat_698) (x_115704 list_378))
	(tail_751 x_115704 (cons_372 x_115703 x_115704))))
(assert (isnil_432 nil_432))
(assert (forall ((x_115706 Nat_698) (x_115707 list_378))
	(iscons_372 (cons_372 x_115706 x_115707))))
(assert (forall ((x_115708 Nat_698) (x_115709 list_378))
	(diseqlist_372 nil_432 (cons_372 x_115708 x_115709))))
(assert (forall ((x_115710 Nat_698) (x_115711 list_378))
	(diseqlist_372 (cons_372 x_115710 x_115711) nil_432)))
(assert (forall ((x_115712 Nat_698) (x_115713 list_378) (x_115714 Nat_698) (x_115715 list_378))
	(=> (diseqNat_698 x_115712 x_115714)
	    (diseqlist_372 (cons_372 x_115712 x_115713) (cons_372 x_115714 x_115715)))))
(assert (forall ((x_115712 Nat_698) (x_115713 list_378) (x_115714 Nat_698) (x_115715 list_378))
	(=> (diseqlist_372 x_115713 x_115715)
	    (diseqlist_372 (cons_372 x_115712 x_115713) (cons_372 x_115714 x_115715)))))
(declare-fun length_68 (Nat_698 list_378) Bool)
(assert (forall ((x_115689 Nat_698) (y_3124 Nat_698) (xs_870 list_378))
	(=> (length_68 x_115689 xs_870)
	    (length_68 (S_616 x_115689) (cons_372 y_3124 xs_870)))))
(assert (length_68 Z_2680 nil_432))
(assert (forall ((x_115691 Nat_698) (xs_871 list_378) (ys_239 list_378))
	(=>	(and true
			(diseqlist_372 xs_871 ys_239)
			(length_68 x_115691 xs_871)
			(length_68 x_115691 ys_239))
		false)))
(check-sat)