(set-logic HORN)
(declare-datatypes ((Nat_617 0)) (((Z_2162 ) (S_506 (projS_220 Nat_617)))))
(declare-fun diseqNat_617 (Nat_617 Nat_617) Bool)
(declare-fun projS_221 (Nat_617 Nat_617) Bool)
(declare-fun isZ_473 (Nat_617) Bool)
(declare-fun isS_473 (Nat_617) Bool)
(assert (forall ((x_56409 Nat_617))
	(projS_221 x_56409 (S_506 x_56409))))
(assert (isZ_473 Z_2162))
(assert (forall ((x_56411 Nat_617))
	(isS_473 (S_506 x_56411))))
(assert (forall ((x_56412 Nat_617))
	(diseqNat_617 Z_2162 (S_506 x_56412))))
(assert (forall ((x_56413 Nat_617))
	(diseqNat_617 (S_506 x_56413) Z_2162)))
(assert (forall ((x_56414 Nat_617) (x_56415 Nat_617))
	(=> (diseqNat_617 x_56414 x_56415)
	    (diseqNat_617 (S_506 x_56414) (S_506 x_56415)))))
(declare-fun x_56399 (Nat_617 Nat_617 Nat_617) Bool)
(assert (forall ((x_56403 Nat_617) (z_2163 Nat_617) (y_2398 Nat_617))
	(=> (x_56399 x_56403 z_2163 y_2398)
	    (x_56399 (S_506 x_56403) (S_506 z_2163) y_2398))))
(assert (forall ((x_56404 Nat_617))
	(x_56399 x_56404 Z_2162 x_56404)))
(assert (forall ((x_56405 Nat_617) (x_56406 Nat_617) (x_56401 Nat_617))
	(=>	(and true
			(diseqNat_617 x_56405 (S_506 x_56406))
			(x_56399 x_56405 x_56401 (S_506 x_56401))
			(x_56399 x_56406 x_56401 x_56401))
		false)))
(check-sat)
