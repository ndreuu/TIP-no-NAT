(set-logic HORN)
(declare-datatypes ((Nat_566 0)) (((Z_2011 ) (S_455 (unS_666 Nat_566)))))
(declare-fun diseqNat_566 (Nat_566 Nat_566) Bool)
(declare-fun unS_667 (Nat_566 Nat_566) Bool)
(declare-fun isZ_422 (Nat_566) Bool)
(declare-fun isS_422 (Nat_566) Bool)
(assert (forall ((x_54967 Nat_566))
	(unS_667 x_54967 (S_455 x_54967))))
(assert (isZ_422 Z_2011))
(assert (forall ((x_54969 Nat_566))
	(isS_422 (S_455 x_54969))))
(assert (forall ((x_54970 Nat_566))
	(diseqNat_566 Z_2011 (S_455 x_54970))))
(assert (forall ((x_54971 Nat_566))
	(diseqNat_566 (S_455 x_54971) Z_2011)))
(assert (forall ((x_54972 Nat_566) (x_54973 Nat_566))
	(=> (diseqNat_566 x_54972 x_54973)
	    (diseqNat_566 (S_455 x_54972) (S_455 x_54973)))))
(declare-fun add_359 (Nat_566 Nat_566 Nat_566) Bool)
(declare-fun minus_354 (Nat_566 Nat_566 Nat_566) Bool)
(declare-fun le_333 (Nat_566 Nat_566) Bool)
(declare-fun ge_333 (Nat_566 Nat_566) Bool)
(declare-fun lt_353 (Nat_566 Nat_566) Bool)
(declare-fun gt_336 (Nat_566 Nat_566) Bool)
(declare-fun mult_333 (Nat_566 Nat_566 Nat_566) Bool)
(declare-fun div_333 (Nat_566 Nat_566 Nat_566) Bool)
(declare-fun mod_335 (Nat_566 Nat_566 Nat_566) Bool)
(assert (forall ((y_2248 Nat_566))
	(add_359 y_2248 Z_2011 y_2248)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566) (r_406 Nat_566))
	(=> (add_359 r_406 x_54943 y_2248)
	    (add_359 (S_455 r_406) (S_455 x_54943) y_2248))))
(assert (forall ((y_2248 Nat_566))
	(minus_354 Z_2011 Z_2011 y_2248)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566) (r_406 Nat_566))
	(=> (minus_354 r_406 x_54943 y_2248)
	    (minus_354 (S_455 r_406) (S_455 x_54943) y_2248))))
(assert (forall ((y_2248 Nat_566))
	(le_333 Z_2011 y_2248)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (le_333 x_54943 y_2248)
	    (le_333 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Nat_566))
	(ge_333 y_2248 Z_2011)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (ge_333 x_54943 y_2248)
	    (ge_333 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Nat_566))
	(lt_353 Z_2011 (S_455 y_2248))))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (lt_353 x_54943 y_2248)
	    (lt_353 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Nat_566))
	(gt_336 (S_455 y_2248) Z_2011)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (gt_336 x_54943 y_2248)
	    (gt_336 (S_455 x_54943) (S_455 y_2248)))))
(assert (forall ((y_2248 Nat_566))
	(mult_333 Z_2011 Z_2011 y_2248)))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566) (r_406 Nat_566) (z_2012 Nat_566))
	(=>	(and (mult_333 r_406 x_54943 y_2248)
			(add_359 z_2012 r_406 y_2248))
		(mult_333 z_2012 (S_455 x_54943) y_2248))))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (lt_353 x_54943 y_2248)
	    (div_333 Z_2011 x_54943 y_2248))))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566) (r_406 Nat_566) (z_2012 Nat_566))
	(=>	(and (ge_333 x_54943 y_2248)
			(minus_354 z_2012 x_54943 y_2248)
			(div_333 r_406 z_2012 y_2248))
		(div_333 (S_455 r_406) x_54943 y_2248))))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566))
	(=> (lt_353 x_54943 y_2248)
	    (mod_335 x_54943 x_54943 y_2248))))
(assert (forall ((x_54943 Nat_566) (y_2248 Nat_566) (r_406 Nat_566) (z_2012 Nat_566))
	(=>	(and (ge_333 x_54943 y_2248)
			(minus_354 z_2012 x_54943 y_2248)
			(mod_335 r_406 z_2012 y_2248))
		(mod_335 r_406 x_54943 y_2248))))
(declare-datatypes ((list_237 0)) (((nil_267 ) (cons_237 (head_474 Nat_566) (tail_474 list_237)))))
(declare-fun diseqlist_237 (list_237 list_237) Bool)
(declare-fun head_475 (Nat_566 list_237) Bool)
(declare-fun tail_475 (list_237 list_237) Bool)
(declare-fun isnil_267 (list_237) Bool)
(declare-fun iscons_237 (list_237) Bool)
(assert (forall ((x_54945 Nat_566) (x_54946 list_237))
	(head_475 x_54945 (cons_237 x_54945 x_54946))))
(assert (forall ((x_54945 Nat_566) (x_54946 list_237))
	(tail_475 x_54946 (cons_237 x_54945 x_54946))))
(assert (isnil_267 nil_267))
(assert (forall ((x_54948 Nat_566) (x_54949 list_237))
	(iscons_237 (cons_237 x_54948 x_54949))))
(assert (forall ((x_54950 Nat_566) (x_54951 list_237))
	(diseqlist_237 nil_267 (cons_237 x_54950 x_54951))))
(assert (forall ((x_54952 Nat_566) (x_54953 list_237))
	(diseqlist_237 (cons_237 x_54952 x_54953) nil_267)))
(assert (forall ((x_54954 Nat_566) (x_54955 list_237) (x_54956 Nat_566) (x_54957 list_237))
	(=> (diseqNat_566 x_54954 x_54956)
	    (diseqlist_237 (cons_237 x_54954 x_54955) (cons_237 x_54956 x_54957)))))
(assert (forall ((x_54954 Nat_566) (x_54955 list_237) (x_54956 Nat_566) (x_54957 list_237))
	(=> (diseqlist_237 x_54955 x_54957)
	    (diseqlist_237 (cons_237 x_54954 x_54955) (cons_237 x_54956 x_54957)))))
(declare-datatypes ((Nat_565 0)) (((Z_2008 ) (S_454 (projS_176 Nat_565)))))
(declare-fun diseqNat_565 (Nat_565 Nat_565) Bool)
(declare-fun projS_177 (Nat_565 Nat_565) Bool)
(declare-fun isZ_421 (Nat_565) Bool)
(declare-fun isS_421 (Nat_565) Bool)
(assert (forall ((x_54959 Nat_565))
	(projS_177 x_54959 (S_454 x_54959))))
(assert (isZ_421 Z_2008))
(assert (forall ((x_54961 Nat_565))
	(isS_421 (S_454 x_54961))))
(assert (forall ((x_54962 Nat_565))
	(diseqNat_565 Z_2008 (S_454 x_54962))))
(assert (forall ((x_54963 Nat_565))
	(diseqNat_565 (S_454 x_54963) Z_2008)))
(assert (forall ((x_54964 Nat_565) (x_54965 Nat_565))
	(=> (diseqNat_565 x_54964 x_54965)
	    (diseqNat_565 (S_454 x_54964) (S_454 x_54965)))))
(declare-fun drop_53 (list_237 Nat_565 list_237) Bool)
(assert (forall ((x_54933 list_237) (x_54930 Nat_566) (x_54931 list_237) (z_2009 Nat_565))
	(=> (drop_53 x_54933 z_2009 x_54931)
	    (drop_53 x_54933 (S_454 z_2009) (cons_237 x_54930 x_54931)))))
(assert (forall ((z_2009 Nat_565))
	(drop_53 nil_267 (S_454 z_2009) nil_267)))
(assert (forall ((x_54936 list_237))
	(drop_53 x_54936 Z_2008 x_54936)))
(assert (forall ((x_54937 list_237) (x_54938 list_237) (x_54939 list_237) (x_54940 list_237) (x_54941 list_237) (x_54942 list_237) (x_54932 Nat_565) (y_2247 Nat_565) (z_2010 list_237) (w_0 Nat_565))
	(=>	(and true
			(diseqlist_237 x_54939 x_54942)
			(drop_53 x_54937 y_2247 z_2010)
			(drop_53 x_54938 x_54932 x_54937)
			(drop_53 x_54939 w_0 x_54938)
			(drop_53 x_54940 w_0 z_2010)
			(drop_53 x_54941 x_54932 x_54940)
			(drop_53 x_54942 y_2247 x_54941))
		false)))
(check-sat)
