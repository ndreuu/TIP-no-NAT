(set-logic HORN)
(declare-datatypes ((Nat_562 0)) (((Z_2001 ) (S_451 (unS_662 Nat_562)))))
(declare-fun diseqNat_562 (Nat_562 Nat_562) Bool)
(declare-fun unS_663 (Nat_562 Nat_562) Bool)
(declare-fun isZ_418 (Nat_562) Bool)
(declare-fun isS_418 (Nat_562) Bool)
(assert (forall ((x_54870 Nat_562))
	(unS_663 x_54870 (S_451 x_54870))))
(assert (isZ_418 Z_2001))
(assert (forall ((x_54872 Nat_562))
	(isS_418 (S_451 x_54872))))
(assert (forall ((x_54873 Nat_562))
	(diseqNat_562 Z_2001 (S_451 x_54873))))
(assert (forall ((x_54874 Nat_562))
	(diseqNat_562 (S_451 x_54874) Z_2001)))
(assert (forall ((x_54875 Nat_562) (x_54876 Nat_562))
	(=> (diseqNat_562 x_54875 x_54876)
	    (diseqNat_562 (S_451 x_54875) (S_451 x_54876)))))
(declare-fun add_357 (Nat_562 Nat_562 Nat_562) Bool)
(declare-fun minus_352 (Nat_562 Nat_562 Nat_562) Bool)
(declare-fun le_331 (Nat_562 Nat_562) Bool)
(declare-fun ge_331 (Nat_562 Nat_562) Bool)
(declare-fun lt_351 (Nat_562 Nat_562) Bool)
(declare-fun gt_334 (Nat_562 Nat_562) Bool)
(declare-fun mult_331 (Nat_562 Nat_562 Nat_562) Bool)
(declare-fun div_331 (Nat_562 Nat_562 Nat_562) Bool)
(declare-fun mod_333 (Nat_562 Nat_562 Nat_562) Bool)
(assert (forall ((y_2240 Nat_562))
	(add_357 y_2240 Z_2001 y_2240)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562) (r_404 Nat_562))
	(=> (add_357 r_404 x_54846 y_2240)
	    (add_357 (S_451 r_404) (S_451 x_54846) y_2240))))
(assert (forall ((y_2240 Nat_562))
	(minus_352 Z_2001 Z_2001 y_2240)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562) (r_404 Nat_562))
	(=> (minus_352 r_404 x_54846 y_2240)
	    (minus_352 (S_451 r_404) (S_451 x_54846) y_2240))))
(assert (forall ((y_2240 Nat_562))
	(le_331 Z_2001 y_2240)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (le_331 x_54846 y_2240)
	    (le_331 (S_451 x_54846) (S_451 y_2240)))))
(assert (forall ((y_2240 Nat_562))
	(ge_331 y_2240 Z_2001)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (ge_331 x_54846 y_2240)
	    (ge_331 (S_451 x_54846) (S_451 y_2240)))))
(assert (forall ((y_2240 Nat_562))
	(lt_351 Z_2001 (S_451 y_2240))))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (lt_351 x_54846 y_2240)
	    (lt_351 (S_451 x_54846) (S_451 y_2240)))))
(assert (forall ((y_2240 Nat_562))
	(gt_334 (S_451 y_2240) Z_2001)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (gt_334 x_54846 y_2240)
	    (gt_334 (S_451 x_54846) (S_451 y_2240)))))
(assert (forall ((y_2240 Nat_562))
	(mult_331 Z_2001 Z_2001 y_2240)))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562) (r_404 Nat_562) (z_2002 Nat_562))
	(=>	(and (mult_331 r_404 x_54846 y_2240)
			(add_357 z_2002 r_404 y_2240))
		(mult_331 z_2002 (S_451 x_54846) y_2240))))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (lt_351 x_54846 y_2240)
	    (div_331 Z_2001 x_54846 y_2240))))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562) (r_404 Nat_562) (z_2002 Nat_562))
	(=>	(and (ge_331 x_54846 y_2240)
			(minus_352 z_2002 x_54846 y_2240)
			(div_331 r_404 z_2002 y_2240))
		(div_331 (S_451 r_404) x_54846 y_2240))))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562))
	(=> (lt_351 x_54846 y_2240)
	    (mod_333 x_54846 x_54846 y_2240))))
(assert (forall ((x_54846 Nat_562) (y_2240 Nat_562) (r_404 Nat_562) (z_2002 Nat_562))
	(=>	(and (ge_331 x_54846 y_2240)
			(minus_352 z_2002 x_54846 y_2240)
			(mod_333 r_404 z_2002 y_2240))
		(mod_333 r_404 x_54846 y_2240))))
(declare-datatypes ((list_235 0)) (((nil_265 ) (cons_235 (head_470 Nat_562) (tail_470 list_235)))))
(declare-fun diseqlist_235 (list_235 list_235) Bool)
(declare-fun head_471 (Nat_562 list_235) Bool)
(declare-fun tail_471 (list_235 list_235) Bool)
(declare-fun isnil_265 (list_235) Bool)
(declare-fun iscons_235 (list_235) Bool)
(assert (forall ((x_54848 Nat_562) (x_54849 list_235))
	(head_471 x_54848 (cons_235 x_54848 x_54849))))
(assert (forall ((x_54848 Nat_562) (x_54849 list_235))
	(tail_471 x_54849 (cons_235 x_54848 x_54849))))
(assert (isnil_265 nil_265))
(assert (forall ((x_54851 Nat_562) (x_54852 list_235))
	(iscons_235 (cons_235 x_54851 x_54852))))
(assert (forall ((x_54853 Nat_562) (x_54854 list_235))
	(diseqlist_235 nil_265 (cons_235 x_54853 x_54854))))
(assert (forall ((x_54855 Nat_562) (x_54856 list_235))
	(diseqlist_235 (cons_235 x_54855 x_54856) nil_265)))
(assert (forall ((x_54857 Nat_562) (x_54858 list_235) (x_54859 Nat_562) (x_54860 list_235))
	(=> (diseqNat_562 x_54857 x_54859)
	    (diseqlist_235 (cons_235 x_54857 x_54858) (cons_235 x_54859 x_54860)))))
(assert (forall ((x_54857 Nat_562) (x_54858 list_235) (x_54859 Nat_562) (x_54860 list_235))
	(=> (diseqlist_235 x_54858 x_54860)
	    (diseqlist_235 (cons_235 x_54857 x_54858) (cons_235 x_54859 x_54860)))))
(declare-datatypes ((Nat_561 0)) (((Z_1998 ) (S_450 (projS_172 Nat_561)))))
(declare-fun diseqNat_561 (Nat_561 Nat_561) Bool)
(declare-fun projS_173 (Nat_561 Nat_561) Bool)
(declare-fun isZ_417 (Nat_561) Bool)
(declare-fun isS_417 (Nat_561) Bool)
(assert (forall ((x_54862 Nat_561))
	(projS_173 x_54862 (S_450 x_54862))))
(assert (isZ_417 Z_1998))
(assert (forall ((x_54864 Nat_561))
	(isS_417 (S_450 x_54864))))
(assert (forall ((x_54865 Nat_561))
	(diseqNat_561 Z_1998 (S_450 x_54865))))
(assert (forall ((x_54866 Nat_561))
	(diseqNat_561 (S_450 x_54866) Z_1998)))
(assert (forall ((x_54867 Nat_561) (x_54868 Nat_561))
	(=> (diseqNat_561 x_54867 x_54868)
	    (diseqNat_561 (S_450 x_54867) (S_450 x_54868)))))
(declare-fun length_45 (Nat_561 list_235) Bool)
(assert (forall ((x_54833 Nat_561) (y_2236 Nat_562) (xs_641 list_235))
	(=> (length_45 x_54833 xs_641)
	    (length_45 (S_450 x_54833) (cons_235 y_2236 xs_641)))))
(assert (length_45 Z_1998 nil_265))
(declare-fun x_54827 (Nat_561 Nat_561 Nat_561) Bool)
(assert (forall ((x_54836 Nat_561) (z_1999 Nat_561) (y_2237 Nat_561))
	(=> (x_54827 x_54836 z_1999 y_2237)
	    (x_54827 (S_450 x_54836) (S_450 z_1999) y_2237))))
(assert (forall ((x_54837 Nat_561))
	(x_54827 x_54837 Z_1998 x_54837)))
(declare-fun x_54829 (list_235 list_235 list_235) Bool)
(assert (forall ((x_54839 list_235) (z_2000 Nat_562) (xs_642 list_235) (y_2238 list_235))
	(=> (x_54829 x_54839 xs_642 y_2238)
	    (x_54829 (cons_235 z_2000 x_54839) (cons_235 z_2000 xs_642) y_2238))))
(assert (forall ((x_54840 list_235))
	(x_54829 x_54840 nil_265 x_54840)))
(assert (forall ((x_54841 list_235) (x_54842 Nat_561) (x_54843 Nat_561) (x_54844 Nat_561) (x_54845 Nat_561) (x_54831 list_235) (y_2239 list_235))
	(=>	(and true
			(diseqNat_561 x_54842 x_54845)
			(x_54829 x_54841 x_54831 y_2239)
			(length_45 x_54842 x_54841)
			(length_45 x_54843 y_2239)
			(length_45 x_54844 x_54831)
			(x_54827 x_54845 x_54843 x_54844))
		false)))
(check-sat)
