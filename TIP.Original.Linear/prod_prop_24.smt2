(set-logic HORN)
(declare-datatypes ((Bool_361 0)) (((false_361 ) (true_361 ))))
(declare-fun diseqBool_165 (Bool_361 Bool_361) Bool)
(declare-fun isfalse_165 (Bool_361) Bool)
(declare-fun istrue_165 (Bool_361) Bool)
(assert (isfalse_165 false_361))
(assert (istrue_165 true_361))
(assert (diseqBool_165 false_361 true_361))
(assert (diseqBool_165 true_361 false_361))
(declare-fun and_361 (Bool_361 Bool_361 Bool_361) Bool)
(declare-fun or_368 (Bool_361 Bool_361 Bool_361) Bool)
(declare-fun hence_361 (Bool_361 Bool_361 Bool_361) Bool)
(declare-fun not_366 (Bool_361 Bool_361) Bool)
(assert (and_361 false_361 false_361 false_361))
(assert (and_361 false_361 true_361 false_361))
(assert (and_361 false_361 false_361 true_361))
(assert (and_361 true_361 true_361 true_361))
(assert (or_368 false_361 false_361 false_361))
(assert (or_368 true_361 true_361 false_361))
(assert (or_368 true_361 false_361 true_361))
(assert (or_368 true_361 true_361 true_361))
(assert (hence_361 true_361 false_361 false_361))
(assert (hence_361 false_361 true_361 false_361))
(assert (hence_361 true_361 false_361 true_361))
(assert (hence_361 true_361 true_361 true_361))
(assert (not_366 true_361 false_361))
(assert (not_366 false_361 true_361))
(declare-datatypes ((Nat_613 0)) (((Z_2152 ) (S_502 (projS_216 Nat_613)))))
(declare-fun diseqNat_613 (Nat_613 Nat_613) Bool)
(declare-fun projS_217 (Nat_613 Nat_613) Bool)
(declare-fun isZ_469 (Nat_613) Bool)
(declare-fun isS_469 (Nat_613) Bool)
(assert (forall ((x_56333 Nat_613))
	(projS_217 x_56333 (S_502 x_56333))))
(assert (isZ_469 Z_2152))
(assert (forall ((x_56335 Nat_613))
	(isS_469 (S_502 x_56335))))
(assert (forall ((x_56336 Nat_613))
	(diseqNat_613 Z_2152 (S_502 x_56336))))
(assert (forall ((x_56337 Nat_613))
	(diseqNat_613 (S_502 x_56337) Z_2152)))
(assert (forall ((x_56338 Nat_613) (x_56339 Nat_613))
	(=> (diseqNat_613 x_56338 x_56339)
	    (diseqNat_613 (S_502 x_56338) (S_502 x_56339)))))
(declare-fun even_5 (Bool_361 Nat_613) Bool)
(assert (forall ((x_56318 Bool_361) (z_2153 Nat_613))
	(=> (even_5 x_56318 z_2153)
	    (even_5 x_56318 (S_502 (S_502 z_2153))))))
(assert (even_5 false_361 (S_502 Z_2152)))
(assert (even_5 true_361 Z_2152))
(declare-fun x_56315 (Nat_613 Nat_613 Nat_613) Bool)
(assert (forall ((x_56323 Nat_613) (z_2154 Nat_613) (y_2391 Nat_613))
	(=> (x_56315 x_56323 z_2154 y_2391)
	    (x_56315 (S_502 x_56323) (S_502 z_2154) y_2391))))
(assert (forall ((x_56324 Nat_613))
	(x_56315 x_56324 Z_2152 x_56324)))
(assert (forall ((x_56325 Nat_613) (x_56326 Bool_361) (x_56327 Nat_613) (x_56328 Bool_361) (x_56317 Nat_613) (y_2392 Nat_613))
	(=>	(and true
			(diseqBool_165 x_56326 x_56328)
			(x_56315 x_56325 x_56317 y_2392)
			(even_5 x_56326 x_56325)
			(x_56315 x_56327 y_2392 x_56317)
			(even_5 x_56328 x_56327))
		false)))
(check-sat)
