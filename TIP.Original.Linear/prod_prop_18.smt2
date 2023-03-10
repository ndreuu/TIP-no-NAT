(set-logic HORN)
(declare-datatypes ((Nat_584 0)) (((Z_2063 ) (S_473 (unS_686 Nat_584)))))
(declare-fun diseqNat_584 (Nat_584 Nat_584) Bool)
(declare-fun unS_687 (Nat_584 Nat_584) Bool)
(declare-fun isZ_440 (Nat_584) Bool)
(declare-fun isS_440 (Nat_584) Bool)
(assert (forall ((x_55445 Nat_584))
	(unS_687 x_55445 (S_473 x_55445))))
(assert (isZ_440 Z_2063))
(assert (forall ((x_55447 Nat_584))
	(isS_440 (S_473 x_55447))))
(assert (forall ((x_55448 Nat_584))
	(diseqNat_584 Z_2063 (S_473 x_55448))))
(assert (forall ((x_55449 Nat_584))
	(diseqNat_584 (S_473 x_55449) Z_2063)))
(assert (forall ((x_55450 Nat_584) (x_55451 Nat_584))
	(=> (diseqNat_584 x_55450 x_55451)
	    (diseqNat_584 (S_473 x_55450) (S_473 x_55451)))))
(declare-fun add_369 (Nat_584 Nat_584 Nat_584) Bool)
(declare-fun minus_364 (Nat_584 Nat_584 Nat_584) Bool)
(declare-fun le_343 (Nat_584 Nat_584) Bool)
(declare-fun ge_343 (Nat_584 Nat_584) Bool)
(declare-fun lt_363 (Nat_584 Nat_584) Bool)
(declare-fun gt_346 (Nat_584 Nat_584) Bool)
(declare-fun mult_343 (Nat_584 Nat_584 Nat_584) Bool)
(declare-fun div_343 (Nat_584 Nat_584 Nat_584) Bool)
(declare-fun mod_345 (Nat_584 Nat_584 Nat_584) Bool)
(assert (forall ((y_2298 Nat_584))
	(add_369 y_2298 Z_2063 y_2298)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584) (r_416 Nat_584))
	(=> (add_369 r_416 x_55429 y_2298)
	    (add_369 (S_473 r_416) (S_473 x_55429) y_2298))))
(assert (forall ((y_2298 Nat_584))
	(minus_364 Z_2063 Z_2063 y_2298)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584) (r_416 Nat_584))
	(=> (minus_364 r_416 x_55429 y_2298)
	    (minus_364 (S_473 r_416) (S_473 x_55429) y_2298))))
(assert (forall ((y_2298 Nat_584))
	(le_343 Z_2063 y_2298)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (le_343 x_55429 y_2298)
	    (le_343 (S_473 x_55429) (S_473 y_2298)))))
(assert (forall ((y_2298 Nat_584))
	(ge_343 y_2298 Z_2063)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (ge_343 x_55429 y_2298)
	    (ge_343 (S_473 x_55429) (S_473 y_2298)))))
(assert (forall ((y_2298 Nat_584))
	(lt_363 Z_2063 (S_473 y_2298))))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (lt_363 x_55429 y_2298)
	    (lt_363 (S_473 x_55429) (S_473 y_2298)))))
(assert (forall ((y_2298 Nat_584))
	(gt_346 (S_473 y_2298) Z_2063)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (gt_346 x_55429 y_2298)
	    (gt_346 (S_473 x_55429) (S_473 y_2298)))))
(assert (forall ((y_2298 Nat_584))
	(mult_343 Z_2063 Z_2063 y_2298)))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584) (r_416 Nat_584) (z_2064 Nat_584))
	(=>	(and (mult_343 r_416 x_55429 y_2298)
			(add_369 z_2064 r_416 y_2298))
		(mult_343 z_2064 (S_473 x_55429) y_2298))))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (lt_363 x_55429 y_2298)
	    (div_343 Z_2063 x_55429 y_2298))))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584) (r_416 Nat_584) (z_2064 Nat_584))
	(=>	(and (ge_343 x_55429 y_2298)
			(minus_364 z_2064 x_55429 y_2298)
			(div_343 r_416 z_2064 y_2298))
		(div_343 (S_473 r_416) x_55429 y_2298))))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584))
	(=> (lt_363 x_55429 y_2298)
	    (mod_345 x_55429 x_55429 y_2298))))
(assert (forall ((x_55429 Nat_584) (y_2298 Nat_584) (r_416 Nat_584) (z_2064 Nat_584))
	(=>	(and (ge_343 x_55429 y_2298)
			(minus_364 z_2064 x_55429 y_2298)
			(mod_345 r_416 z_2064 y_2298))
		(mod_345 r_416 x_55429 y_2298))))
(declare-datatypes ((list_245 0)) (((nil_275 ) (cons_245 (head_490 Nat_584) (tail_490 list_245)))))
(declare-fun diseqlist_245 (list_245 list_245) Bool)
(declare-fun head_491 (Nat_584 list_245) Bool)
(declare-fun tail_491 (list_245 list_245) Bool)
(declare-fun isnil_275 (list_245) Bool)
(declare-fun iscons_245 (list_245) Bool)
(assert (forall ((x_55431 Nat_584) (x_55432 list_245))
	(head_491 x_55431 (cons_245 x_55431 x_55432))))
(assert (forall ((x_55431 Nat_584) (x_55432 list_245))
	(tail_491 x_55432 (cons_245 x_55431 x_55432))))
(assert (isnil_275 nil_275))
(assert (forall ((x_55434 Nat_584) (x_55435 list_245))
	(iscons_245 (cons_245 x_55434 x_55435))))
(assert (forall ((x_55436 Nat_584) (x_55437 list_245))
	(diseqlist_245 nil_275 (cons_245 x_55436 x_55437))))
(assert (forall ((x_55438 Nat_584) (x_55439 list_245))
	(diseqlist_245 (cons_245 x_55438 x_55439) nil_275)))
(assert (forall ((x_55440 Nat_584) (x_55441 list_245) (x_55442 Nat_584) (x_55443 list_245))
	(=> (diseqNat_584 x_55440 x_55442)
	    (diseqlist_245 (cons_245 x_55440 x_55441) (cons_245 x_55442 x_55443)))))
(assert (forall ((x_55440 Nat_584) (x_55441 list_245) (x_55442 Nat_584) (x_55443 list_245))
	(=> (diseqlist_245 x_55441 x_55443)
	    (diseqlist_245 (cons_245 x_55440 x_55441) (cons_245 x_55442 x_55443)))))
(declare-fun x_55413 (list_245 list_245 list_245) Bool)
(assert (forall ((x_55418 list_245) (z_2062 Nat_584) (xs_658 list_245) (y_2295 list_245))
	(=> (x_55413 x_55418 xs_658 y_2295)
	    (x_55413 (cons_245 z_2062 x_55418) (cons_245 z_2062 xs_658) y_2295))))
(assert (forall ((x_55419 list_245))
	(x_55413 x_55419 nil_275 x_55419)))
(declare-fun rev_11 (list_245 list_245) Bool)
(assert (forall ((x_55420 list_245) (x_55421 list_245) (y_2296 Nat_584) (xs_659 list_245))
	(=>	(and (rev_11 x_55421 xs_659)
			(x_55413 x_55420 x_55421 (cons_245 y_2296 nil_275)))
		(rev_11 x_55420 (cons_245 y_2296 xs_659)))))
(assert (rev_11 nil_275 nil_275))
(assert (forall ((x_55424 list_245) (x_55425 list_245) (x_55426 list_245) (x_55427 list_245) (x_55428 list_245) (x_55416 list_245) (y_2297 list_245))
	(=>	(and true
			(diseqlist_245 x_55426 x_55428)
			(rev_11 x_55424 x_55416)
			(x_55413 x_55425 x_55424 y_2297)
			(rev_11 x_55426 x_55425)
			(rev_11 x_55427 y_2297)
			(x_55413 x_55428 x_55427 x_55416))
		false)))
(check-sat)
