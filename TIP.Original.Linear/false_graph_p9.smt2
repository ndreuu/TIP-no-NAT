(set-logic HORN)
(declare-datatypes ((Nat_632 0)) (((Z_2227 ) (S_521 (unS_746 Nat_632)))))
(declare-fun diseqNat_632 (Nat_632 Nat_632) Bool)
(declare-fun unS_747 (Nat_632 Nat_632) Bool)
(declare-fun isZ_488 (Nat_632) Bool)
(declare-fun isS_488 (Nat_632) Bool)
(assert (forall ((x_57799 Nat_632))
	(unS_747 x_57799 (S_521 x_57799))))
(assert (isZ_488 Z_2227))
(assert (forall ((x_57801 Nat_632))
	(isS_488 (S_521 x_57801))))
(assert (forall ((x_57802 Nat_632))
	(diseqNat_632 Z_2227 (S_521 x_57802))))
(assert (forall ((x_57803 Nat_632))
	(diseqNat_632 (S_521 x_57803) Z_2227)))
(assert (forall ((x_57804 Nat_632) (x_57805 Nat_632))
	(=> (diseqNat_632 x_57804 x_57805)
	    (diseqNat_632 (S_521 x_57804) (S_521 x_57805)))))
(declare-fun add_399 (Nat_632 Nat_632 Nat_632) Bool)
(declare-fun minus_394 (Nat_632 Nat_632 Nat_632) Bool)
(declare-fun le_373 (Nat_632 Nat_632) Bool)
(declare-fun ge_373 (Nat_632 Nat_632) Bool)
(declare-fun lt_393 (Nat_632 Nat_632) Bool)
(declare-fun gt_376 (Nat_632 Nat_632) Bool)
(declare-fun mult_374 (Nat_632 Nat_632 Nat_632) Bool)
(declare-fun div_373 (Nat_632 Nat_632 Nat_632) Bool)
(declare-fun mod_375 (Nat_632 Nat_632 Nat_632) Bool)
(assert (forall ((y_2474 Nat_632))
	(add_399 y_2474 Z_2227 y_2474)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632) (r_459 Nat_632))
	(=> (add_399 r_459 x_57787 y_2474)
	    (add_399 (S_521 r_459) (S_521 x_57787) y_2474))))
(assert (forall ((y_2474 Nat_632))
	(minus_394 Z_2227 Z_2227 y_2474)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632) (r_459 Nat_632))
	(=> (minus_394 r_459 x_57787 y_2474)
	    (minus_394 (S_521 r_459) (S_521 x_57787) y_2474))))
(assert (forall ((y_2474 Nat_632))
	(le_373 Z_2227 y_2474)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (le_373 x_57787 y_2474)
	    (le_373 (S_521 x_57787) (S_521 y_2474)))))
(assert (forall ((y_2474 Nat_632))
	(ge_373 y_2474 Z_2227)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (ge_373 x_57787 y_2474)
	    (ge_373 (S_521 x_57787) (S_521 y_2474)))))
(assert (forall ((y_2474 Nat_632))
	(lt_393 Z_2227 (S_521 y_2474))))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (lt_393 x_57787 y_2474)
	    (lt_393 (S_521 x_57787) (S_521 y_2474)))))
(assert (forall ((y_2474 Nat_632))
	(gt_376 (S_521 y_2474) Z_2227)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (gt_376 x_57787 y_2474)
	    (gt_376 (S_521 x_57787) (S_521 y_2474)))))
(assert (forall ((y_2474 Nat_632))
	(mult_374 Z_2227 Z_2227 y_2474)))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632) (r_459 Nat_632) (z_2228 Nat_632))
	(=>	(and (mult_374 r_459 x_57787 y_2474)
			(add_399 z_2228 r_459 y_2474))
		(mult_374 z_2228 (S_521 x_57787) y_2474))))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (lt_393 x_57787 y_2474)
	    (div_373 Z_2227 x_57787 y_2474))))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632) (r_459 Nat_632) (z_2228 Nat_632))
	(=>	(and (ge_373 x_57787 y_2474)
			(minus_394 z_2228 x_57787 y_2474)
			(div_373 r_459 z_2228 y_2474))
		(div_373 (S_521 r_459) x_57787 y_2474))))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632))
	(=> (lt_393 x_57787 y_2474)
	    (mod_375 x_57787 x_57787 y_2474))))
(assert (forall ((x_57787 Nat_632) (y_2474 Nat_632) (r_459 Nat_632) (z_2228 Nat_632))
	(=>	(and (ge_373 x_57787 y_2474)
			(minus_394 z_2228 x_57787 y_2474)
			(mod_375 r_459 z_2228 y_2474))
		(mod_375 r_459 x_57787 y_2474))))
(declare-datatypes ((Bool_373 0)) (((false_373 ) (true_373 ))))
(declare-fun diseqBool_170 (Bool_373 Bool_373) Bool)
(declare-fun isfalse_170 (Bool_373) Bool)
(declare-fun istrue_170 (Bool_373) Bool)
(assert (isfalse_170 false_373))
(assert (istrue_170 true_373))
(assert (diseqBool_170 false_373 true_373))
(assert (diseqBool_170 true_373 false_373))
(declare-fun and_374 (Bool_373 Bool_373 Bool_373) Bool)
(declare-fun or_383 (Bool_373 Bool_373 Bool_373) Bool)
(declare-fun hence_373 (Bool_373 Bool_373 Bool_373) Bool)
(declare-fun not_378 (Bool_373 Bool_373) Bool)
(assert (and_374 false_373 false_373 false_373))
(assert (and_374 false_373 true_373 false_373))
(assert (and_374 false_373 false_373 true_373))
(assert (and_374 true_373 true_373 true_373))
(assert (or_383 false_373 false_373 false_373))
(assert (or_383 true_373 true_373 false_373))
(assert (or_383 true_373 false_373 true_373))
(assert (or_383 true_373 true_373 true_373))
(assert (hence_373 true_373 false_373 false_373))
(assert (hence_373 false_373 true_373 false_373))
(assert (hence_373 true_373 false_373 true_373))
(assert (hence_373 true_373 true_373 true_373))
(assert (not_378 true_373 false_373))
(assert (not_378 false_373 true_373))
(declare-datatypes ((pair_102 0)) (((pair_103 (projpair_204 Nat_632) (projpair_205 Nat_632)))))
(declare-fun diseqpair_51 (pair_102 pair_102) Bool)
(declare-fun projpair_206 (Nat_632 pair_102) Bool)
(declare-fun projpair_207 (Nat_632 pair_102) Bool)
(declare-fun ispair_51 (pair_102) Bool)
(assert (forall ((x_57808 Nat_632) (x_57809 Nat_632))
	(projpair_206 x_57808 (pair_103 x_57808 x_57809))))
(assert (forall ((x_57808 Nat_632) (x_57809 Nat_632))
	(projpair_207 x_57809 (pair_103 x_57808 x_57809))))
(assert (forall ((x_57811 Nat_632) (x_57812 Nat_632))
	(ispair_51 (pair_103 x_57811 x_57812))))
(assert (forall ((x_57813 Nat_632) (x_57814 Nat_632) (x_57815 Nat_632) (x_57816 Nat_632))
	(=> (diseqNat_632 x_57813 x_57815)
	    (diseqpair_51 (pair_103 x_57813 x_57814) (pair_103 x_57815 x_57816)))))
(assert (forall ((x_57813 Nat_632) (x_57814 Nat_632) (x_57815 Nat_632) (x_57816 Nat_632))
	(=> (diseqNat_632 x_57814 x_57816)
	    (diseqpair_51 (pair_103 x_57813 x_57814) (pair_103 x_57815 x_57816)))))
(declare-datatypes ((list_280 0)) (((nil_313 ) (cons_280 (head_560 Bool_373) (tail_560 list_280)))))
(declare-fun diseqlist_280 (list_280 list_280) Bool)
(declare-fun head_564 (Bool_373 list_280) Bool)
(declare-fun tail_564 (list_280 list_280) Bool)
(declare-fun isnil_313 (list_280) Bool)
(declare-fun iscons_280 (list_280) Bool)
(assert (forall ((x_57818 Bool_373) (x_57819 list_280))
	(head_564 x_57818 (cons_280 x_57818 x_57819))))
(assert (forall ((x_57818 Bool_373) (x_57819 list_280))
	(tail_564 x_57819 (cons_280 x_57818 x_57819))))
(assert (isnil_313 nil_313))
(assert (forall ((x_57821 Bool_373) (x_57822 list_280))
	(iscons_280 (cons_280 x_57821 x_57822))))
(assert (forall ((x_57823 Bool_373) (x_57824 list_280))
	(diseqlist_280 nil_313 (cons_280 x_57823 x_57824))))
(assert (forall ((x_57825 Bool_373) (x_57826 list_280))
	(diseqlist_280 (cons_280 x_57825 x_57826) nil_313)))
(assert (forall ((x_57827 Bool_373) (x_57828 list_280) (x_57829 Bool_373) (x_57830 list_280))
	(=> (diseqBool_170 x_57827 x_57829)
	    (diseqlist_280 (cons_280 x_57827 x_57828) (cons_280 x_57829 x_57830)))))
(assert (forall ((x_57827 Bool_373) (x_57828 list_280) (x_57829 Bool_373) (x_57830 list_280))
	(=> (diseqlist_280 x_57828 x_57830)
	    (diseqlist_280 (cons_280 x_57827 x_57828) (cons_280 x_57829 x_57830)))))
(declare-datatypes ((list_281 0)) (((nil_314 ) (cons_281 (head_561 Nat_632) (tail_561 list_281)))))
(declare-fun diseqlist_281 (list_281 list_281) Bool)
(declare-fun head_565 (Nat_632 list_281) Bool)
(declare-fun tail_565 (list_281 list_281) Bool)
(declare-fun isnil_314 (list_281) Bool)
(declare-fun iscons_281 (list_281) Bool)
(assert (forall ((x_57832 Nat_632) (x_57833 list_281))
	(head_565 x_57832 (cons_281 x_57832 x_57833))))
(assert (forall ((x_57832 Nat_632) (x_57833 list_281))
	(tail_565 x_57833 (cons_281 x_57832 x_57833))))
(assert (isnil_314 nil_314))
(assert (forall ((x_57835 Nat_632) (x_57836 list_281))
	(iscons_281 (cons_281 x_57835 x_57836))))
(assert (forall ((x_57837 Nat_632) (x_57838 list_281))
	(diseqlist_281 nil_314 (cons_281 x_57837 x_57838))))
(assert (forall ((x_57839 Nat_632) (x_57840 list_281))
	(diseqlist_281 (cons_281 x_57839 x_57840) nil_314)))
(assert (forall ((x_57841 Nat_632) (x_57842 list_281) (x_57843 Nat_632) (x_57844 list_281))
	(=> (diseqNat_632 x_57841 x_57843)
	    (diseqlist_281 (cons_281 x_57841 x_57842) (cons_281 x_57843 x_57844)))))
(assert (forall ((x_57841 Nat_632) (x_57842 list_281) (x_57843 Nat_632) (x_57844 list_281))
	(=> (diseqlist_281 x_57842 x_57844)
	    (diseqlist_281 (cons_281 x_57841 x_57842) (cons_281 x_57843 x_57844)))))
(declare-datatypes ((list_282 0)) (((nil_315 ) (cons_282 (head_562 pair_102) (tail_562 list_282)))))
(declare-fun diseqlist_282 (list_282 list_282) Bool)
(declare-fun head_566 (pair_102 list_282) Bool)
(declare-fun tail_566 (list_282 list_282) Bool)
(declare-fun isnil_315 (list_282) Bool)
(declare-fun iscons_282 (list_282) Bool)
(assert (forall ((x_57846 pair_102) (x_57847 list_282))
	(head_566 x_57846 (cons_282 x_57846 x_57847))))
(assert (forall ((x_57846 pair_102) (x_57847 list_282))
	(tail_566 x_57847 (cons_282 x_57846 x_57847))))
(assert (isnil_315 nil_315))
(assert (forall ((x_57849 pair_102) (x_57850 list_282))
	(iscons_282 (cons_282 x_57849 x_57850))))
(assert (forall ((x_57851 pair_102) (x_57852 list_282))
	(diseqlist_282 nil_315 (cons_282 x_57851 x_57852))))
(assert (forall ((x_57853 pair_102) (x_57854 list_282))
	(diseqlist_282 (cons_282 x_57853 x_57854) nil_315)))
(assert (forall ((x_57855 pair_102) (x_57856 list_282) (x_57857 pair_102) (x_57858 list_282))
	(=> (diseqpair_51 x_57855 x_57857)
	    (diseqlist_282 (cons_282 x_57855 x_57856) (cons_282 x_57857 x_57858)))))
(assert (forall ((x_57855 pair_102) (x_57856 list_282) (x_57857 pair_102) (x_57858 list_282))
	(=> (diseqlist_282 x_57856 x_57858)
	    (diseqlist_282 (cons_282 x_57855 x_57856) (cons_282 x_57857 x_57858)))))
(declare-datatypes ((list_283 0)) (((nil_316 ) (cons_283 (head_563 list_282) (tail_563 list_283)))))
(declare-fun diseqlist_283 (list_283 list_283) Bool)
(declare-fun head_567 (list_282 list_283) Bool)
(declare-fun tail_567 (list_283 list_283) Bool)
(declare-fun isnil_316 (list_283) Bool)
(declare-fun iscons_283 (list_283) Bool)
(assert (forall ((x_57860 list_282) (x_57861 list_283))
	(head_567 x_57860 (cons_283 x_57860 x_57861))))
(assert (forall ((x_57860 list_282) (x_57861 list_283))
	(tail_567 x_57861 (cons_283 x_57860 x_57861))))
(assert (isnil_316 nil_316))
(assert (forall ((x_57863 list_282) (x_57864 list_283))
	(iscons_283 (cons_283 x_57863 x_57864))))
(assert (forall ((x_57865 list_282) (x_57866 list_283))
	(diseqlist_283 nil_316 (cons_283 x_57865 x_57866))))
(assert (forall ((x_57867 list_282) (x_57868 list_283))
	(diseqlist_283 (cons_283 x_57867 x_57868) nil_316)))
(assert (forall ((x_57869 list_282) (x_57870 list_283) (x_57871 list_282) (x_57872 list_283))
	(=> (diseqlist_282 x_57869 x_57871)
	    (diseqlist_283 (cons_283 x_57869 x_57870) (cons_283 x_57871 x_57872)))))
(assert (forall ((x_57869 list_282) (x_57870 list_283) (x_57871 list_282) (x_57872 list_283))
	(=> (diseqlist_283 x_57870 x_57872)
	    (diseqlist_283 (cons_283 x_57869 x_57870) (cons_283 x_57871 x_57872)))))
(declare-datatypes ((Maybe_0 0)) (((Nothing_0 ) (Just_0 (projJust_0 Nat_632)))))
(declare-fun diseqMaybe_0 (Maybe_0 Maybe_0) Bool)
(declare-fun projJust_1 (Nat_632 Maybe_0) Bool)
(declare-fun isNothing_0 (Maybe_0) Bool)
(declare-fun isJust_0 (Maybe_0) Bool)
(assert (forall ((x_57874 Nat_632))
	(projJust_1 x_57874 (Just_0 x_57874))))
(assert (isNothing_0 Nothing_0))
(assert (forall ((x_57876 Nat_632))
	(isJust_0 (Just_0 x_57876))))
(assert (forall ((x_57877 Nat_632))
	(diseqMaybe_0 Nothing_0 (Just_0 x_57877))))
(assert (forall ((x_57878 Nat_632))
	(diseqMaybe_0 (Just_0 x_57878) Nothing_0)))
(assert (forall ((x_57879 Nat_632) (x_57880 Nat_632))
	(=> (diseqNat_632 x_57879 x_57880)
	    (diseqMaybe_0 (Just_0 x_57879) (Just_0 x_57880)))))
(declare-fun primEnumFromTo_1 (list_281 Nat_632 Nat_632) Bool)
(assert (forall ((x_57702 Nat_632) (y_2463 Nat_632))
	(=> (gt_376 x_57702 y_2463)
	    (primEnumFromTo_1 nil_314 x_57702 y_2463))))
(assert (forall ((x_57788 Nat_632) (x_57719 list_281) (x_57702 Nat_632) (y_2463 Nat_632))
	(=>	(and (le_373 x_57702 y_2463)
			(primEnumFromTo_1 x_57719 x_57788 y_2463)
			(add_399 x_57788 (S_521 Z_2227) x_57702))
		(primEnumFromTo_1 (cons_281 x_57702 x_57719) x_57702 y_2463))))
(declare-fun petersen_0 (list_282 Nat_632 list_281) Bool)
(assert (forall ((x_57789 Nat_632) (x_57721 list_282) (z_2220 Nat_632) (x_57704 list_281) (x_57703 Nat_632))
	(=>	(and (petersen_0 x_57721 x_57703 x_57704)
			(add_399 x_57789 x_57703 z_2220))
		(petersen_0 (cons_282 (pair_103 z_2220 x_57789) x_57721) x_57703 (cons_281 z_2220 x_57704)))))
(assert (forall ((x_57703 Nat_632))
	(petersen_0 nil_315 x_57703 nil_314)))
(declare-fun petersen_1 (list_282 list_281) Bool)
(assert (forall ((x_57790 Nat_632) (x_57724 list_282) (y_2465 Nat_632) (z_2221 list_281))
	(=>	(and (petersen_1 x_57724 z_2221)
			(add_399 x_57790 (S_521 Z_2227) y_2465))
		(petersen_1 (cons_282 (pair_103 y_2465 x_57790) x_57724) (cons_281 y_2465 z_2221)))))
(assert (petersen_1 nil_315 nil_314))
(declare-fun petersen_2 (list_283 Nat_632 list_282) Bool)
(assert (forall ((x_57791 Nat_632) (x_57792 Nat_632) (x_57727 list_283) (u_3 Nat_632) (v_3 Nat_632) (x_57707 list_282) (x_57706 Nat_632))
	(=>	(and (petersen_2 x_57727 x_57706 x_57707)
			(add_399 x_57791 x_57706 u_3)
			(add_399 x_57792 x_57706 v_3))
		(petersen_2 (cons_283 (cons_282 (pair_103 u_3 v_3) (cons_282 (pair_103 x_57791 x_57792) nil_315)) x_57727) x_57706 (cons_282 (pair_103 u_3 v_3) x_57707)))))
(assert (forall ((x_57706 Nat_632))
	(petersen_2 nil_316 x_57706 nil_315)))
(declare-fun index_0 (Maybe_0 list_281 Nat_632) Bool)
(assert (forall ((z_2223 Nat_632) (xs_718 list_281))
	(index_0 (Just_0 z_2223) (cons_281 z_2223 xs_718) Z_2227)))
(assert (forall ((x_57793 Nat_632) (x_57730 Maybe_0) (z_2223 Nat_632) (xs_718 list_281) (y_2467 Nat_632))
	(=>	(and (diseqNat_632 y_2467 Z_2227)
			(index_0 x_57730 xs_718 x_57793)
			(minus_394 x_57793 y_2467 (S_521 Z_2227)))
		(index_0 x_57730 (cons_281 z_2223 xs_718) y_2467))))
(assert (forall ((y_2467 Nat_632))
	(index_0 Nothing_0 nil_314 y_2467)))
(declare-fun formula_4 (list_280 list_281) Bool)
(assert (forall ((x_57734 list_280) (y_2468 Nat_632) (z_2224 list_281))
	(=>	(and (lt_393 y_2468 (S_521 (S_521 (S_521 Z_2227))))
			(formula_4 x_57734 z_2224))
		(formula_4 (cons_280 true_373 x_57734) (cons_281 y_2468 z_2224)))))
(assert (forall ((x_57736 list_280) (y_2468 Nat_632) (z_2224 list_281))
	(=>	(and (ge_373 y_2468 (S_521 (S_521 (S_521 Z_2227))))
			(formula_4 x_57736 z_2224))
		(formula_4 (cons_280 false_373 x_57736) (cons_281 y_2468 z_2224)))))
(assert (formula_4 nil_313 nil_314))
(declare-fun colouring_0 (list_280 list_281 list_282) Bool)
(assert (forall ((x_57741 list_280) (c_26 Nat_632) (u_4 Nat_632) (v_4 Nat_632) (z_2225 list_282) (a_57 list_281))
	(=>	(and (colouring_0 x_57741 a_57 z_2225)
			(index_0 (Just_0 c_26) a_57 v_4)
			(index_0 (Just_0 c_26) a_57 u_4))
		(colouring_0 (cons_280 false_373 x_57741) a_57 (cons_282 (pair_103 u_4 v_4) z_2225)))))
(assert (forall ((x_57745 list_280) (c_27 Nat_632) (c_26 Nat_632) (u_4 Nat_632) (v_4 Nat_632) (z_2225 list_282) (a_57 list_281))
	(=>	(and (diseqNat_632 c_26 c_27)
			(colouring_0 x_57745 a_57 z_2225)
			(index_0 (Just_0 c_27) a_57 v_4)
			(index_0 (Just_0 c_26) a_57 u_4))
		(colouring_0 (cons_280 true_373 x_57745) a_57 (cons_282 (pair_103 u_4 v_4) z_2225)))))
(assert (forall ((x_57749 list_280) (c_26 Nat_632) (u_4 Nat_632) (v_4 Nat_632) (z_2225 list_282) (a_57 list_281))
	(=>	(and (colouring_0 x_57749 a_57 z_2225)
			(index_0 Nothing_0 a_57 v_4)
			(index_0 (Just_0 c_26) a_57 u_4))
		(colouring_0 (cons_280 false_373 x_57749) a_57 (cons_282 (pair_103 u_4 v_4) z_2225)))))
(assert (forall ((x_57752 list_280) (u_4 Nat_632) (v_4 Nat_632) (z_2225 list_282) (a_57 list_281))
	(=>	(and (colouring_0 x_57752 a_57 z_2225)
			(index_0 Nothing_0 a_57 u_4))
		(colouring_0 (cons_280 false_373 x_57752) a_57 (cons_282 (pair_103 u_4 v_4) z_2225)))))
(assert (forall ((a_57 list_281))
	(colouring_0 nil_313 a_57 nil_315)))
(declare-fun and_373 (Bool_373 list_280) Bool)
(assert (forall ((x_57754 Bool_373) (x_57755 Bool_373) (y_2470 Bool_373) (xs_719 list_280))
	(=>	(and (and_373 x_57755 xs_719)
			(and_374 x_57754 y_2470 x_57755))
		(and_373 x_57754 (cons_280 y_2470 xs_719)))))
(assert (and_373 true_373 nil_313))
(declare-fun colouring_1 (Bool_373 list_282 list_281) Bool)
(assert (forall ((x_57757 Bool_373) (x_57758 list_280) (x_57712 list_282) (y_2471 list_281))
	(=>	(and (colouring_0 x_57758 y_2471 x_57712)
			(and_373 x_57757 x_57758))
		(colouring_1 x_57757 x_57712 y_2471))))
(declare-fun x_57713 (list_282 list_282 list_282) Bool)
(assert (forall ((x_57761 list_282) (z_2226 pair_102) (xs_720 list_282) (y_2472 list_282))
	(=> (x_57713 x_57761 xs_720 y_2472)
	    (x_57713 (cons_282 z_2226 x_57761) (cons_282 z_2226 xs_720) y_2472))))
(assert (forall ((x_57762 list_282))
	(x_57713 x_57762 nil_315 x_57762)))
(declare-fun concat_2 (list_282 list_283) Bool)
(assert (forall ((x_57763 list_282) (x_57764 list_282) (y_2473 list_282) (xs_721 list_283))
	(=>	(and (concat_2 x_57764 xs_721)
			(x_57713 x_57763 y_2473 x_57764))
		(concat_2 x_57763 (cons_283 y_2473 xs_721)))))
(assert (concat_2 nil_315 nil_316))
(declare-fun petersen_3 (list_282 Nat_632) Bool)
(assert (petersen_3 nil_315 Z_2227))
(assert (forall ((x_57795 Nat_632) (x_57794 Nat_632) (x_57768 list_282) (x_57769 list_281) (x_57770 list_282) (x_57771 list_283) (x_57772 list_282) (x_57773 list_281) (x_57774 list_282) (x_57716 Nat_632))
	(=>	(and (diseqNat_632 x_57716 Z_2227)
			(primEnumFromTo_1 x_57769 Z_2227 x_57794)
			(petersen_1 x_57770 x_57769)
			(petersen_2 x_57771 x_57716 (cons_282 (pair_103 x_57795 Z_2227) x_57770))
			(concat_2 x_57772 x_57771)
			(primEnumFromTo_1 x_57773 Z_2227 x_57716)
			(petersen_0 x_57774 x_57716 x_57773)
			(x_57713 x_57768 x_57772 x_57774)
			(minus_394 x_57795 x_57716 (S_521 Z_2227))
			(minus_394 x_57794 x_57716 (S_521 Z_2227)))
		(petersen_3 x_57768 x_57716))))
(assert (forall ((x_57797 Nat_632) (x_57796 Nat_632) (x_57784 list_280) (x_57776 list_281) (x_57777 list_282) (x_57778 list_283) (x_57779 list_282) (x_57780 list_281) (x_57781 list_282) (x_57782 list_282) (a_58 list_281))
	(=>	(and true
			true
			(formula_4 x_57784 a_58)
			(and_373 true_373 x_57784)
			(primEnumFromTo_1 x_57776 Z_2227 x_57796)
			(petersen_1 x_57777 x_57776)
			(petersen_2 x_57778 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 Z_2227))))))))) (cons_282 (pair_103 x_57797 Z_2227) x_57777))
			(concat_2 x_57779 x_57778)
			(primEnumFromTo_1 x_57780 Z_2227 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 Z_2227))))))))))
			(petersen_0 x_57781 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 Z_2227))))))))) x_57780)
			(x_57713 x_57782 x_57779 x_57781)
			(colouring_1 true_373 x_57782 a_58)
			(minus_394 x_57797 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 Z_2227))))))))) (S_521 Z_2227))
			(minus_394 x_57796 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 (S_521 Z_2227))))))))) (S_521 Z_2227)))
		false)))
(check-sat)
