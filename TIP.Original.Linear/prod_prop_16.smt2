(set-logic HORN)
(declare-datatypes ((Bool_317 0)) (((false_317 ) (true_317 ))))
(declare-fun diseqBool_147 (Bool_317 Bool_317) Bool)
(declare-fun isfalse_147 (Bool_317) Bool)
(declare-fun istrue_147 (Bool_317) Bool)
(assert (isfalse_147 false_317))
(assert (istrue_147 true_317))
(assert (diseqBool_147 false_317 true_317))
(assert (diseqBool_147 true_317 false_317))
(declare-fun and_317 (Bool_317 Bool_317 Bool_317) Bool)
(declare-fun or_324 (Bool_317 Bool_317 Bool_317) Bool)
(declare-fun hence_317 (Bool_317 Bool_317 Bool_317) Bool)
(declare-fun not_322 (Bool_317 Bool_317) Bool)
(assert (and_317 false_317 false_317 false_317))
(assert (and_317 false_317 true_317 false_317))
(assert (and_317 false_317 false_317 true_317))
(assert (and_317 true_317 true_317 true_317))
(assert (or_324 false_317 false_317 false_317))
(assert (or_324 true_317 true_317 false_317))
(assert (or_324 true_317 false_317 true_317))
(assert (or_324 true_317 true_317 true_317))
(assert (hence_317 true_317 false_317 false_317))
(assert (hence_317 false_317 true_317 false_317))
(assert (hence_317 true_317 false_317 true_317))
(assert (hence_317 true_317 true_317 true_317))
(assert (not_322 true_317 false_317))
(assert (not_322 false_317 true_317))
(declare-datatypes ((Nat_536 0)) (((Z_1923 ) (S_425 (projS_150 Nat_536)))))
(declare-fun diseqNat_536 (Nat_536 Nat_536) Bool)
(declare-fun projS_151 (Nat_536 Nat_536) Bool)
(declare-fun isZ_392 (Nat_536) Bool)
(declare-fun isS_392 (Nat_536) Bool)
(assert (forall ((x_54104 Nat_536))
	(projS_151 x_54104 (S_425 x_54104))))
(assert (isZ_392 Z_1923))
(assert (forall ((x_54106 Nat_536))
	(isS_392 (S_425 x_54106))))
(assert (forall ((x_54107 Nat_536))
	(diseqNat_536 Z_1923 (S_425 x_54107))))
(assert (forall ((x_54108 Nat_536))
	(diseqNat_536 (S_425 x_54108) Z_1923)))
(assert (forall ((x_54109 Nat_536) (x_54110 Nat_536))
	(=> (diseqNat_536 x_54109 x_54110)
	    (diseqNat_536 (S_425 x_54109) (S_425 x_54110)))))
(declare-fun even_1 (Bool_317 Nat_536) Bool)
(assert (forall ((x_54091 Bool_317) (z_1924 Nat_536))
	(=> (even_1 x_54091 z_1924)
	    (even_1 x_54091 (S_425 (S_425 z_1924))))))
(assert (even_1 false_317 (S_425 Z_1923)))
(assert (even_1 true_317 Z_1923))
(declare-fun x_54088 (Nat_536 Nat_536 Nat_536) Bool)
(assert (forall ((x_54096 Nat_536) (z_1925 Nat_536) (y_2159 Nat_536))
	(=> (x_54088 x_54096 z_1925 y_2159)
	    (x_54088 (S_425 x_54096) (S_425 z_1925) y_2159))))
(assert (forall ((x_54097 Nat_536))
	(x_54088 x_54097 Z_1923 x_54097)))
(assert (forall ((x_54098 Nat_536) (x_54090 Nat_536))
	(=>	(and true
			(x_54088 x_54098 x_54090 x_54090)
			(even_1 false_317 x_54098))
		false)))
(check-sat)
