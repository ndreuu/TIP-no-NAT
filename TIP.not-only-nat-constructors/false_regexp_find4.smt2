(set-logic HORN)
(declare-datatypes ((Bool_386 0)) (((false_386) (true_386))))
(declare-fun diseqBool_177 (Bool_386 Bool_386) Bool)
(declare-fun isfalse_177 (Bool_386) Bool)
(declare-fun istrue_177 (Bool_386) Bool)
(assert (isfalse_177 false_386))
(assert (istrue_177 true_386))
(assert (diseqBool_177 false_386 true_386))
(assert (diseqBool_177 true_386 false_386))
(declare-fun and_387 (Bool_386 Bool_386 Bool_386) Bool)
(declare-fun or_399 (Bool_386 Bool_386 Bool_386) Bool)
(declare-fun hence_386 (Bool_386 Bool_386 Bool_386) Bool)
(declare-fun not_391 (Bool_386 Bool_386) Bool)
(assert (and_387 false_386 false_386 false_386))
(assert (and_387 false_386 true_386 false_386))
(assert (and_387 false_386 false_386 true_386))
(assert (and_387 true_386 true_386 true_386))
(assert (or_399 false_386 false_386 false_386))
(assert (or_399 true_386 true_386 false_386))
(assert (or_399 true_386 false_386 true_386))
(assert (or_399 true_386 true_386 true_386))
(assert (hence_386 true_386 false_386 false_386))
(assert (hence_386 false_386 true_386 false_386))
(assert (hence_386 true_386 false_386 true_386))
(assert (hence_386 true_386 true_386 true_386))
(assert (not_391 true_386 false_386))
(assert (not_391 false_386 true_386))
(declare-datatypes ((T_6 0)) (((A_68) (B_58) (C_32))))
(declare-fun diseqT_6 (T_6 T_6) Bool)
(declare-fun isA_13 (T_6) Bool)
(declare-fun isB_13 (T_6) Bool)
(declare-fun isC_13 (T_6) Bool)
(assert (isA_13 A_68))
(assert (isB_13 B_58))
(assert (isC_13 C_32))
(assert (diseqT_6 A_68 B_58))
(assert (diseqT_6 A_68 C_32))
(assert (diseqT_6 B_58 A_68))
(assert (diseqT_6 C_32 A_68))
(assert (diseqT_6 B_58 C_32))
(assert (diseqT_6 C_32 B_58))
(declare-datatypes ((list_306 0)) (((nil_339) (cons_303 (head_606 T_6) (tail_609 list_306)))))
(declare-fun diseqlist_303 (list_306 list_306) Bool)
(declare-fun head_607 (T_6 list_306) Bool)
(declare-fun tail_610 (list_306 list_306) Bool)
(declare-fun isnil_339 (list_306) Bool)
(declare-fun iscons_303 (list_306) Bool)
(assert (forall ((x_60348 T_6) (x_60349 list_306))
	(head_607 x_60348 (cons_303 x_60348 x_60349))))
(assert (forall ((x_60348 T_6) (x_60349 list_306))
	(tail_610 x_60349 (cons_303 x_60348 x_60349))))
(assert (isnil_339 nil_339))
(assert (forall ((x_60351 T_6) (x_60352 list_306))
	(iscons_303 (cons_303 x_60351 x_60352))))
(assert (forall ((x_60353 T_6) (x_60354 list_306))
	(diseqlist_303 nil_339 (cons_303 x_60353 x_60354))))
(assert (forall ((x_60355 T_6) (x_60356 list_306))
	(diseqlist_303 (cons_303 x_60355 x_60356) nil_339)))
(assert (forall ((x_60357 T_6) (x_60358 list_306) (x_60359 T_6) (x_60360 list_306))
	(=> (diseqT_6 x_60357 x_60359) (diseqlist_303 (cons_303 x_60357 x_60358) (cons_303 x_60359 x_60360)))))
(assert (forall ((x_60357 T_6) (x_60358 list_306) (x_60359 T_6) (x_60360 list_306))
	(=> (diseqlist_303 x_60358 x_60360) (diseqlist_303 (cons_303 x_60357 x_60358) (cons_303 x_60359 x_60360)))))
(declare-datatypes ((R_486 0)) (((Nil_340) (Eps_40) (Atom_20 (projAtom_40 T_6)) (x_60299 (proj_68 R_486) (proj_69 R_486)) (x_60300 (proj_70 R_486) (proj_71 R_486)) (Star_20 (projStar_40 R_486)))))
(declare-fun diseqR_20 (R_486 R_486) Bool)
(declare-fun projAtom_41 (T_6 R_486) Bool)
(declare-fun proj_72 (R_486 R_486) Bool)
(declare-fun proj_73 (R_486 R_486) Bool)
(declare-fun proj_74 (R_486 R_486) Bool)
(declare-fun proj_75 (R_486 R_486) Bool)
(declare-fun projStar_41 (R_486 R_486) Bool)
(declare-fun isNil_340 (R_486) Bool)
(declare-fun isEps_20 (R_486) Bool)
(declare-fun isAtom_20 (R_486) Bool)
(declare-fun isx_31 (R_486) Bool)
(declare-fun isx_32 (R_486) Bool)
(declare-fun isStar_20 (R_486) Bool)
(assert (forall ((x_60363 T_6))
	(projAtom_41 x_60363 (Atom_20 x_60363))))
(assert (forall ((x_60365 R_486) (x_60366 R_486))
	(proj_72 x_60365 (x_60299 x_60365 x_60366))))
(assert (forall ((x_60365 R_486) (x_60366 R_486))
	(proj_73 x_60366 (x_60299 x_60365 x_60366))))
(assert (forall ((x_60368 R_486) (x_60369 R_486))
	(proj_74 x_60368 (x_60300 x_60368 x_60369))))
(assert (forall ((x_60368 R_486) (x_60369 R_486))
	(proj_75 x_60369 (x_60300 x_60368 x_60369))))
(assert (forall ((x_60371 R_486))
	(projStar_41 x_60371 (Star_20 x_60371))))
(assert (isNil_340 Nil_340))
(assert (isEps_20 Eps_40))
(assert (forall ((x_60373 T_6))
	(isAtom_20 (Atom_20 x_60373))))
(assert (forall ((x_60374 R_486) (x_60375 R_486))
	(isx_31 (x_60299 x_60374 x_60375))))
(assert (forall ((x_60376 R_486) (x_60377 R_486))
	(isx_32 (x_60300 x_60376 x_60377))))
(assert (forall ((x_60378 R_486))
	(isStar_20 (Star_20 x_60378))))
(assert (diseqR_20 Nil_340 Eps_40))
(assert (forall ((x_60379 T_6))
	(diseqR_20 Nil_340 (Atom_20 x_60379))))
(assert (forall ((x_60380 R_486) (x_60381 R_486))
	(diseqR_20 Nil_340 (x_60299 x_60380 x_60381))))
(assert (forall ((x_60382 R_486) (x_60383 R_486))
	(diseqR_20 Nil_340 (x_60300 x_60382 x_60383))))
(assert (forall ((x_60384 R_486))
	(diseqR_20 Nil_340 (Star_20 x_60384))))
(assert (diseqR_20 Eps_40 Nil_340))
(assert (forall ((x_60385 T_6))
	(diseqR_20 (Atom_20 x_60385) Nil_340)))
(assert (forall ((x_60386 R_486) (x_60387 R_486))
	(diseqR_20 (x_60299 x_60386 x_60387) Nil_340)))
(assert (forall ((x_60388 R_486) (x_60389 R_486))
	(diseqR_20 (x_60300 x_60388 x_60389) Nil_340)))
(assert (forall ((x_60390 R_486))
	(diseqR_20 (Star_20 x_60390) Nil_340)))
(assert (forall ((x_60391 T_6))
	(diseqR_20 Eps_40 (Atom_20 x_60391))))
(assert (forall ((x_60392 R_486) (x_60393 R_486))
	(diseqR_20 Eps_40 (x_60299 x_60392 x_60393))))
(assert (forall ((x_60394 R_486) (x_60395 R_486))
	(diseqR_20 Eps_40 (x_60300 x_60394 x_60395))))
(assert (forall ((x_60396 R_486))
	(diseqR_20 Eps_40 (Star_20 x_60396))))
(assert (forall ((x_60397 T_6))
	(diseqR_20 (Atom_20 x_60397) Eps_40)))
(assert (forall ((x_60398 R_486) (x_60399 R_486))
	(diseqR_20 (x_60299 x_60398 x_60399) Eps_40)))
(assert (forall ((x_60400 R_486) (x_60401 R_486))
	(diseqR_20 (x_60300 x_60400 x_60401) Eps_40)))
(assert (forall ((x_60402 R_486))
	(diseqR_20 (Star_20 x_60402) Eps_40)))
(assert (forall ((x_60403 T_6) (x_60404 R_486) (x_60405 R_486))
	(diseqR_20 (Atom_20 x_60403) (x_60299 x_60404 x_60405))))
(assert (forall ((x_60406 T_6) (x_60407 R_486) (x_60408 R_486))
	(diseqR_20 (Atom_20 x_60406) (x_60300 x_60407 x_60408))))
(assert (forall ((x_60409 T_6) (x_60410 R_486))
	(diseqR_20 (Atom_20 x_60409) (Star_20 x_60410))))
(assert (forall ((x_60411 R_486) (x_60412 R_486) (x_60413 T_6))
	(diseqR_20 (x_60299 x_60411 x_60412) (Atom_20 x_60413))))
(assert (forall ((x_60414 R_486) (x_60415 R_486) (x_60416 T_6))
	(diseqR_20 (x_60300 x_60414 x_60415) (Atom_20 x_60416))))
(assert (forall ((x_60417 R_486) (x_60418 T_6))
	(diseqR_20 (Star_20 x_60417) (Atom_20 x_60418))))
(assert (forall ((x_60419 R_486) (x_60420 R_486) (x_60421 R_486) (x_60422 R_486))
	(diseqR_20 (x_60299 x_60419 x_60420) (x_60300 x_60421 x_60422))))
(assert (forall ((x_60423 R_486) (x_60424 R_486) (x_60425 R_486))
	(diseqR_20 (x_60299 x_60423 x_60424) (Star_20 x_60425))))
(assert (forall ((x_60426 R_486) (x_60427 R_486) (x_60428 R_486) (x_60429 R_486))
	(diseqR_20 (x_60300 x_60426 x_60427) (x_60299 x_60428 x_60429))))
(assert (forall ((x_60430 R_486) (x_60431 R_486) (x_60432 R_486))
	(diseqR_20 (Star_20 x_60430) (x_60299 x_60431 x_60432))))
(assert (forall ((x_60433 R_486) (x_60434 R_486) (x_60435 R_486))
	(diseqR_20 (x_60300 x_60433 x_60434) (Star_20 x_60435))))
(assert (forall ((x_60436 R_486) (x_60437 R_486) (x_60438 R_486))
	(diseqR_20 (Star_20 x_60436) (x_60300 x_60437 x_60438))))
(assert (forall ((x_60439 T_6) (x_60440 T_6))
	(=> (diseqT_6 x_60439 x_60440) (diseqR_20 (Atom_20 x_60439) (Atom_20 x_60440)))))
(assert (forall ((x_60441 R_486) (x_60442 R_486) (x_60443 R_486) (x_60444 R_486))
	(=> (diseqR_20 x_60441 x_60443) (diseqR_20 (x_60299 x_60441 x_60442) (x_60299 x_60443 x_60444)))))
(assert (forall ((x_60441 R_486) (x_60442 R_486) (x_60443 R_486) (x_60444 R_486))
	(=> (diseqR_20 x_60442 x_60444) (diseqR_20 (x_60299 x_60441 x_60442) (x_60299 x_60443 x_60444)))))
(assert (forall ((x_60445 R_486) (x_60446 R_486) (x_60447 R_486) (x_60448 R_486))
	(=> (diseqR_20 x_60445 x_60447) (diseqR_20 (x_60300 x_60445 x_60446) (x_60300 x_60447 x_60448)))))
(assert (forall ((x_60445 R_486) (x_60446 R_486) (x_60447 R_486) (x_60448 R_486))
	(=> (diseqR_20 x_60446 x_60448) (diseqR_20 (x_60300 x_60445 x_60446) (x_60300 x_60447 x_60448)))))
(assert (forall ((x_60449 R_486) (x_60450 R_486))
	(=> (diseqR_20 x_60449 x_60450) (diseqR_20 (Star_20 x_60449) (Star_20 x_60450)))))
(declare-fun eps_41 (Bool_386 R_486) Bool)
(assert (forall ((y_2612 R_486))
	(eps_41 true_386 (Star_20 y_2612))))
(assert (forall ((x_60308 Bool_386) (x_60309 Bool_386) (x_60310 Bool_386) (r_487 R_486) (q_175 R_486))
	(=> (and (eps_41 x_60309 r_487) (eps_41 x_60310 q_175) (and_387 x_60308 x_60309 x_60310)) (eps_41 x_60308 (x_60300 r_487 q_175)))))
(assert (forall ((x_60311 Bool_386) (x_60312 Bool_386) (x_60313 Bool_386) (p_439 R_486) (q_176 R_486))
	(=> (and (eps_41 x_60312 p_439) (eps_41 x_60313 q_176) (or_399 x_60311 x_60312 x_60313)) (eps_41 x_60311 (x_60299 p_439 q_176)))))
(assert (eps_41 true_386 Eps_40))
(assert (forall ((x_60302 R_486) (x_60306 T_6))
	(eps_41 false_386 (Atom_20 x_60306))))
(assert (forall ((x_60302 R_486))
	(eps_41 false_386 Nil_340)))
(declare-fun step_20 (R_486 R_486 T_6) Bool)
(assert (forall ((x_60318 R_486) (p_440 R_486) (y_2613 T_6))
	(=> (step_20 x_60318 p_440 y_2613) (step_20 (x_60300 x_60318 (Star_20 p_440)) (Star_20 p_440) y_2613))))
(assert (forall ((x_60321 R_486) (x_60322 R_486) (r_488 R_486) (q_177 R_486) (y_2613 T_6))
	(=> (and (step_20 x_60321 r_488 y_2613) (step_20 x_60322 q_177 y_2613) (eps_41 true_386 r_488)) (step_20 (x_60299 (x_60300 x_60321 q_177) x_60322) (x_60300 r_488 q_177) y_2613))))
(assert (forall ((x_60325 R_486) (r_488 R_486) (q_177 R_486) (y_2613 T_6))
	(=> (and (step_20 x_60325 r_488 y_2613) (eps_41 false_386 r_488)) (step_20 (x_60299 (x_60300 x_60325 q_177) Nil_340) (x_60300 r_488 q_177) y_2613))))
(assert (forall ((x_60327 R_486) (x_60328 R_486) (p_441 R_486) (q_178 R_486) (y_2613 T_6))
	(=> (and (step_20 x_60327 p_441 y_2613) (step_20 x_60328 q_178 y_2613)) (step_20 (x_60299 x_60327 x_60328) (x_60299 p_441 q_178) y_2613))))
(assert (forall ((b_59 T_6))
	(step_20 Eps_40 (Atom_20 b_59) b_59)))
(assert (forall ((b_59 T_6) (y_2613 T_6))
	(=> (diseqT_6 b_59 y_2613) (step_20 Nil_340 (Atom_20 b_59) y_2613))))
(assert (forall ((x_60304 R_486) (y_2613 T_6))
	(step_20 Nil_340 Eps_40 y_2613)))
(assert (forall ((x_60304 R_486) (y_2613 T_6))
	(step_20 Nil_340 Nil_340 y_2613)))
(declare-fun rec_6 (Bool_386 R_486 list_306) Bool)
(assert (forall ((x_60333 Bool_386) (x_60334 R_486) (z_2335 T_6) (xs_773 list_306) (x_60305 R_486))
	(=> (and (step_20 x_60334 x_60305 z_2335) (rec_6 x_60333 x_60334 xs_773)) (rec_6 x_60333 x_60305 (cons_303 z_2335 xs_773)))))
(assert (forall ((x_60336 Bool_386) (x_60305 R_486))
	(=> (eps_41 x_60336 x_60305) (rec_6 x_60336 x_60305 nil_339))))
(assert (forall ((p_442 R_486))
	(=> (and (rec_6 true_386 p_442 (cons_303 A_68 (cons_303 B_58 (cons_303 B_58 (cons_303 A_68 nil_339)))))) false)))
(check-sat)
