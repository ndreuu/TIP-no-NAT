(set-logic HORN)
(declare-datatypes ((Nat_715 0)) (((S_635 (projS_256 Nat_715)) (Z_2747 ))))
(declare-fun diseqNat_715 (Nat_715 Nat_715) Bool)
(declare-fun projS_257 (Nat_715 Nat_715) Bool)
(declare-fun isS_571 (Nat_715) Bool)
(declare-fun isZ_571 (Nat_715) Bool)
(assert (forall ((x_126473 Nat_715))
	(projS_257 x_126473 (S_635 x_126473))))
(assert (forall ((x_126476 Nat_715))
	(isS_571 (S_635 x_126476))))
(assert (isZ_571 Z_2747))
(assert (forall ((x_126477 Nat_715))
	(diseqNat_715 (S_635 x_126477) Z_2747)))
(assert (forall ((x_126478 Nat_715))
	(diseqNat_715 Z_2747 (S_635 x_126478))))
(assert (forall ((x_126479 Nat_715) (x_126480 Nat_715))
	(=> (diseqNat_715 x_126479 x_126480)
	    (diseqNat_715 (S_635 x_126479) (S_635 x_126480)))))
(declare-datatypes ((list_402 0)) (((nil_463 ) (cons_396 (head_792 Nat_715) (tail_798 list_402)))))
(declare-fun diseqlist_396 (list_402 list_402) Bool)
(declare-fun head_793 (Nat_715 list_402) Bool)
(declare-fun tail_799 (list_402 list_402) Bool)
(declare-fun isnil_463 (list_402) Bool)
(declare-fun iscons_396 (list_402) Bool)
(assert (forall ((x_126482 Nat_715) (x_126483 list_402))
	(head_793 x_126482 (cons_396 x_126482 x_126483))))
(assert (forall ((x_126482 Nat_715) (x_126483 list_402))
	(tail_799 x_126483 (cons_396 x_126482 x_126483))))
(assert (isnil_463 nil_463))
(assert (forall ((x_126485 Nat_715) (x_126486 list_402))
	(iscons_396 (cons_396 x_126485 x_126486))))
(assert (forall ((x_126487 Nat_715) (x_126488 list_402))
	(diseqlist_396 nil_463 (cons_396 x_126487 x_126488))))
(assert (forall ((x_126489 Nat_715) (x_126490 list_402))
	(diseqlist_396 (cons_396 x_126489 x_126490) nil_463)))
(assert (forall ((x_126491 Nat_715) (x_126492 list_402) (x_126493 Nat_715) (x_126494 list_402))
	(=> (diseqNat_715 x_126491 x_126493)
	    (diseqlist_396 (cons_396 x_126491 x_126492) (cons_396 x_126493 x_126494)))))
(assert (forall ((x_126491 Nat_715) (x_126492 list_402) (x_126493 Nat_715) (x_126494 list_402))
	(=> (diseqlist_396 x_126492 x_126494)
	    (diseqlist_396 (cons_396 x_126491 x_126492) (cons_396 x_126493 x_126494)))))
(declare-fun drop_66 (list_402 Nat_715 list_402) Bool)
(assert (forall ((x_126465 list_402))
	(drop_66 x_126465 Z_2747 x_126465)))
(assert (forall ((x_126466 list_402) (x_126463 Nat_715) (x_126464 list_402) (z_2748 Nat_715))
	(=> (drop_66 x_126466 z_2748 x_126464)
	    (drop_66 x_126466 (S_635 z_2748) (cons_396 x_126463 x_126464)))))
(assert (forall ((z_2748 Nat_715))
	(drop_66 nil_463 (S_635 z_2748) nil_463)))
(assert (forall ((x_126469 list_402) (x_126470 list_402) (x_126471 list_402) (n_118 Nat_715) (xs_898 list_402))
	(=>	(and true
			(diseqlist_396 x_126470 x_126471)
			(drop_66 x_126469 n_118 xs_898)
			(drop_66 x_126470 n_118 x_126469)
			(drop_66 x_126471 n_118 xs_898))
		false)))
(check-sat)