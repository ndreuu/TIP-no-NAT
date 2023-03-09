(set-logic HORN)
(declare-datatypes ((Bool_310 0)) (((false_310 ) (true_310 ))))
(declare-fun diseqBool_143 (Bool_310 Bool_310) Bool)
(declare-fun isfalse_143 (Bool_310) Bool)
(declare-fun istrue_143 (Bool_310) Bool)
(assert (isfalse_143 false_310))
(assert (istrue_143 true_310))
(assert (diseqBool_143 false_310 true_310))
(assert (diseqBool_143 true_310 false_310))
(declare-fun and_310 (Bool_310 Bool_310 Bool_310) Bool)
(declare-fun or_317 (Bool_310 Bool_310 Bool_310) Bool)
(declare-fun hence_310 (Bool_310 Bool_310 Bool_310) Bool)
(declare-fun not_315 (Bool_310 Bool_310) Bool)
(assert (and_310 false_310 false_310 false_310))
(assert (and_310 false_310 true_310 false_310))
(assert (and_310 false_310 false_310 true_310))
(assert (and_310 true_310 true_310 true_310))
(assert (or_317 false_310 false_310 false_310))
(assert (or_317 true_310 true_310 false_310))
(assert (or_317 true_310 false_310 true_310))
(assert (or_317 true_310 true_310 true_310))
(assert (hence_310 true_310 false_310 false_310))
(assert (hence_310 false_310 true_310 false_310))
(assert (hence_310 true_310 false_310 true_310))
(assert (hence_310 true_310 true_310 true_310))
(assert (not_315 true_310 false_310))
(assert (not_315 false_310 true_310))
(declare-datatypes ((Nat_524 0)) (((zero_145 ) (succ_141 (p_391 Nat_524)))))
(declare-fun diseqNat_524 (Nat_524 Nat_524) Bool)
(declare-fun p_392 (Nat_524 Nat_524) Bool)
(declare-fun iszero_141 (Nat_524) Bool)
(declare-fun issucc_141 (Nat_524) Bool)
(assert (forall ((x_53638 Nat_524))
	(p_392 x_53638 (succ_141 x_53638))))
(assert (iszero_141 zero_145))
(assert (forall ((x_53640 Nat_524))
	(issucc_141 (succ_141 x_53640))))
(assert (forall ((x_53641 Nat_524))
	(diseqNat_524 zero_145 (succ_141 x_53641))))
(assert (forall ((x_53642 Nat_524))
	(diseqNat_524 (succ_141 x_53642) zero_145)))
(assert (forall ((x_53643 Nat_524) (x_53644 Nat_524))
	(=> (diseqNat_524 x_53643 x_53644)
	    (diseqNat_524 (succ_141 x_53643) (succ_141 x_53644)))))
(declare-fun leq_54 (Bool_310 Nat_524 Nat_524) Bool)
(assert (forall ((x_53626 Bool_310) (x_53623 Nat_524) (z_1884 Nat_524))
	(=> (leq_54 x_53626 z_1884 x_53623)
	    (leq_54 x_53626 (succ_141 z_1884) (succ_141 x_53623)))))
(assert (forall ((z_1884 Nat_524))
	(leq_54 false_310 (succ_141 z_1884) zero_145)))
(assert (forall ((y_2115 Nat_524))
	(leq_54 true_310 zero_145 y_2115)))
(declare-fun geq_3 (Bool_310 Nat_524 Nat_524) Bool)
(assert (forall ((x_53630 Bool_310) (x_53624 Nat_524) (y_2116 Nat_524))
	(=> (leq_54 x_53630 y_2116 x_53624)
	    (geq_3 x_53630 x_53624 y_2116))))
(assert (forall ((x_53625 Nat_524) (y_2117 Nat_524))
	(=>	(and true
			(diseqNat_524 x_53625 y_2117)
			(geq_3 true_310 x_53625 y_2117)
			(geq_3 true_310 y_2117 x_53625))
		false)))
(check-sat)