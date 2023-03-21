
(set-logic HORN)
(define-fun Z_1382 () Int 0)
(define-fun S_330 ((x Int)) Int (+ x 1))
(declare-fun unS_463 (Int Int) Bool)
(declare-fun isZ_304 (Int) Bool)
(declare-fun isS_304 (Int) Bool)
(assert (forall ((x_42469 Int))
	(unS_463 x_42469 (S_330 x_42469))))
(assert (isZ_304 Z_1382))
(assert (forall ((x_42471 Int))
	(isS_304 (S_330 x_42471))))
(declare-fun add_248 (Int Int Int) Bool)
(declare-fun minus_245 (Int Int Int) Bool)
(declare-fun le_231 (Int Int) Bool)
(declare-fun ge_231 (Int Int) Bool)
(declare-fun lt_247 (Int Int) Bool)
(declare-fun gt_234 (Int Int) Bool)
(declare-fun mult_231 (Int Int Int) Bool)
(declare-fun div_231 (Int Int Int) Bool)
(declare-fun mod_233 (Int Int Int) Bool)
(assert (forall ((y_1523 Int))
	(add_248 y_1523 Z_1382 y_1523)))
(assert (forall ((x_42462 Int) (y_1523 Int) (r_287 Int))
	(=> (add_248 r_287 x_42462 y_1523) (add_248 (S_330 r_287) (S_330 x_42462) y_1523))))
(assert (forall ((y_1523 Int))
	(minus_245 Z_1382 Z_1382 y_1523)))
(assert (forall ((x_42462 Int) (y_1523 Int) (r_287 Int))
	(=> (minus_245 r_287 x_42462 y_1523) (minus_245 (S_330 r_287) (S_330 x_42462) y_1523))))
(assert (forall ((y_1523 Int))
	(le_231 Z_1382 y_1523)))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (le_231 x_42462 y_1523) (le_231 (S_330 x_42462) (S_330 y_1523)))))
(assert (forall ((y_1523 Int))
	(ge_231 y_1523 Z_1382)))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (ge_231 x_42462 y_1523) (ge_231 (S_330 x_42462) (S_330 y_1523)))))
(assert (forall ((y_1523 Int))
	(lt_247 Z_1382 (S_330 y_1523))))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (lt_247 x_42462 y_1523) (lt_247 (S_330 x_42462) (S_330 y_1523)))))
(assert (forall ((y_1523 Int))
	(gt_234 (S_330 y_1523) Z_1382)))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (gt_234 x_42462 y_1523) (gt_234 (S_330 x_42462) (S_330 y_1523)))))
(assert (forall ((y_1523 Int))
	(mult_231 Z_1382 Z_1382 y_1523)))
(assert (forall ((x_42462 Int) (y_1523 Int) (r_287 Int) (z_1383 Int))
	(=> (and (mult_231 r_287 x_42462 y_1523) (add_248 z_1383 r_287 y_1523)) (mult_231 z_1383 (S_330 x_42462) y_1523))))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (lt_247 x_42462 y_1523) (div_231 Z_1382 x_42462 y_1523))))
(assert (forall ((x_42462 Int) (y_1523 Int) (r_287 Int) (z_1383 Int))
	(=> (and (ge_231 x_42462 y_1523) (minus_245 z_1383 x_42462 y_1523) (div_231 r_287 z_1383 y_1523)) (div_231 (S_330 r_287) x_42462 y_1523))))
(assert (forall ((x_42462 Int) (y_1523 Int))
	(=> (lt_247 x_42462 y_1523) (mod_233 x_42462 x_42462 y_1523))))
(assert (forall ((x_42462 Int) (y_1523 Int) (r_287 Int) (z_1383 Int))
	(=> (and (ge_231 x_42462 y_1523) (minus_245 z_1383 x_42462 y_1523) (mod_233 r_287 z_1383 y_1523)) (mod_233 r_287 x_42462 y_1523))))
(declare-datatypes ((Bool_231 0)) (((false_231) (true_231))))
(declare-fun diseqBool_106 (Bool_231 Bool_231) Bool)
(declare-fun isfalse_106 (Bool_231) Bool)
(declare-fun istrue_106 (Bool_231) Bool)
(assert (isfalse_106 false_231))
(assert (istrue_106 true_231))
(assert (diseqBool_106 false_231 true_231))
(assert (diseqBool_106 true_231 false_231))
(declare-fun and_231 (Bool_231 Bool_231 Bool_231) Bool)
(declare-fun or_235 (Bool_231 Bool_231 Bool_231) Bool)
(declare-fun hence_231 (Bool_231 Bool_231 Bool_231) Bool)
(declare-fun not_234 (Bool_231 Bool_231) Bool)
(assert (and_231 false_231 false_231 false_231))
(assert (and_231 false_231 true_231 false_231))
(assert (and_231 false_231 false_231 true_231))
(assert (and_231 true_231 true_231 true_231))
(assert (or_235 false_231 false_231 false_231))
(assert (or_235 true_231 true_231 false_231))
(assert (or_235 true_231 false_231 true_231))
(assert (or_235 true_231 true_231 true_231))
(assert (hence_231 true_231 false_231 false_231))
(assert (hence_231 false_231 true_231 false_231))
(assert (hence_231 true_231 false_231 true_231))
(assert (hence_231 true_231 true_231 true_231))
(assert (not_234 true_231 false_231))
(assert (not_234 false_231 true_231))
(declare-datatypes ((list_158 0)) (((nil_180) (cons_158 (head_316 Int) (tail_316 list_158)))))
(declare-fun diseqlist_158 (list_158 list_158) Bool)
(declare-fun head_317 (Int list_158) Bool)
(declare-fun tail_317 (list_158 list_158) Bool)
(declare-fun isnil_180 (list_158) Bool)
(declare-fun iscons_158 (list_158) Bool)
(assert (forall ((x_42479 Int) (x_42480 list_158))
	(head_317 x_42479 (cons_158 x_42479 x_42480))))
(assert (forall ((x_42479 Int) (x_42480 list_158))
	(tail_317 x_42480 (cons_158 x_42479 x_42480))))
(assert (isnil_180 nil_180))
(assert (forall ((x_42482 Int) (x_42483 list_158))
	(iscons_158 (cons_158 x_42482 x_42483))))
(assert (forall ((x_42484 Int) (x_42485 list_158))
	(diseqlist_158 nil_180 (cons_158 x_42484 x_42485))))
(assert (forall ((x_42486 Int) (x_42487 list_158))
	(diseqlist_158 (cons_158 x_42486 x_42487) nil_180)))
(assert (forall ((x_42488 Int) (x_42489 list_158) (x_42490 Int) (x_42491 list_158))
	(=> (distinct x_42488 x_42490) (diseqlist_158 (cons_158 x_42488 x_42489) (cons_158 x_42490 x_42491)))))
(assert (forall ((x_42488 Int) (x_42489 list_158) (x_42490 Int) (x_42491 list_158))
	(=> (diseqlist_158 x_42489 x_42491) (diseqlist_158 (cons_158 x_42488 x_42489) (cons_158 x_42490 x_42491)))))
(declare-fun take_38 (list_158 Int list_158) Bool)
(assert (forall ((x_42409 Int) (y_1516 list_158))
	(=> (le_231 x_42409 Z_1382) (take_38 nil_180 x_42409 y_1516))))
(assert (forall ((x_42463 Int) (x_42423 list_158) (z_1377 Int) (xs_444 list_158) (x_42409 Int))
	(=> (and (gt_234 x_42409 Z_1382) (take_38 x_42423 x_42463 xs_444) (minus_245 x_42463 x_42409 (S_330 Z_1382))) (take_38 (cons_158 z_1377 x_42423) x_42409 (cons_158 z_1377 xs_444)))))
(assert (forall ((x_42409 Int) (y_1516 list_158))
	(=> (le_231 x_42409 Z_1382) (take_38 nil_180 x_42409 y_1516))))
(assert (forall ((x_42409 Int))
	(=> (gt_234 x_42409 Z_1382) (take_38 nil_180 x_42409 nil_180))))
(declare-fun ordered_15 (Bool_231 list_158) Bool)
(assert (forall ((x_42426 Bool_231) (y_1518 Int) (xs_445 list_158) (y_1517 Int))
	(=> (and (le_231 y_1517 y_1518) (ordered_15 x_42426 (cons_158 y_1518 xs_445))) (ordered_15 x_42426 (cons_158 y_1517 (cons_158 y_1518 xs_445))))))
(assert (forall ((y_1518 Int) (xs_445 list_158) (y_1517 Int))
	(=> (gt_234 y_1517 y_1518) (ordered_15 false_231 (cons_158 y_1517 (cons_158 y_1518 xs_445))))))
(assert (forall ((y_1517 Int))
	(ordered_15 true_231 (cons_158 y_1517 nil_180))))
(assert (ordered_15 true_231 nil_180))
(declare-fun nmsorttdhalf_1 (Int Int) Bool)
(assert (nmsorttdhalf_1 Z_1382 (S_330 Z_1382)))
(assert (=> (distinct Z_1382 (S_330 Z_1382)) (nmsorttdhalf_1 Z_1382 Z_1382)))
(assert (nmsorttdhalf_1 Z_1382 (S_330 Z_1382)))
(assert (forall ((x_42465 Int) (x_42434 Int) (x_42435 Int) (x_42411 Int))
	(=> (and (distinct x_42411 (S_330 Z_1382)) (distinct x_42411 Z_1382) (nmsorttdhalf_1 x_42435 x_42465) (minus_245 x_42465 x_42411 (S_330 (S_330 Z_1382))) (add_248 x_42434 (S_330 Z_1382) x_42435)) (nmsorttdhalf_1 x_42434 x_42411))))
(declare-fun lmerge_7 (list_158 list_158 list_158) Bool)
(assert (forall ((x_42437 list_158) (x_42414 Int) (x_42415 list_158) (z_1379 Int) (x_42413 list_158))
	(=> (and (le_231 z_1379 x_42414) (lmerge_7 x_42437 x_42413 (cons_158 x_42414 x_42415))) (lmerge_7 (cons_158 z_1379 x_42437) (cons_158 z_1379 x_42413) (cons_158 x_42414 x_42415)))))
(assert (forall ((x_42439 list_158) (x_42414 Int) (x_42415 list_158) (z_1379 Int) (x_42413 list_158))
	(=> (and (gt_234 z_1379 x_42414) (lmerge_7 x_42439 (cons_158 z_1379 x_42413) x_42415)) (lmerge_7 (cons_158 x_42414 x_42439) (cons_158 z_1379 x_42413) (cons_158 x_42414 x_42415)))))
(assert (forall ((z_1379 Int) (x_42413 list_158))
	(lmerge_7 (cons_158 z_1379 x_42413) (cons_158 z_1379 x_42413) nil_180)))
(assert (forall ((x_42441 list_158))
	(lmerge_7 x_42441 nil_180 x_42441)))
(declare-fun length_26 (Int list_158) Bool)
(assert (forall ((x_42442 Int) (x_42443 Int) (y_1520 Int) (l_28 list_158))
	(=> (and (length_26 x_42443 l_28) (add_248 x_42442 (S_330 Z_1382) x_42443)) (length_26 x_42442 (cons_158 y_1520 l_28)))))
(assert (length_26 Z_1382 nil_180))
(declare-fun drop_40 (list_158 Int list_158) Bool)
(assert (forall ((x_42445 list_158) (x_42417 Int))
	(=> (le_231 x_42417 Z_1382) (drop_40 x_42445 x_42417 x_42445))))
(assert (forall ((x_42467 Int) (x_42446 list_158) (z_1380 Int) (xs_446 list_158) (x_42417 Int))
	(=> (and (gt_234 x_42417 Z_1382) (drop_40 x_42446 x_42467 xs_446) (minus_245 x_42467 x_42417 (S_330 Z_1382))) (drop_40 x_42446 x_42417 (cons_158 z_1380 xs_446)))))
(assert (forall ((x_42448 list_158) (x_42417 Int))
	(=> (le_231 x_42417 Z_1382) (drop_40 x_42448 x_42417 x_42448))))
(assert (forall ((x_42417 Int))
	(=> (gt_234 x_42417 Z_1382) (drop_40 nil_180 x_42417 nil_180))))
(declare-fun nmsorttd_1 (list_158 list_158) Bool)
(assert (forall ((x_42452 list_158) (x_42453 list_158) (x_42454 list_158) (x_42455 list_158) (x_42456 list_158) (x_42450 Int) (k_8 Int) (x_42419 Int) (x_42420 list_158) (y_1522 Int))
	(=> (and (take_38 x_42453 k_8 (cons_158 y_1522 (cons_158 x_42419 x_42420))) (nmsorttd_1 x_42454 x_42453) (drop_40 x_42455 k_8 (cons_158 y_1522 (cons_158 x_42419 x_42420))) (nmsorttd_1 x_42456 x_42455) (lmerge_7 x_42452 x_42454 x_42456) (length_26 x_42450 (cons_158 y_1522 (cons_158 x_42419 x_42420))) (nmsorttdhalf_1 k_8 x_42450)) (nmsorttd_1 x_42452 (cons_158 y_1522 (cons_158 x_42419 x_42420))))))
(assert (forall ((y_1522 Int))
	(nmsorttd_1 (cons_158 y_1522 nil_180) (cons_158 y_1522 nil_180))))
(assert (nmsorttd_1 nil_180 nil_180))
(assert (forall ((x_42460 list_158) (xs_447 list_158))
	(=> (and true (nmsorttd_1 x_42460 xs_447) (ordered_15 false_231 x_42460)) false)))
(check-sat)