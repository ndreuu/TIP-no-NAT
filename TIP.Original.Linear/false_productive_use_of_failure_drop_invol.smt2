(set-logic HORN)
(declare-datatypes ((Nat_712 0)) (((S_632 (projS_254 Nat_712)) (Z_2740 ))))
(declare-fun diseqNat_712 (Nat_712 Nat_712) Bool)
(declare-fun projS_255 (Nat_712 Nat_712) Bool)
(declare-fun isS_568 (Nat_712) Bool)
(declare-fun isZ_568 (Nat_712) Bool)
(assert (forall ((x_126272 Nat_712))
	(projS_255 x_126272 (S_632 x_126272))))
(assert (forall ((x_126275 Nat_712))
	(isS_568 (S_632 x_126275))))
(assert (isZ_568 Z_2740))
(assert (forall ((x_126276 Nat_712))
	(diseqNat_712 (S_632 x_126276) Z_2740)))
(assert (forall ((x_126277 Nat_712))
	(diseqNat_712 Z_2740 (S_632 x_126277))))
(assert (forall ((x_126278 Nat_712) (x_126279 Nat_712))
	(=> (diseqNat_712 x_126278 x_126279)
	    (diseqNat_712 (S_632 x_126278) (S_632 x_126279)))))
(declare-datatypes ((list_400 0)) (((nil_460 ) (cons_394 (head_788 Nat_712) (tail_794 list_400)))))
(declare-fun diseqlist_394 (list_400 list_400) Bool)
(declare-fun head_789 (Nat_712 list_400) Bool)
(declare-fun tail_795 (list_400 list_400) Bool)
(declare-fun isnil_460 (list_400) Bool)
(declare-fun iscons_394 (list_400) Bool)
(assert (forall ((x_126281 Nat_712) (x_126282 list_400))
	(head_789 x_126281 (cons_394 x_126281 x_126282))))
(assert (forall ((x_126281 Nat_712) (x_126282 list_400))
	(tail_795 x_126282 (cons_394 x_126281 x_126282))))
(assert (isnil_460 nil_460))
(assert (forall ((x_126284 Nat_712) (x_126285 list_400))
	(iscons_394 (cons_394 x_126284 x_126285))))
(assert (forall ((x_126286 Nat_712) (x_126287 list_400))
	(diseqlist_394 nil_460 (cons_394 x_126286 x_126287))))
(assert (forall ((x_126288 Nat_712) (x_126289 list_400))
	(diseqlist_394 (cons_394 x_126288 x_126289) nil_460)))
(assert (forall ((x_126290 Nat_712) (x_126291 list_400) (x_126292 Nat_712) (x_126293 list_400))
	(=> (diseqNat_712 x_126290 x_126292)
	    (diseqlist_394 (cons_394 x_126290 x_126291) (cons_394 x_126292 x_126293)))))
(assert (forall ((x_126290 Nat_712) (x_126291 list_400) (x_126292 Nat_712) (x_126293 list_400))
	(=> (diseqlist_394 x_126291 x_126293)
	    (diseqlist_394 (cons_394 x_126290 x_126291) (cons_394 x_126292 x_126293)))))
(declare-fun drop_65 (list_400 Nat_712 list_400) Bool)
(assert (forall ((x_126265 list_400))
	(drop_65 x_126265 Z_2740 x_126265)))
(assert (forall ((x_126266 list_400) (x_126263 Nat_712) (x_126264 list_400) (z_2741 Nat_712))
	(=> (drop_65 x_126266 z_2741 x_126264)
	    (drop_65 x_126266 (S_632 z_2741) (cons_394 x_126263 x_126264)))))
(assert (forall ((z_2741 Nat_712))
	(drop_65 nil_460 (S_632 z_2741) nil_460)))
(assert (forall ((x_126269 list_400) (x_126270 list_400) (n_117 Nat_712) (xs_896 list_400))
	(=>	(and true
			(diseqlist_394 x_126270 xs_896)
			(drop_65 x_126269 n_117 xs_896)
			(drop_65 x_126270 n_117 x_126269))
		false)))
(check-sat)
