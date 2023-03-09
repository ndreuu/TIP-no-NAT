(set-logic HORN)
(declare-datatypes ((Bool_143 0)) (((false_143 ) (true_143 ))))
(declare-fun diseqBool_63 (Bool_143 Bool_143) Bool)
(declare-fun isfalse_63 (Bool_143) Bool)
(declare-fun istrue_63 (Bool_143) Bool)
(assert (isfalse_63 false_143))
(assert (istrue_63 true_143))
(assert (diseqBool_63 false_143 true_143))
(assert (diseqBool_63 true_143 false_143))
(declare-fun and_143 (Bool_143 Bool_143 Bool_143) Bool)
(declare-fun or_145 (Bool_143 Bool_143 Bool_143) Bool)
(declare-fun hence_143 (Bool_143 Bool_143 Bool_143) Bool)
(declare-fun not_144 (Bool_143 Bool_143) Bool)
(assert (and_143 false_143 false_143 false_143))
(assert (and_143 false_143 true_143 false_143))
(assert (and_143 false_143 false_143 true_143))
(assert (and_143 true_143 true_143 true_143))
(assert (or_145 false_143 false_143 false_143))
(assert (or_145 true_143 true_143 false_143))
(assert (or_145 true_143 false_143 true_143))
(assert (or_145 true_143 true_143 true_143))
(assert (hence_143 true_143 false_143 false_143))
(assert (hence_143 false_143 true_143 false_143))
(assert (hence_143 true_143 false_143 true_143))
(assert (hence_143 true_143 true_143 true_143))
(assert (not_144 true_143 false_143))
(assert (not_144 false_143 true_143))
(declare-datatypes ((Nat_253 0)) (((zero_37 ) (succ_37 (p_113 Nat_253)))))
(declare-fun diseqNat_253 (Nat_253 Nat_253) Bool)
(declare-fun p_114 (Nat_253 Nat_253) Bool)
(declare-fun iszero_37 (Nat_253) Bool)
(declare-fun issucc_37 (Nat_253) Bool)
(assert (forall ((x_21629 Nat_253))
	(p_114 x_21629 (succ_37 x_21629))))
(assert (iszero_37 zero_37))
(assert (forall ((x_21631 Nat_253))
	(issucc_37 (succ_37 x_21631))))
(assert (forall ((x_21632 Nat_253))
	(diseqNat_253 zero_37 (succ_37 x_21632))))
(assert (forall ((x_21633 Nat_253))
	(diseqNat_253 (succ_37 x_21633) zero_37)))
(assert (forall ((x_21634 Nat_253) (x_21635 Nat_253))
	(=> (diseqNat_253 x_21634 x_21635)
	    (diseqNat_253 (succ_37 x_21634) (succ_37 x_21635)))))
(declare-fun lt_147 (Bool_143 Nat_253 Nat_253) Bool)
(assert (forall ((x_21618 Bool_143) (n_45 Nat_253) (z_802 Nat_253))
	(=> (lt_147 x_21618 n_45 z_802)
	    (lt_147 x_21618 (succ_37 n_45) (succ_37 z_802)))))
(assert (forall ((z_802 Nat_253))
	(lt_147 true_143 zero_37 (succ_37 z_802))))
(assert (forall ((x_21616 Nat_253))
	(lt_147 false_143 x_21616 zero_37)))
(assert (forall ((x_21617 Nat_253) (y_800 Nat_253) (z_803 Nat_253))
	(=>	(and true
			(lt_147 true_143 x_21617 y_800)
			(lt_147 true_143 y_800 z_803)
			(lt_147 false_143 x_21617 z_803))
		false)))
(check-sat)
