(set-logic HORN)
(declare-datatypes ((Nat_389 0)) (((Z_1347 ) (S_325 (unS_454 Nat_389)))))
(declare-fun diseqNat_389 (Nat_389 Nat_389) Bool)
(declare-fun unS_455 (Nat_389 Nat_389) Bool)
(declare-fun isZ_300 (Nat_389) Bool)
(declare-fun isS_300 (Nat_389) Bool)
(assert (forall ((x_39905 Nat_389))
	(unS_455 x_39905 (S_325 x_39905))))
(assert (isZ_300 Z_1347))
(assert (forall ((x_39907 Nat_389))
	(isS_300 (S_325 x_39907))))
(assert (forall ((x_39908 Nat_389))
	(diseqNat_389 Z_1347 (S_325 x_39908))))
(assert (forall ((x_39909 Nat_389))
	(diseqNat_389 (S_325 x_39909) Z_1347)))
(assert (forall ((x_39910 Nat_389) (x_39911 Nat_389))
	(=> (diseqNat_389 x_39910 x_39911)
	    (diseqNat_389 (S_325 x_39910) (S_325 x_39911)))))
(declare-fun add_244 (Nat_389 Nat_389 Nat_389) Bool)
(declare-fun minus_240 (Nat_389 Nat_389 Nat_389) Bool)
(declare-fun le_227 (Nat_389 Nat_389) Bool)
(declare-fun ge_227 (Nat_389 Nat_389) Bool)
(declare-fun lt_242 (Nat_389 Nat_389) Bool)
(declare-fun gt_230 (Nat_389 Nat_389) Bool)
(declare-fun mult_227 (Nat_389 Nat_389 Nat_389) Bool)
(declare-fun div_227 (Nat_389 Nat_389 Nat_389) Bool)
(declare-fun mod_229 (Nat_389 Nat_389 Nat_389) Bool)
(assert (forall ((y_1473 Nat_389))
	(add_244 y_1473 Z_1347 y_1473)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389) (r_280 Nat_389))
	(=> (add_244 r_280 x_39898 y_1473)
	    (add_244 (S_325 r_280) (S_325 x_39898) y_1473))))
(assert (forall ((y_1473 Nat_389))
	(minus_240 Z_1347 Z_1347 y_1473)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389) (r_280 Nat_389))
	(=> (minus_240 r_280 x_39898 y_1473)
	    (minus_240 (S_325 r_280) (S_325 x_39898) y_1473))))
(assert (forall ((y_1473 Nat_389))
	(le_227 Z_1347 y_1473)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (le_227 x_39898 y_1473)
	    (le_227 (S_325 x_39898) (S_325 y_1473)))))
(assert (forall ((y_1473 Nat_389))
	(ge_227 y_1473 Z_1347)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (ge_227 x_39898 y_1473)
	    (ge_227 (S_325 x_39898) (S_325 y_1473)))))
(assert (forall ((y_1473 Nat_389))
	(lt_242 Z_1347 (S_325 y_1473))))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (lt_242 x_39898 y_1473)
	    (lt_242 (S_325 x_39898) (S_325 y_1473)))))
(assert (forall ((y_1473 Nat_389))
	(gt_230 (S_325 y_1473) Z_1347)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (gt_230 x_39898 y_1473)
	    (gt_230 (S_325 x_39898) (S_325 y_1473)))))
(assert (forall ((y_1473 Nat_389))
	(mult_227 Z_1347 Z_1347 y_1473)))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389) (r_280 Nat_389) (z_1348 Nat_389))
	(=>	(and (mult_227 r_280 x_39898 y_1473)
			(add_244 z_1348 r_280 y_1473))
		(mult_227 z_1348 (S_325 x_39898) y_1473))))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (lt_242 x_39898 y_1473)
	    (div_227 Z_1347 x_39898 y_1473))))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389) (r_280 Nat_389) (z_1348 Nat_389))
	(=>	(and (ge_227 x_39898 y_1473)
			(minus_240 z_1348 x_39898 y_1473)
			(div_227 r_280 z_1348 y_1473))
		(div_227 (S_325 r_280) x_39898 y_1473))))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389))
	(=> (lt_242 x_39898 y_1473)
	    (mod_229 x_39898 x_39898 y_1473))))
(assert (forall ((x_39898 Nat_389) (y_1473 Nat_389) (r_280 Nat_389) (z_1348 Nat_389))
	(=>	(and (ge_227 x_39898 y_1473)
			(minus_240 z_1348 x_39898 y_1473)
			(mod_229 r_280 z_1348 y_1473))
		(mod_229 r_280 x_39898 y_1473))))
(declare-datatypes ((Bool_227 0)) (((false_227 ) (true_227 ))))
(declare-fun diseqBool_103 (Bool_227 Bool_227) Bool)
(declare-fun isfalse_103 (Bool_227) Bool)
(declare-fun istrue_103 (Bool_227) Bool)
(assert (isfalse_103 false_227))
(assert (istrue_103 true_227))
(assert (diseqBool_103 false_227 true_227))
(assert (diseqBool_103 true_227 false_227))
(declare-fun and_227 (Bool_227 Bool_227 Bool_227) Bool)
(declare-fun or_231 (Bool_227 Bool_227 Bool_227) Bool)
(declare-fun hence_227 (Bool_227 Bool_227 Bool_227) Bool)
(declare-fun not_230 (Bool_227 Bool_227) Bool)
(assert (and_227 false_227 false_227 false_227))
(assert (and_227 false_227 true_227 false_227))
(assert (and_227 false_227 false_227 true_227))
(assert (and_227 true_227 true_227 true_227))
(assert (or_231 false_227 false_227 false_227))
(assert (or_231 true_227 true_227 false_227))
(assert (or_231 true_227 false_227 true_227))
(assert (or_231 true_227 true_227 true_227))
(assert (hence_227 true_227 false_227 false_227))
(assert (hence_227 false_227 true_227 false_227))
(assert (hence_227 true_227 false_227 true_227))
(assert (hence_227 true_227 true_227 true_227))
(assert (not_230 true_227 false_227))
(assert (not_230 false_227 true_227))
(declare-datatypes ((list_155 0)) (((nil_176 ) (cons_155 (head_310 Nat_389) (tail_310 list_155)))))
(declare-fun diseqlist_155 (list_155 list_155) Bool)
(declare-fun head_311 (Nat_389 list_155) Bool)
(declare-fun tail_311 (list_155 list_155) Bool)
(declare-fun isnil_176 (list_155) Bool)
(declare-fun iscons_155 (list_155) Bool)
(assert (forall ((x_39915 Nat_389) (x_39916 list_155))
	(head_311 x_39915 (cons_155 x_39915 x_39916))))
(assert (forall ((x_39915 Nat_389) (x_39916 list_155))
	(tail_311 x_39916 (cons_155 x_39915 x_39916))))
(assert (isnil_176 nil_176))
(assert (forall ((x_39918 Nat_389) (x_39919 list_155))
	(iscons_155 (cons_155 x_39918 x_39919))))
(assert (forall ((x_39920 Nat_389) (x_39921 list_155))
	(diseqlist_155 nil_176 (cons_155 x_39920 x_39921))))
(assert (forall ((x_39922 Nat_389) (x_39923 list_155))
	(diseqlist_155 (cons_155 x_39922 x_39923) nil_176)))
(assert (forall ((x_39924 Nat_389) (x_39925 list_155) (x_39926 Nat_389) (x_39927 list_155))
	(=> (diseqNat_389 x_39924 x_39926)
	    (diseqlist_155 (cons_155 x_39924 x_39925) (cons_155 x_39926 x_39927)))))
(assert (forall ((x_39924 Nat_389) (x_39925 list_155) (x_39926 Nat_389) (x_39927 list_155))
	(=> (diseqlist_155 x_39925 x_39927)
	    (diseqlist_155 (cons_155 x_39924 x_39925) (cons_155 x_39926 x_39927)))))
(declare-datatypes ((pair_66 0)) (((pair_67 (projpair_132 list_155) (projpair_133 list_155)))))
(declare-fun diseqpair_33 (pair_66 pair_66) Bool)
(declare-fun projpair_134 (list_155 pair_66) Bool)
(declare-fun projpair_135 (list_155 pair_66) Bool)
(declare-fun ispair_33 (pair_66) Bool)
(assert (forall ((x_39928 list_155) (x_39929 list_155))
	(projpair_134 x_39928 (pair_67 x_39928 x_39929))))
(assert (forall ((x_39928 list_155) (x_39929 list_155))
	(projpair_135 x_39929 (pair_67 x_39928 x_39929))))
(assert (forall ((x_39931 list_155) (x_39932 list_155))
	(ispair_33 (pair_67 x_39931 x_39932))))
(assert (forall ((x_39933 list_155) (x_39934 list_155) (x_39935 list_155) (x_39936 list_155))
	(=> (diseqlist_155 x_39933 x_39935)
	    (diseqpair_33 (pair_67 x_39933 x_39934) (pair_67 x_39935 x_39936)))))
(assert (forall ((x_39933 list_155) (x_39934 list_155) (x_39935 list_155) (x_39936 list_155))
	(=> (diseqlist_155 x_39934 x_39936)
	    (diseqpair_33 (pair_67 x_39933 x_39934) (pair_67 x_39935 x_39936)))))
(declare-fun take_36 (list_155 Nat_389 list_155) Bool)
(assert (forall ((x_39831 Nat_389) (y_1462 list_155))
	(=> (le_227 x_39831 Z_1347)
	    (take_36 nil_176 x_39831 y_1462))))
(assert (forall ((x_39899 Nat_389) (x_39848 list_155) (z_1342 Nat_389) (xs_430 list_155) (x_39831 Nat_389))
	(=>	(and (gt_230 x_39831 Z_1347)
			(take_36 x_39848 x_39899 xs_430)
			(minus_240 x_39899 x_39831 (S_325 Z_1347)))
		(take_36 (cons_155 z_1342 x_39848) x_39831 (cons_155 z_1342 xs_430)))))
(assert (forall ((x_39831 Nat_389) (y_1462 list_155))
	(=> (le_227 x_39831 Z_1347)
	    (take_36 nil_176 x_39831 y_1462))))
(assert (forall ((x_39831 Nat_389))
	(=> (gt_230 x_39831 Z_1347)
	    (take_36 nil_176 x_39831 nil_176))))
(declare-fun sort_24 (list_155 Nat_389 Nat_389) Bool)
(assert (forall ((x_39832 Nat_389) (y_1463 Nat_389))
	(=> (le_227 x_39832 y_1463)
	    (sort_24 (cons_155 x_39832 (cons_155 y_1463 nil_176)) x_39832 y_1463))))
(assert (forall ((x_39832 Nat_389) (y_1463 Nat_389))
	(=> (gt_230 x_39832 y_1463)
	    (sort_24 (cons_155 y_1463 (cons_155 x_39832 nil_176)) x_39832 y_1463))))
(declare-fun ordered_14 (Bool_227 list_155) Bool)
(assert (forall ((x_39853 Bool_227) (y_1465 Nat_389) (xs_431 list_155) (y_1464 Nat_389))
	(=>	(and (le_227 y_1464 y_1465)
			(ordered_14 x_39853 (cons_155 y_1465 xs_431)))
		(ordered_14 x_39853 (cons_155 y_1464 (cons_155 y_1465 xs_431))))))
(assert (forall ((y_1465 Nat_389) (xs_431 list_155) (y_1464 Nat_389))
	(=> (gt_230 y_1464 y_1465)
	    (ordered_14 false_227 (cons_155 y_1464 (cons_155 y_1465 xs_431))))))
(assert (forall ((y_1464 Nat_389))
	(ordered_14 true_227 (cons_155 y_1464 nil_176))))
(assert (ordered_14 true_227 nil_176))
(declare-fun length_24 (Nat_389 list_155) Bool)
(assert (forall ((x_39858 Nat_389) (x_39859 Nat_389) (y_1466 Nat_389) (l_26 list_155))
	(=>	(and (length_24 x_39859 l_26)
			(add_244 x_39858 (S_325 Z_1347) x_39859))
		(length_24 x_39858 (cons_155 y_1466 l_26)))))
(assert (length_24 Z_1347 nil_176))
(declare-fun drop_38 (list_155 Nat_389 list_155) Bool)
(assert (forall ((x_39861 list_155) (x_39835 Nat_389))
	(=> (le_227 x_39835 Z_1347)
	    (drop_38 x_39861 x_39835 x_39861))))
(assert (forall ((x_39901 Nat_389) (x_39862 list_155) (z_1344 Nat_389) (xs_432 list_155) (x_39835 Nat_389))
	(=>	(and (gt_230 x_39835 Z_1347)
			(drop_38 x_39862 x_39901 xs_432)
			(minus_240 x_39901 x_39835 (S_325 Z_1347)))
		(drop_38 x_39862 x_39835 (cons_155 z_1344 xs_432)))))
(assert (forall ((x_39864 list_155) (x_39835 Nat_389))
	(=> (le_227 x_39835 Z_1347)
	    (drop_38 x_39864 x_39835 x_39864))))
(assert (forall ((x_39835 Nat_389))
	(=> (gt_230 x_39835 Z_1347)
	    (drop_38 nil_176 x_39835 nil_176))))
(declare-fun splitAt_16 (pair_66 Nat_389 list_155) Bool)
(assert (forall ((x_39867 list_155) (x_39868 list_155) (x_39836 Nat_389) (y_1468 list_155))
	(=>	(and (take_36 x_39867 x_39836 y_1468)
			(drop_38 x_39868 x_39836 y_1468))
		(splitAt_16 (pair_67 x_39867 x_39868) x_39836 y_1468))))
(declare-fun x_39837 (list_155 list_155 list_155) Bool)
(assert (forall ((x_39870 list_155) (z_1345 Nat_389) (xs_433 list_155) (y_1469 list_155))
	(=> (x_39837 x_39870 xs_433 y_1469)
	    (x_39837 (cons_155 z_1345 x_39870) (cons_155 z_1345 xs_433) y_1469))))
(assert (forall ((x_39871 list_155))
	(x_39837 x_39871 nil_176 x_39871)))
(declare-fun reverse_8 (list_155 list_155) Bool)
(assert (forall ((x_39872 list_155) (x_39873 list_155) (y_1470 Nat_389) (xs_434 list_155))
	(=>	(and (reverse_8 x_39873 xs_434)
			(x_39837 x_39872 x_39873 (cons_155 y_1470 nil_176)))
		(reverse_8 x_39872 (cons_155 y_1470 xs_434)))))
(assert (reverse_8 nil_176 nil_176))
(declare-fun stoogesort_27 (list_155 list_155) Bool)
(declare-fun stoogesort_28 (list_155 list_155) Bool)
(declare-fun stoogesort_29 (list_155 list_155) Bool)
(assert (forall ((x_39902 Nat_389) (x_39879 list_155) (x_39880 list_155) (x_39881 list_155) (x_39876 Nat_389) (x_39877 list_155) (ys_138 list_155) (zs_47 list_155) (x_39840 list_155))
	(=>	(and (stoogesort_28 x_39880 zs_47)
			(reverse_8 x_39881 ys_138)
			(x_39837 x_39879 x_39880 x_39881)
			(length_24 x_39876 x_39840)
			(reverse_8 x_39877 x_39840)
			(splitAt_16 (pair_67 ys_138 zs_47) x_39902 x_39877)
			(div_227 x_39902 x_39876 (S_325 (S_325 (S_325 Z_1347)))))
		(stoogesort_27 x_39879 x_39840))))
(assert (forall ((x_39883 list_155) (x_39884 list_155) (x_39885 list_155) (x_39843 Nat_389) (x_39844 list_155) (y_1472 Nat_389) (y_1471 Nat_389))
	(=>	(and (stoogesort_27 x_39884 (cons_155 y_1471 (cons_155 y_1472 (cons_155 x_39843 x_39844))))
			(stoogesort_29 x_39885 x_39884)
			(stoogesort_27 x_39883 x_39885))
		(stoogesort_28 x_39883 (cons_155 y_1471 (cons_155 y_1472 (cons_155 x_39843 x_39844)))))))
(assert (forall ((x_39887 list_155) (y_1472 Nat_389) (y_1471 Nat_389))
	(=> (sort_24 x_39887 y_1471 y_1472)
	    (stoogesort_28 x_39887 (cons_155 y_1471 (cons_155 y_1472 nil_176))))))
(assert (forall ((y_1471 Nat_389))
	(stoogesort_28 (cons_155 y_1471 nil_176) (cons_155 y_1471 nil_176))))
(assert (stoogesort_28 nil_176 nil_176))
(assert (forall ((x_39903 Nat_389) (x_39893 list_155) (x_39894 list_155) (x_39891 Nat_389) (ys_139 list_155) (zs_48 list_155) (x_39845 list_155))
	(=>	(and (stoogesort_28 x_39894 zs_48)
			(x_39837 x_39893 ys_139 x_39894)
			(length_24 x_39891 x_39845)
			(splitAt_16 (pair_67 ys_139 zs_48) x_39903 x_39845)
			(div_227 x_39903 x_39891 (S_325 (S_325 (S_325 Z_1347)))))
		(stoogesort_29 x_39893 x_39845))))
(assert (forall ((x_39896 list_155) (xs_435 list_155))
	(=>	(and true
			(stoogesort_28 x_39896 xs_435)
			(ordered_14 false_227 x_39896))
		false)))
(check-sat)
