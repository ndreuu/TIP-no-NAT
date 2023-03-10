(set-logic HORN)
(declare-datatypes ((Nat_580 0)) (((Z_2050 ) (S_469 (projS_190 Nat_580)))))
(declare-fun diseqNat_580 (Nat_580 Nat_580) Bool)
(declare-fun projS_191 (Nat_580 Nat_580) Bool)
(declare-fun isZ_436 (Nat_580) Bool)
(declare-fun isS_436 (Nat_580) Bool)
(assert (forall ((x_55339 Nat_580))
	(projS_191 x_55339 (S_469 x_55339))))
(assert (isZ_436 Z_2050))
(assert (forall ((x_55341 Nat_580))
	(isS_436 (S_469 x_55341))))
(assert (forall ((x_55342 Nat_580))
	(diseqNat_580 Z_2050 (S_469 x_55342))))
(assert (forall ((x_55343 Nat_580))
	(diseqNat_580 (S_469 x_55343) Z_2050)))
(assert (forall ((x_55344 Nat_580) (x_55345 Nat_580))
	(=> (diseqNat_580 x_55344 x_55345)
	    (diseqNat_580 (S_469 x_55344) (S_469 x_55345)))))
(declare-fun half_2 (Nat_580 Nat_580) Bool)
(assert (forall ((x_55329 Nat_580) (z_2051 Nat_580))
	(=> (half_2 x_55329 z_2051)
	    (half_2 (S_469 x_55329) (S_469 (S_469 z_2051))))))
(assert (half_2 Z_2050 (S_469 Z_2050)))
(assert (half_2 Z_2050 Z_2050))
(declare-fun x_55325 (Nat_580 Nat_580 Nat_580) Bool)
(assert (forall ((x_55333 Nat_580) (z_2052 Nat_580) (y_2286 Nat_580))
	(=> (x_55325 x_55333 z_2052 y_2286)
	    (x_55325 (S_469 x_55333) (S_469 z_2052) y_2286))))
(assert (forall ((x_55334 Nat_580))
	(x_55325 x_55334 Z_2050 x_55334)))
(assert (forall ((x_55335 Nat_580) (x_55336 Nat_580) (x_55327 Nat_580))
	(=>	(and true
			(diseqNat_580 x_55336 x_55327)
			(x_55325 x_55335 x_55327 x_55327)
			(half_2 x_55336 x_55335))
		false)))
(check-sat)
