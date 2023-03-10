(set-logic HORN)
(declare-datatypes ((Bool_63 0)) (((false_63 ) (true_63 ))))
(declare-fun diseqBool_27 (Bool_63 Bool_63) Bool)
(declare-fun isfalse_27 (Bool_63) Bool)
(declare-fun istrue_27 (Bool_63) Bool)
(assert (isfalse_27 false_63))
(assert (istrue_27 true_63))
(assert (diseqBool_27 false_63 true_63))
(assert (diseqBool_27 true_63 false_63))
(declare-fun and_63 (Bool_63 Bool_63 Bool_63) Bool)
(declare-fun or_63 (Bool_63 Bool_63 Bool_63) Bool)
(declare-fun hence_63 (Bool_63 Bool_63 Bool_63) Bool)
(declare-fun not_63 (Bool_63 Bool_63) Bool)
(assert (and_63 false_63 false_63 false_63))
(assert (and_63 false_63 true_63 false_63))
(assert (and_63 false_63 false_63 true_63))
(assert (and_63 true_63 true_63 true_63))
(assert (or_63 false_63 false_63 false_63))
(assert (or_63 true_63 true_63 false_63))
(assert (or_63 true_63 false_63 true_63))
(assert (or_63 true_63 true_63 true_63))
(assert (hence_63 true_63 false_63 false_63))
(assert (hence_63 false_63 true_63 false_63))
(assert (hence_63 true_63 false_63 true_63))
(assert (hence_63 true_63 true_63 true_63))
(assert (not_63 true_63 false_63))
(assert (not_63 false_63 true_63))
(declare-datatypes ((Nat_122 0)) (((Z_346 ) (S_122 (projS_118 Nat_122)))))
(declare-fun diseqNat_122 (Nat_122 Nat_122) Bool)
(declare-fun projS_119 (Nat_122 Nat_122) Bool)
(declare-fun isZ_122 (Nat_122) Bool)
(declare-fun isS_122 (Nat_122) Bool)
(assert (forall ((x_3418 Nat_122))
	(projS_119 x_3418 (S_122 x_3418))))
(assert (isZ_122 Z_346))
(assert (forall ((x_3420 Nat_122))
	(isS_122 (S_122 x_3420))))
(assert (forall ((x_3421 Nat_122))
	(diseqNat_122 Z_346 (S_122 x_3421))))
(assert (forall ((x_3422 Nat_122))
	(diseqNat_122 (S_122 x_3422) Z_346)))
(assert (forall ((x_3423 Nat_122) (x_3424 Nat_122))
	(=> (diseqNat_122 x_3423 x_3424)
	    (diseqNat_122 (S_122 x_3423) (S_122 x_3424)))))
(declare-datatypes ((list_57 0)) (((nil_57 ) (cons_57 (head_114 Nat_122) (tail_114 list_57)))))
(declare-fun diseqlist_57 (list_57 list_57) Bool)
(declare-fun head_115 (Nat_122 list_57) Bool)
(declare-fun tail_115 (list_57 list_57) Bool)
(declare-fun isnil_57 (list_57) Bool)
(declare-fun iscons_57 (list_57) Bool)
(assert (forall ((x_3426 Nat_122) (x_3427 list_57))
	(head_115 x_3426 (cons_57 x_3426 x_3427))))
(assert (forall ((x_3426 Nat_122) (x_3427 list_57))
	(tail_115 x_3427 (cons_57 x_3426 x_3427))))
(assert (isnil_57 nil_57))
(assert (forall ((x_3429 Nat_122) (x_3430 list_57))
	(iscons_57 (cons_57 x_3429 x_3430))))
(assert (forall ((x_3431 Nat_122) (x_3432 list_57))
	(diseqlist_57 nil_57 (cons_57 x_3431 x_3432))))
(assert (forall ((x_3433 Nat_122) (x_3434 list_57))
	(diseqlist_57 (cons_57 x_3433 x_3434) nil_57)))
(assert (forall ((x_3435 Nat_122) (x_3436 list_57) (x_3437 Nat_122) (x_3438 list_57))
	(=> (diseqNat_122 x_3435 x_3437)
	    (diseqlist_57 (cons_57 x_3435 x_3436) (cons_57 x_3437 x_3438)))))
(assert (forall ((x_3435 Nat_122) (x_3436 list_57) (x_3437 Nat_122) (x_3438 list_57))
	(=> (diseqlist_57 x_3436 x_3438)
	    (diseqlist_57 (cons_57 x_3435 x_3436) (cons_57 x_3437 x_3438)))))
(declare-fun x_3380 (Bool_63 Nat_122 Nat_122) Bool)
(assert (forall ((x_3389 Bool_63) (y_276 Nat_122) (x_3382 Nat_122))
	(=> (x_3380 x_3389 x_3382 y_276)
	    (x_3380 x_3389 (S_122 x_3382) (S_122 y_276)))))
(assert (forall ((x_3382 Nat_122))
	(x_3380 false_63 (S_122 x_3382) Z_346)))
(assert (forall ((z_347 Nat_122))
	(x_3380 false_63 Z_346 (S_122 z_347))))
(assert (x_3380 true_63 Z_346 Z_346))
(declare-fun elem_7 (Bool_63 Nat_122 list_57) Bool)
(assert (forall ((z_348 Nat_122) (xs_105 list_57) (x_3383 Nat_122))
	(=> (x_3380 true_63 x_3383 z_348)
	    (elem_7 true_63 x_3383 (cons_57 z_348 xs_105)))))
(assert (forall ((x_3397 Bool_63) (z_348 Nat_122) (xs_105 list_57) (x_3383 Nat_122))
	(=>	(and (elem_7 x_3397 x_3383 xs_105)
			(x_3380 false_63 x_3383 z_348))
		(elem_7 x_3397 x_3383 (cons_57 z_348 xs_105)))))
(assert (forall ((x_3383 Nat_122))
	(elem_7 false_63 x_3383 nil_57)))
(declare-fun x_3384 (Bool_63 Nat_122 Nat_122) Bool)
(assert (forall ((x_3400 Bool_63) (x_3386 Nat_122) (z_349 Nat_122))
	(=> (x_3384 x_3400 x_3386 z_349)
	    (x_3384 x_3400 (S_122 x_3386) (S_122 z_349)))))
(assert (forall ((z_349 Nat_122))
	(x_3384 true_63 Z_346 (S_122 z_349))))
(assert (forall ((x_3385 Nat_122))
	(x_3384 false_63 x_3385 Z_346)))
(declare-fun ins_3 (list_57 Nat_122 list_57) Bool)
(assert (forall ((z_350 Nat_122) (xs_106 list_57) (x_3387 Nat_122))
	(=> (x_3384 true_63 x_3387 z_350)
	    (ins_3 (cons_57 x_3387 (cons_57 z_350 xs_106)) x_3387 (cons_57 z_350 xs_106)))))
(assert (forall ((x_3408 list_57) (z_350 Nat_122) (xs_106 list_57) (x_3387 Nat_122))
	(=>	(and (ins_3 x_3408 x_3387 xs_106)
			(x_3384 false_63 x_3387 z_350))
		(ins_3 (cons_57 z_350 x_3408) x_3387 (cons_57 z_350 xs_106)))))
(assert (forall ((x_3387 Nat_122))
	(ins_3 (cons_57 x_3387 nil_57) x_3387 nil_57)))
(assert (forall ((x_3410 list_57) (x_3411 Bool_63) (x_3412 Bool_63) (x_3388 Nat_122) (y_280 Nat_122) (xs_107 list_57))
	(=>	(and true
			(diseqBool_27 x_3411 x_3412)
			(x_3380 false_63 x_3388 y_280)
			(ins_3 x_3410 y_280 xs_107)
			(elem_7 x_3411 x_3388 x_3410)
			(elem_7 x_3412 x_3388 xs_107))
		false)))
(check-sat)
