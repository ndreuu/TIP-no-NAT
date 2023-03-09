(set-logic HORN)
(declare-datatypes ((Nat_189 0)) (((zero_14 ) (succ_14 (p_40 Nat_189)))))
(declare-fun diseqNat_189 (Nat_189 Nat_189) Bool)
(declare-fun p_41 (Nat_189 Nat_189) Bool)
(declare-fun iszero_14 (Nat_189) Bool)
(declare-fun issucc_14 (Nat_189) Bool)
(assert (forall ((x_11988 Nat_189))
	(p_41 x_11988 (succ_14 x_11988))))
(assert (iszero_14 zero_14))
(assert (forall ((x_11990 Nat_189))
	(issucc_14 (succ_14 x_11990))))
(assert (forall ((x_11991 Nat_189))
	(diseqNat_189 zero_14 (succ_14 x_11991))))
(assert (forall ((x_11992 Nat_189))
	(diseqNat_189 (succ_14 x_11992) zero_14)))
(assert (forall ((x_11993 Nat_189) (x_11994 Nat_189))
	(=> (diseqNat_189 x_11993 x_11994)
	    (diseqNat_189 (succ_14 x_11993) (succ_14 x_11994)))))
(declare-fun plus_12 (Nat_189 Nat_189 Nat_189) Bool)
(assert (forall ((x_11967 Nat_189) (z_539 Nat_189) (y_477 Nat_189))
	(=> (plus_12 x_11967 z_539 y_477)
	    (plus_12 (succ_14 x_11967) (succ_14 z_539) y_477))))
(assert (forall ((x_11968 Nat_189))
	(plus_12 x_11968 zero_14 x_11968)))
(declare-fun add_104 (Nat_189 Nat_189 Nat_189 Nat_189) Bool)
(assert (forall ((x_11969 Nat_189) (x_11970 Nat_189) (x_11959 Nat_189) (y_478 Nat_189) (z_540 Nat_189))
	(=>	(and (add_104 x_11970 x_11959 y_478 z_540)
			(plus_12 x_11969 (succ_14 zero_14) x_11970))
		(add_104 x_11969 (succ_14 x_11959) y_478 z_540))))
(assert (forall ((x_11972 Nat_189) (x_11973 Nat_189) (x_11960 Nat_189) (z_540 Nat_189))
	(=>	(and (add_104 x_11973 zero_14 x_11960 z_540)
			(plus_12 x_11972 (succ_14 zero_14) x_11973))
		(add_104 x_11972 zero_14 (succ_14 x_11960) z_540))))
(assert (forall ((x_11975 Nat_189))
	(add_104 x_11975 zero_14 zero_14 x_11975)))
(assert (forall ((x_11976 Nat_189) (x_11977 Nat_189) (x_11961 Nat_189) (y_479 Nat_189) (z_541 Nat_189))
	(=>	(and true
			(diseqNat_189 x_11976 x_11977)
			(add_104 x_11976 x_11961 y_479 z_541)
			(add_104 x_11977 y_479 x_11961 z_541))
		false)))
(assert (forall ((x_11978 Nat_189) (x_11979 Nat_189) (x_11980 Nat_189) (x_11981 Nat_189) (x_11962 Nat_189) (y_480 Nat_189) (z_542 Nat_189))
	(=>	(and true
			(diseqNat_189 x_11979 x_11981)
			(plus_12 x_11978 y_480 z_542)
			(plus_12 x_11979 x_11962 x_11978)
			(plus_12 x_11980 x_11962 y_480)
			(plus_12 x_11981 x_11980 z_542))
		false)))
(assert (forall ((x_11982 Nat_189) (x_11983 Nat_189) (x_11963 Nat_189) (y_481 Nat_189))
	(=>	(and true
			(diseqNat_189 x_11982 x_11983)
			(plus_12 x_11982 x_11963 y_481)
			(plus_12 x_11983 y_481 x_11963))
		false)))
(assert (forall ((x_11984 Nat_189) (x_11964 Nat_189))
	(=>	(and true
			(diseqNat_189 x_11984 x_11964)
			(plus_12 x_11984 x_11964 zero_14))
		false)))
(assert (forall ((x_11985 Nat_189) (x_11965 Nat_189))
	(=>	(and true
			(diseqNat_189 x_11985 x_11965)
			(plus_12 x_11985 zero_14 x_11965))
		false)))
(check-sat)
