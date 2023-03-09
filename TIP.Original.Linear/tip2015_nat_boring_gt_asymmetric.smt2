(set-logic HORN)
(declare-datatypes ((Bool_196 0)) (((false_196 ) (true_196 ))))
(declare-fun diseqBool_85 (Bool_196 Bool_196) Bool)
(declare-fun isfalse_85 (Bool_196) Bool)
(declare-fun istrue_85 (Bool_196) Bool)
(assert (isfalse_85 false_196))
(assert (istrue_85 true_196))
(assert (diseqBool_85 false_196 true_196))
(assert (diseqBool_85 true_196 false_196))
(declare-fun and_196 (Bool_196 Bool_196 Bool_196) Bool)
(declare-fun or_199 (Bool_196 Bool_196 Bool_196) Bool)
(declare-fun hence_196 (Bool_196 Bool_196 Bool_196) Bool)
(declare-fun not_198 (Bool_196 Bool_196) Bool)
(assert (and_196 false_196 false_196 false_196))
(assert (and_196 false_196 true_196 false_196))
(assert (and_196 false_196 false_196 true_196))
(assert (and_196 true_196 true_196 true_196))
(assert (or_199 false_196 false_196 false_196))
(assert (or_199 true_196 true_196 false_196))
(assert (or_199 true_196 false_196 true_196))
(assert (or_199 true_196 true_196 true_196))
(assert (hence_196 true_196 false_196 false_196))
(assert (hence_196 false_196 true_196 false_196))
(assert (hence_196 true_196 false_196 true_196))
(assert (hence_196 true_196 true_196 true_196))
(assert (not_198 true_196 false_196))
(assert (not_198 false_196 true_196))
(declare-datatypes ((Nat_340 0)) (((zero_73 ) (succ_71 (p_195 Nat_340)))))
(declare-fun diseqNat_340 (Nat_340 Nat_340) Bool)
(declare-fun p_196 (Nat_340 Nat_340) Bool)
(declare-fun iszero_71 (Nat_340) Bool)
(declare-fun issucc_71 (Nat_340) Bool)
(assert (forall ((x_28634 Nat_340))
	(p_196 x_28634 (succ_71 x_28634))))
(assert (iszero_71 zero_73))
(assert (forall ((x_28636 Nat_340))
	(issucc_71 (succ_71 x_28636))))
(assert (forall ((x_28637 Nat_340))
	(diseqNat_340 zero_73 (succ_71 x_28637))))
(assert (forall ((x_28638 Nat_340))
	(diseqNat_340 (succ_71 x_28638) zero_73)))
(assert (forall ((x_28639 Nat_340) (x_28640 Nat_340))
	(=> (diseqNat_340 x_28639 x_28640)
	    (diseqNat_340 (succ_71 x_28639) (succ_71 x_28640)))))
(declare-fun lt_206 (Bool_196 Nat_340 Nat_340) Bool)
(assert (forall ((x_28622 Bool_196) (n_63 Nat_340) (z_1133 Nat_340))
	(=> (lt_206 x_28622 n_63 z_1133)
	    (lt_206 x_28622 (succ_71 n_63) (succ_71 z_1133)))))
(assert (forall ((z_1133 Nat_340))
	(lt_206 true_196 zero_73 (succ_71 z_1133))))
(assert (forall ((x_28619 Nat_340))
	(lt_206 false_196 x_28619 zero_73)))
(declare-fun gt_198 (Bool_196 Nat_340 Nat_340) Bool)
(assert (forall ((x_28626 Bool_196) (x_28620 Nat_340) (y_1200 Nat_340))
	(=> (lt_206 x_28626 y_1200 x_28620)
	    (gt_198 x_28626 x_28620 y_1200))))
(assert (forall ((x_28621 Nat_340) (y_1201 Nat_340))
	(=>	(and true
			(gt_198 true_196 x_28621 y_1201)
			(gt_198 true_196 y_1201 x_28621))
		false)))
(check-sat)
