(set-logic HORN)
(declare-datatypes ((Nat_564 0)) (((Z_2006 ) (S_453 (unS_664 Nat_564)))))
(declare-fun diseqNat_564 (Nat_564 Nat_564) Bool)
(declare-fun unS_665 (Nat_564 Nat_564) Bool)
(declare-fun isZ_420 (Nat_564) Bool)
(declare-fun isS_420 (Nat_564) Bool)
(assert (forall ((x_54922 Nat_564))
	(unS_665 x_54922 (S_453 x_54922))))
(assert (isZ_420 Z_2006))
(assert (forall ((x_54924 Nat_564))
	(isS_420 (S_453 x_54924))))
(assert (forall ((x_54925 Nat_564))
	(diseqNat_564 Z_2006 (S_453 x_54925))))
(assert (forall ((x_54926 Nat_564))
	(diseqNat_564 (S_453 x_54926) Z_2006)))
(assert (forall ((x_54927 Nat_564) (x_54928 Nat_564))
	(=> (diseqNat_564 x_54927 x_54928)
	    (diseqNat_564 (S_453 x_54927) (S_453 x_54928)))))
(declare-fun add_358 (Nat_564 Nat_564 Nat_564) Bool)
(declare-fun minus_353 (Nat_564 Nat_564 Nat_564) Bool)
(declare-fun le_332 (Nat_564 Nat_564) Bool)
(declare-fun ge_332 (Nat_564 Nat_564) Bool)
(declare-fun lt_352 (Nat_564 Nat_564) Bool)
(declare-fun gt_335 (Nat_564 Nat_564) Bool)
(declare-fun mult_332 (Nat_564 Nat_564 Nat_564) Bool)
(declare-fun div_332 (Nat_564 Nat_564 Nat_564) Bool)
(declare-fun mod_334 (Nat_564 Nat_564 Nat_564) Bool)
(assert (forall ((y_2245 Nat_564))
	(add_358 y_2245 Z_2006 y_2245)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564) (r_405 Nat_564))
	(=> (add_358 r_405 x_54898 y_2245)
	    (add_358 (S_453 r_405) (S_453 x_54898) y_2245))))
(assert (forall ((y_2245 Nat_564))
	(minus_353 Z_2006 Z_2006 y_2245)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564) (r_405 Nat_564))
	(=> (minus_353 r_405 x_54898 y_2245)
	    (minus_353 (S_453 r_405) (S_453 x_54898) y_2245))))
(assert (forall ((y_2245 Nat_564))
	(le_332 Z_2006 y_2245)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (le_332 x_54898 y_2245)
	    (le_332 (S_453 x_54898) (S_453 y_2245)))))
(assert (forall ((y_2245 Nat_564))
	(ge_332 y_2245 Z_2006)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (ge_332 x_54898 y_2245)
	    (ge_332 (S_453 x_54898) (S_453 y_2245)))))
(assert (forall ((y_2245 Nat_564))
	(lt_352 Z_2006 (S_453 y_2245))))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (lt_352 x_54898 y_2245)
	    (lt_352 (S_453 x_54898) (S_453 y_2245)))))
(assert (forall ((y_2245 Nat_564))
	(gt_335 (S_453 y_2245) Z_2006)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (gt_335 x_54898 y_2245)
	    (gt_335 (S_453 x_54898) (S_453 y_2245)))))
(assert (forall ((y_2245 Nat_564))
	(mult_332 Z_2006 Z_2006 y_2245)))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564) (r_405 Nat_564) (z_2007 Nat_564))
	(=>	(and (mult_332 r_405 x_54898 y_2245)
			(add_358 z_2007 r_405 y_2245))
		(mult_332 z_2007 (S_453 x_54898) y_2245))))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (lt_352 x_54898 y_2245)
	    (div_332 Z_2006 x_54898 y_2245))))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564) (r_405 Nat_564) (z_2007 Nat_564))
	(=>	(and (ge_332 x_54898 y_2245)
			(minus_353 z_2007 x_54898 y_2245)
			(div_332 r_405 z_2007 y_2245))
		(div_332 (S_453 r_405) x_54898 y_2245))))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564))
	(=> (lt_352 x_54898 y_2245)
	    (mod_334 x_54898 x_54898 y_2245))))
(assert (forall ((x_54898 Nat_564) (y_2245 Nat_564) (r_405 Nat_564) (z_2007 Nat_564))
	(=>	(and (ge_332 x_54898 y_2245)
			(minus_353 z_2007 x_54898 y_2245)
			(mod_334 r_405 z_2007 y_2245))
		(mod_334 r_405 x_54898 y_2245))))
(declare-datatypes ((list_236 0)) (((nil_266 ) (cons_236 (head_472 Nat_564) (tail_472 list_236)))))
(declare-fun diseqlist_236 (list_236 list_236) Bool)
(declare-fun head_473 (Nat_564 list_236) Bool)
(declare-fun tail_473 (list_236 list_236) Bool)
(declare-fun isnil_266 (list_236) Bool)
(declare-fun iscons_236 (list_236) Bool)
(assert (forall ((x_54900 Nat_564) (x_54901 list_236))
	(head_473 x_54900 (cons_236 x_54900 x_54901))))
(assert (forall ((x_54900 Nat_564) (x_54901 list_236))
	(tail_473 x_54901 (cons_236 x_54900 x_54901))))
(assert (isnil_266 nil_266))
(assert (forall ((x_54903 Nat_564) (x_54904 list_236))
	(iscons_236 (cons_236 x_54903 x_54904))))
(assert (forall ((x_54905 Nat_564) (x_54906 list_236))
	(diseqlist_236 nil_266 (cons_236 x_54905 x_54906))))
(assert (forall ((x_54907 Nat_564) (x_54908 list_236))
	(diseqlist_236 (cons_236 x_54907 x_54908) nil_266)))
(assert (forall ((x_54909 Nat_564) (x_54910 list_236) (x_54911 Nat_564) (x_54912 list_236))
	(=> (diseqNat_564 x_54909 x_54911)
	    (diseqlist_236 (cons_236 x_54909 x_54910) (cons_236 x_54911 x_54912)))))
(assert (forall ((x_54909 Nat_564) (x_54910 list_236) (x_54911 Nat_564) (x_54912 list_236))
	(=> (diseqlist_236 x_54910 x_54912)
	    (diseqlist_236 (cons_236 x_54909 x_54910) (cons_236 x_54911 x_54912)))))
(declare-datatypes ((Nat_563 0)) (((Z_2003 ) (S_452 (projS_174 Nat_563)))))
(declare-fun diseqNat_563 (Nat_563 Nat_563) Bool)
(declare-fun projS_175 (Nat_563 Nat_563) Bool)
(declare-fun isZ_419 (Nat_563) Bool)
(declare-fun isS_419 (Nat_563) Bool)
(assert (forall ((x_54914 Nat_563))
	(projS_175 x_54914 (S_452 x_54914))))
(assert (isZ_419 Z_2003))
(assert (forall ((x_54916 Nat_563))
	(isS_419 (S_452 x_54916))))
(assert (forall ((x_54917 Nat_563))
	(diseqNat_563 Z_2003 (S_452 x_54917))))
(assert (forall ((x_54918 Nat_563))
	(diseqNat_563 (S_452 x_54918) Z_2003)))
(assert (forall ((x_54919 Nat_563) (x_54920 Nat_563))
	(=> (diseqNat_563 x_54919 x_54920)
	    (diseqNat_563 (S_452 x_54919) (S_452 x_54920)))))
(declare-fun length_46 (Nat_563 list_236) Bool)
(assert (forall ((x_54883 Nat_563) (y_2241 Nat_564) (xs_643 list_236))
	(=> (length_46 x_54883 xs_643)
	    (length_46 (S_452 x_54883) (cons_236 y_2241 xs_643)))))
(assert (length_46 Z_2003 nil_266))
(declare-fun half_0 (Nat_563 Nat_563) Bool)
(assert (forall ((x_54886 Nat_563) (z_2004 Nat_563))
	(=> (half_0 x_54886 z_2004)
	    (half_0 (S_452 x_54886) (S_452 (S_452 z_2004))))))
(assert (half_0 Z_2003 (S_452 Z_2003)))
(assert (half_0 Z_2003 Z_2003))
(declare-fun x_54879 (list_236 list_236 list_236) Bool)
(assert (forall ((x_54890 list_236) (z_2005 Nat_564) (xs_644 list_236) (y_2243 list_236))
	(=> (x_54879 x_54890 xs_644 y_2243)
	    (x_54879 (cons_236 z_2005 x_54890) (cons_236 z_2005 xs_644) y_2243))))
(assert (forall ((x_54891 list_236))
	(x_54879 x_54891 nil_266 x_54891)))
(assert (forall ((x_54892 list_236) (x_54893 Nat_563) (x_54894 Nat_563) (x_54895 list_236) (x_54896 Nat_563) (x_54897 Nat_563) (x_54881 list_236) (y_2244 list_236))
	(=>	(and true
			(diseqNat_563 x_54894 x_54897)
			(x_54879 x_54892 x_54881 y_2244)
			(length_46 x_54893 x_54892)
			(half_0 x_54894 x_54893)
			(x_54879 x_54895 y_2244 x_54881)
			(length_46 x_54896 x_54895)
			(half_0 x_54897 x_54896))
		false)))
(check-sat)
