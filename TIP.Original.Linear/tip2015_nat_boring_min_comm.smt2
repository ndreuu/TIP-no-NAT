(set-logic HORN)
(declare-datatypes ((Bool_297 0)) (((false_297 ) (true_297 ))))
(declare-fun diseqBool_138 (Bool_297 Bool_297) Bool)
(declare-fun isfalse_138 (Bool_297) Bool)
(declare-fun istrue_138 (Bool_297) Bool)
(assert (isfalse_138 false_297))
(assert (istrue_138 true_297))
(assert (diseqBool_138 false_297 true_297))
(assert (diseqBool_138 true_297 false_297))
(declare-fun and_297 (Bool_297 Bool_297 Bool_297) Bool)
(declare-fun or_303 (Bool_297 Bool_297 Bool_297) Bool)
(declare-fun hence_297 (Bool_297 Bool_297 Bool_297) Bool)
(declare-fun not_301 (Bool_297 Bool_297) Bool)
(assert (and_297 false_297 false_297 false_297))
(assert (and_297 false_297 true_297 false_297))
(assert (and_297 false_297 false_297 true_297))
(assert (and_297 true_297 true_297 true_297))
(assert (or_303 false_297 false_297 false_297))
(assert (or_303 true_297 true_297 false_297))
(assert (or_303 true_297 false_297 true_297))
(assert (or_303 true_297 true_297 true_297))
(assert (hence_297 true_297 false_297 false_297))
(assert (hence_297 false_297 true_297 false_297))
(assert (hence_297 true_297 false_297 true_297))
(assert (hence_297 true_297 true_297 true_297))
(assert (not_301 true_297 false_297))
(assert (not_301 false_297 true_297))
(declare-datatypes ((Nat_502 0)) (((zero_136 ) (succ_132 (p_368 Nat_502)))))
(declare-fun diseqNat_502 (Nat_502 Nat_502) Bool)
(declare-fun p_369 (Nat_502 Nat_502) Bool)
(declare-fun iszero_132 (Nat_502) Bool)
(declare-fun issucc_132 (Nat_502) Bool)
(assert (forall ((x_52539 Nat_502))
	(p_369 x_52539 (succ_132 x_52539))))
(assert (iszero_132 zero_136))
(assert (forall ((x_52541 Nat_502))
	(issucc_132 (succ_132 x_52541))))
(assert (forall ((x_52542 Nat_502))
	(diseqNat_502 zero_136 (succ_132 x_52542))))
(assert (forall ((x_52543 Nat_502))
	(diseqNat_502 (succ_132 x_52543) zero_136)))
(assert (forall ((x_52544 Nat_502) (x_52545 Nat_502))
	(=> (diseqNat_502 x_52544 x_52545)
	    (diseqNat_502 (succ_132 x_52544) (succ_132 x_52545)))))
(declare-fun leq_50 (Bool_297 Nat_502 Nat_502) Bool)
(assert (forall ((x_52523 Bool_297) (x_52521 Nat_502) (z_1794 Nat_502))
	(=> (leq_50 x_52523 z_1794 x_52521)
	    (leq_50 x_52523 (succ_132 z_1794) (succ_132 x_52521)))))
(assert (forall ((z_1794 Nat_502))
	(leq_50 false_297 (succ_132 z_1794) zero_136)))
(assert (forall ((y_2014 Nat_502))
	(leq_50 true_297 zero_136 y_2014)))
(assert (forall ((x_52522 Nat_502) (y_2015 Nat_502))
	(=>	(and true
			(diseqNat_502 x_52522 y_2015)
			(leq_50 true_297 y_2015 x_52522)
			(leq_50 true_297 x_52522 y_2015))
		false)))
(assert (forall ((x_52522 Nat_502) (y_2015 Nat_502))
	(=>	(and true
			(diseqNat_502 y_2015 y_2015)
			(leq_50 true_297 y_2015 x_52522)
			(leq_50 false_297 x_52522 y_2015))
		false)))
(assert (forall ((x_52522 Nat_502) (y_2015 Nat_502))
	(=>	(and true
			(diseqNat_502 x_52522 x_52522)
			(leq_50 false_297 y_2015 x_52522)
			(leq_50 true_297 x_52522 y_2015))
		false)))
(assert (forall ((x_52522 Nat_502) (y_2015 Nat_502))
	(=>	(and true
			(diseqNat_502 y_2015 x_52522)
			(leq_50 false_297 y_2015 x_52522)
			(leq_50 false_297 x_52522 y_2015))
		false)))
(check-sat)