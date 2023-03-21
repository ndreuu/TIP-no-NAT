
(set-logic HORN)
(declare-datatypes ((Bool_365 0)) (((false_365) (true_365))))
(declare-fun diseqBool_166 (Bool_365 Bool_365) Bool)
(declare-fun isfalse_166 (Bool_365) Bool)
(declare-fun istrue_166 (Bool_365) Bool)
(assert (isfalse_166 false_365))
(assert (istrue_166 true_365))
(assert (diseqBool_166 false_365 true_365))
(assert (diseqBool_166 true_365 false_365))
(declare-fun and_365 (Bool_365 Bool_365 Bool_365) Bool)
(declare-fun or_373 (Bool_365 Bool_365 Bool_365) Bool)
(declare-fun hence_365 (Bool_365 Bool_365 Bool_365) Bool)
(declare-fun not_370 (Bool_365 Bool_365) Bool)
(assert (and_365 false_365 false_365 false_365))
(assert (and_365 false_365 true_365 false_365))
(assert (and_365 false_365 false_365 true_365))
(assert (and_365 true_365 true_365 true_365))
(assert (or_373 false_365 false_365 false_365))
(assert (or_373 true_365 true_365 false_365))
(assert (or_373 true_365 false_365 true_365))
(assert (or_373 true_365 true_365 true_365))
(assert (hence_365 true_365 false_365 false_365))
(assert (hence_365 false_365 true_365 false_365))
(assert (hence_365 true_365 false_365 true_365))
(assert (hence_365 true_365 true_365 true_365))
(assert (not_370 true_365 false_365))
(assert (not_370 false_365 true_365))
(declare-datatypes ((list_263 0)) (((nil_293) (cons_263 (head_526 Bool_365) (tail_526 list_263)))))
(declare-fun diseqlist_263 (list_263 list_263) Bool)
(declare-fun head_529 (Bool_365 list_263) Bool)
(declare-fun tail_529 (list_263 list_263) Bool)
(declare-fun isnil_293 (list_263) Bool)
(declare-fun iscons_263 (list_263) Bool)
(assert (forall ((x_56569 Bool_365) (x_56570 list_263))
	(head_529 x_56569 (cons_263 x_56569 x_56570))))
(assert (forall ((x_56569 Bool_365) (x_56570 list_263))
	(tail_529 x_56570 (cons_263 x_56569 x_56570))))
(assert (isnil_293 nil_293))
(assert (forall ((x_56572 Bool_365) (x_56573 list_263))
	(iscons_263 (cons_263 x_56572 x_56573))))
(assert (forall ((x_56574 Bool_365) (x_56575 list_263))
	(diseqlist_263 nil_293 (cons_263 x_56574 x_56575))))
(assert (forall ((x_56576 Bool_365) (x_56577 list_263))
	(diseqlist_263 (cons_263 x_56576 x_56577) nil_293)))
(assert (forall ((x_56578 Bool_365) (x_56579 list_263) (x_56580 Bool_365) (x_56581 list_263))
	(=> (diseqBool_166 x_56578 x_56580) (diseqlist_263 (cons_263 x_56578 x_56579) (cons_263 x_56580 x_56581)))))
(assert (forall ((x_56578 Bool_365) (x_56579 list_263) (x_56580 Bool_365) (x_56581 list_263))
	(=> (diseqlist_263 x_56579 x_56581) (diseqlist_263 (cons_263 x_56578 x_56579) (cons_263 x_56580 x_56581)))))
(declare-datatypes ((T_0 0)) (((A_53) (B_34) (C_21))))
(declare-fun diseqT_0 (T_0 T_0) Bool)
(declare-fun isA_7 (T_0) Bool)
(declare-fun isB_7 (T_0) Bool)
(declare-fun isC_7 (T_0) Bool)
(assert (isA_7 A_53))
(assert (isB_7 B_34))
(assert (isC_7 C_21))
(assert (diseqT_0 A_53 B_34))
(assert (diseqT_0 A_53 C_21))
(assert (diseqT_0 B_34 A_53))
(assert (diseqT_0 C_21 A_53))
(assert (diseqT_0 B_34 C_21))
(assert (diseqT_0 C_21 B_34))
(declare-datatypes ((list_264 0)) (((nil_294) (cons_264 (head_527 T_0) (tail_527 list_264)))))
(declare-fun diseqlist_264 (list_264 list_264) Bool)
(declare-fun head_530 (T_0 list_264) Bool)
(declare-fun tail_530 (list_264 list_264) Bool)
(declare-fun isnil_294 (list_264) Bool)
(declare-fun iscons_264 (list_264) Bool)
(assert (forall ((x_56586 T_0) (x_56587 list_264))
	(head_530 x_56586 (cons_264 x_56586 x_56587))))
(assert (forall ((x_56586 T_0) (x_56587 list_264))
	(tail_530 x_56587 (cons_264 x_56586 x_56587))))
(assert (isnil_294 nil_294))
(assert (forall ((x_56589 T_0) (x_56590 list_264))
	(iscons_264 (cons_264 x_56589 x_56590))))
(assert (forall ((x_56591 T_0) (x_56592 list_264))
	(diseqlist_264 nil_294 (cons_264 x_56591 x_56592))))
(assert (forall ((x_56593 T_0) (x_56594 list_264))
	(diseqlist_264 (cons_264 x_56593 x_56594) nil_294)))
(assert (forall ((x_56595 T_0) (x_56596 list_264) (x_56597 T_0) (x_56598 list_264))
	(=> (diseqT_0 x_56595 x_56597) (diseqlist_264 (cons_264 x_56595 x_56596) (cons_264 x_56597 x_56598)))))
(assert (forall ((x_56595 T_0) (x_56596 list_264) (x_56597 T_0) (x_56598 list_264))
	(=> (diseqlist_264 x_56596 x_56598) (diseqlist_264 (cons_264 x_56595 x_56596) (cons_264 x_56597 x_56598)))))
(declare-datatypes ((pair_94 0)) (((pair_95 (projpair_188 list_264) (projpair_189 list_264)))))
(declare-fun diseqpair_47 (pair_94 pair_94) Bool)
(declare-fun projpair_190 (list_264 pair_94) Bool)
(declare-fun projpair_191 (list_264 pair_94) Bool)
(declare-fun ispair_47 (pair_94) Bool)
(assert (forall ((x_56599 list_264) (x_56600 list_264))
	(projpair_190 x_56599 (pair_95 x_56599 x_56600))))
(assert (forall ((x_56599 list_264) (x_56600 list_264))
	(projpair_191 x_56600 (pair_95 x_56599 x_56600))))
(assert (forall ((x_56602 list_264) (x_56603 list_264))
	(ispair_47 (pair_95 x_56602 x_56603))))
(assert (forall ((x_56604 list_264) (x_56605 list_264) (x_56606 list_264) (x_56607 list_264))
	(=> (diseqlist_264 x_56604 x_56606) (diseqpair_47 (pair_95 x_56604 x_56605) (pair_95 x_56606 x_56607)))))
(assert (forall ((x_56604 list_264) (x_56605 list_264) (x_56606 list_264) (x_56607 list_264))
	(=> (diseqlist_264 x_56605 x_56607) (diseqpair_47 (pair_95 x_56604 x_56605) (pair_95 x_56606 x_56607)))))
(declare-datatypes ((list_265 0)) (((nil_295) (cons_265 (head_528 pair_94) (tail_528 list_265)))))
(declare-fun diseqlist_265 (list_265 list_265) Bool)
(declare-fun head_531 (pair_94 list_265) Bool)
(declare-fun tail_531 (list_265 list_265) Bool)
(declare-fun isnil_295 (list_265) Bool)
(declare-fun iscons_265 (list_265) Bool)
(assert (forall ((x_56609 pair_94) (x_56610 list_265))
	(head_531 x_56609 (cons_265 x_56609 x_56610))))
(assert (forall ((x_56609 pair_94) (x_56610 list_265))
	(tail_531 x_56610 (cons_265 x_56609 x_56610))))
(assert (isnil_295 nil_295))
(assert (forall ((x_56612 pair_94) (x_56613 list_265))
	(iscons_265 (cons_265 x_56612 x_56613))))
(assert (forall ((x_56614 pair_94) (x_56615 list_265))
	(diseqlist_265 nil_295 (cons_265 x_56614 x_56615))))
(assert (forall ((x_56616 pair_94) (x_56617 list_265))
	(diseqlist_265 (cons_265 x_56616 x_56617) nil_295)))
(assert (forall ((x_56618 pair_94) (x_56619 list_265) (x_56620 pair_94) (x_56621 list_265))
	(=> (diseqpair_47 x_56618 x_56620) (diseqlist_265 (cons_265 x_56618 x_56619) (cons_265 x_56620 x_56621)))))
(assert (forall ((x_56618 pair_94) (x_56619 list_265) (x_56620 pair_94) (x_56621 list_265))
	(=> (diseqlist_265 x_56619 x_56621) (diseqlist_265 (cons_265 x_56618 x_56619) (cons_265 x_56620 x_56621)))))
(declare-datatypes ((R_438 0)) (((Nil_296) (Eps_28) (Atom_14 (projAtom_28 T_0)) (x_56473 (proj_20 R_438) (proj_21 R_438)) (x_56474 (proj_22 R_438) (proj_23 R_438)) (Star_14 (projStar_28 R_438)))))
(declare-fun diseqR_14 (R_438 R_438) Bool)
(declare-fun projAtom_29 (T_0 R_438) Bool)
(declare-fun proj_24 (R_438 R_438) Bool)
(declare-fun proj_25 (R_438 R_438) Bool)
(declare-fun proj_26 (R_438 R_438) Bool)
(declare-fun proj_27 (R_438 R_438) Bool)
(declare-fun projStar_29 (R_438 R_438) Bool)
(declare-fun isNil_296 (R_438) Bool)
(declare-fun isEps_14 (R_438) Bool)
(declare-fun isAtom_14 (R_438) Bool)
(declare-fun isx_19 (R_438) Bool)
(declare-fun isx_20 (R_438) Bool)
(declare-fun isStar_14 (R_438) Bool)
(assert (forall ((x_56624 T_0))
	(projAtom_29 x_56624 (Atom_14 x_56624))))
(assert (forall ((x_56626 R_438) (x_56627 R_438))
	(proj_24 x_56626 (x_56473 x_56626 x_56627))))
(assert (forall ((x_56626 R_438) (x_56627 R_438))
	(proj_25 x_56627 (x_56473 x_56626 x_56627))))
(assert (forall ((x_56629 R_438) (x_56630 R_438))
	(proj_26 x_56629 (x_56474 x_56629 x_56630))))
(assert (forall ((x_56629 R_438) (x_56630 R_438))
	(proj_27 x_56630 (x_56474 x_56629 x_56630))))
(assert (forall ((x_56632 R_438))
	(projStar_29 x_56632 (Star_14 x_56632))))
(assert (isNil_296 Nil_296))
(assert (isEps_14 Eps_28))
(assert (forall ((x_56634 T_0))
	(isAtom_14 (Atom_14 x_56634))))
(assert (forall ((x_56635 R_438) (x_56636 R_438))
	(isx_19 (x_56473 x_56635 x_56636))))
(assert (forall ((x_56637 R_438) (x_56638 R_438))
	(isx_20 (x_56474 x_56637 x_56638))))
(assert (forall ((x_56639 R_438))
	(isStar_14 (Star_14 x_56639))))
(assert (diseqR_14 Nil_296 Eps_28))
(assert (forall ((x_56640 T_0))
	(diseqR_14 Nil_296 (Atom_14 x_56640))))
(assert (forall ((x_56641 R_438) (x_56642 R_438))
	(diseqR_14 Nil_296 (x_56473 x_56641 x_56642))))
(assert (forall ((x_56643 R_438) (x_56644 R_438))
	(diseqR_14 Nil_296 (x_56474 x_56643 x_56644))))
(assert (forall ((x_56645 R_438))
	(diseqR_14 Nil_296 (Star_14 x_56645))))
(assert (diseqR_14 Eps_28 Nil_296))
(assert (forall ((x_56646 T_0))
	(diseqR_14 (Atom_14 x_56646) Nil_296)))
(assert (forall ((x_56647 R_438) (x_56648 R_438))
	(diseqR_14 (x_56473 x_56647 x_56648) Nil_296)))
(assert (forall ((x_56649 R_438) (x_56650 R_438))
	(diseqR_14 (x_56474 x_56649 x_56650) Nil_296)))
(assert (forall ((x_56651 R_438))
	(diseqR_14 (Star_14 x_56651) Nil_296)))
(assert (forall ((x_56652 T_0))
	(diseqR_14 Eps_28 (Atom_14 x_56652))))
(assert (forall ((x_56653 R_438) (x_56654 R_438))
	(diseqR_14 Eps_28 (x_56473 x_56653 x_56654))))
(assert (forall ((x_56655 R_438) (x_56656 R_438))
	(diseqR_14 Eps_28 (x_56474 x_56655 x_56656))))
(assert (forall ((x_56657 R_438))
	(diseqR_14 Eps_28 (Star_14 x_56657))))
(assert (forall ((x_56658 T_0))
	(diseqR_14 (Atom_14 x_56658) Eps_28)))
(assert (forall ((x_56659 R_438) (x_56660 R_438))
	(diseqR_14 (x_56473 x_56659 x_56660) Eps_28)))
(assert (forall ((x_56661 R_438) (x_56662 R_438))
	(diseqR_14 (x_56474 x_56661 x_56662) Eps_28)))
(assert (forall ((x_56663 R_438))
	(diseqR_14 (Star_14 x_56663) Eps_28)))
(assert (forall ((x_56664 T_0) (x_56665 R_438) (x_56666 R_438))
	(diseqR_14 (Atom_14 x_56664) (x_56473 x_56665 x_56666))))
(assert (forall ((x_56667 T_0) (x_56668 R_438) (x_56669 R_438))
	(diseqR_14 (Atom_14 x_56667) (x_56474 x_56668 x_56669))))
(assert (forall ((x_56670 T_0) (x_56671 R_438))
	(diseqR_14 (Atom_14 x_56670) (Star_14 x_56671))))
(assert (forall ((x_56672 R_438) (x_56673 R_438) (x_56674 T_0))
	(diseqR_14 (x_56473 x_56672 x_56673) (Atom_14 x_56674))))
(assert (forall ((x_56675 R_438) (x_56676 R_438) (x_56677 T_0))
	(diseqR_14 (x_56474 x_56675 x_56676) (Atom_14 x_56677))))
(assert (forall ((x_56678 R_438) (x_56679 T_0))
	(diseqR_14 (Star_14 x_56678) (Atom_14 x_56679))))
(assert (forall ((x_56680 R_438) (x_56681 R_438) (x_56682 R_438) (x_56683 R_438))
	(diseqR_14 (x_56473 x_56680 x_56681) (x_56474 x_56682 x_56683))))
(assert (forall ((x_56684 R_438) (x_56685 R_438) (x_56686 R_438))
	(diseqR_14 (x_56473 x_56684 x_56685) (Star_14 x_56686))))
(assert (forall ((x_56687 R_438) (x_56688 R_438) (x_56689 R_438) (x_56690 R_438))
	(diseqR_14 (x_56474 x_56687 x_56688) (x_56473 x_56689 x_56690))))
(assert (forall ((x_56691 R_438) (x_56692 R_438) (x_56693 R_438))
	(diseqR_14 (Star_14 x_56691) (x_56473 x_56692 x_56693))))
(assert (forall ((x_56694 R_438) (x_56695 R_438) (x_56696 R_438))
	(diseqR_14 (x_56474 x_56694 x_56695) (Star_14 x_56696))))
(assert (forall ((x_56697 R_438) (x_56698 R_438) (x_56699 R_438))
	(diseqR_14 (Star_14 x_56697) (x_56474 x_56698 x_56699))))
(assert (forall ((x_56700 T_0) (x_56701 T_0))
	(=> (diseqT_0 x_56700 x_56701) (diseqR_14 (Atom_14 x_56700) (Atom_14 x_56701)))))
(assert (forall ((x_56702 R_438) (x_56703 R_438) (x_56704 R_438) (x_56705 R_438))
	(=> (diseqR_14 x_56702 x_56704) (diseqR_14 (x_56473 x_56702 x_56703) (x_56473 x_56704 x_56705)))))
(assert (forall ((x_56702 R_438) (x_56703 R_438) (x_56704 R_438) (x_56705 R_438))
	(=> (diseqR_14 x_56703 x_56705) (diseqR_14 (x_56473 x_56702 x_56703) (x_56473 x_56704 x_56705)))))
(assert (forall ((x_56706 R_438) (x_56707 R_438) (x_56708 R_438) (x_56709 R_438))
	(=> (diseqR_14 x_56706 x_56708) (diseqR_14 (x_56474 x_56706 x_56707) (x_56474 x_56708 x_56709)))))
(assert (forall ((x_56706 R_438) (x_56707 R_438) (x_56708 R_438) (x_56709 R_438))
	(=> (diseqR_14 x_56707 x_56709) (diseqR_14 (x_56474 x_56706 x_56707) (x_56474 x_56708 x_56709)))))
(assert (forall ((x_56710 R_438) (x_56711 R_438))
	(=> (diseqR_14 x_56710 x_56711) (diseqR_14 (Star_14 x_56710) (Star_14 x_56711)))))
(declare-fun splits_0 (list_265 T_0 list_265) Bool)
(assert (forall ((x_56494 list_265) (bs_0 list_264) (cs_0 list_264) (x_56476 list_265) (x_56475 T_0))
	(=> (splits_0 x_56494 x_56475 x_56476) (splits_0 (cons_265 (pair_95 (cons_264 x_56475 bs_0) cs_0) x_56494) x_56475 (cons_265 (pair_95 bs_0 cs_0) x_56476)))))
(assert (forall ((x_56475 T_0))
	(splits_0 nil_295 x_56475 nil_295)))
(declare-fun splits_1 (list_265 list_264) Bool)
(assert (forall ((x_56497 list_265) (x_56498 list_265) (y_2405 T_0) (xs_697 list_264))
	(=> (and (splits_1 x_56497 xs_697) (splits_0 x_56498 y_2405 x_56497)) (splits_1 (cons_265 (pair_95 nil_294 (cons_264 y_2405 xs_697)) x_56498) (cons_264 y_2405 xs_697)))))
(assert (splits_1 (cons_265 (pair_95 nil_294 nil_294) nil_295) nil_294))
(declare-fun or_372 (Bool_365 list_263) Bool)
(assert (forall ((x_56500 Bool_365) (x_56501 Bool_365) (y_2406 Bool_365) (xs_698 list_263))
	(=> (and (or_372 x_56501 xs_698) (or_373 x_56500 y_2406 x_56501)) (or_372 x_56500 (cons_263 y_2406 xs_698)))))
(assert (or_372 false_365 nil_293))
(declare-fun eps_29 (Bool_365 R_438) Bool)
(assert (forall ((y_2407 R_438))
	(eps_29 true_365 (Star_14 y_2407))))
(assert (forall ((x_56504 Bool_365) (x_56505 Bool_365) (x_56506 Bool_365) (r_439 R_438) (q_131 R_438))
	(=> (and (eps_29 x_56505 r_439) (eps_29 x_56506 q_131) (and_365 x_56504 x_56505 x_56506)) (eps_29 x_56504 (x_56474 r_439 q_131)))))
(assert (forall ((x_56507 Bool_365) (x_56508 Bool_365) (x_56509 Bool_365) (p_403 R_438) (q_132 R_438))
	(=> (and (eps_29 x_56508 p_403) (eps_29 x_56509 q_132) (or_373 x_56507 x_56508 x_56509)) (eps_29 x_56507 (x_56473 p_403 q_132)))))
(assert (eps_29 true_365 Eps_28))
(assert (forall ((x_56480 R_438) (x_56492 T_0))
	(eps_29 false_365 (Atom_14 x_56492))))
(assert (forall ((x_56480 R_438))
	(eps_29 false_365 Nil_296)))
(declare-fun step_14 (R_438 R_438 T_0) Bool)
(assert (forall ((x_56514 R_438) (p_404 R_438) (y_2408 T_0))
	(=> (step_14 x_56514 p_404 y_2408) (step_14 (x_56474 x_56514 (Star_14 p_404)) (Star_14 p_404) y_2408))))
(assert (forall ((x_56517 R_438) (x_56518 R_438) (r_440 R_438) (q_133 R_438) (y_2408 T_0))
	(=> (and (step_14 x_56517 r_440 y_2408) (step_14 x_56518 q_133 y_2408) (eps_29 true_365 r_440)) (step_14 (x_56473 (x_56474 x_56517 q_133) x_56518) (x_56474 r_440 q_133) y_2408))))
(assert (forall ((x_56521 R_438) (r_440 R_438) (q_133 R_438) (y_2408 T_0))
	(=> (and (step_14 x_56521 r_440 y_2408) (eps_29 false_365 r_440)) (step_14 (x_56473 (x_56474 x_56521 q_133) Nil_296) (x_56474 r_440 q_133) y_2408))))
(assert (forall ((x_56523 R_438) (x_56524 R_438) (p_405 R_438) (q_134 R_438) (y_2408 T_0))
	(=> (and (step_14 x_56523 p_405 y_2408) (step_14 x_56524 q_134 y_2408)) (step_14 (x_56473 x_56523 x_56524) (x_56473 p_405 q_134) y_2408))))
(assert (forall ((b_35 T_0))
	(step_14 Eps_28 (Atom_14 b_35) b_35)))
(assert (forall ((b_35 T_0) (y_2408 T_0))
	(=> (diseqT_0 b_35 y_2408) (step_14 Nil_296 (Atom_14 b_35) y_2408))))
(assert (forall ((x_56482 R_438) (y_2408 T_0))
	(step_14 Nil_296 Eps_28 y_2408)))
(assert (forall ((x_56482 R_438) (y_2408 T_0))
	(step_14 Nil_296 Nil_296 y_2408)))
(declare-fun rec_0 (Bool_365 R_438 list_264) Bool)
(assert (forall ((x_56529 Bool_365) (x_56530 R_438) (z_2171 T_0) (xs_699 list_264) (x_56483 R_438))
	(=> (and (step_14 x_56530 x_56483 z_2171) (rec_0 x_56529 x_56530 xs_699)) (rec_0 x_56529 x_56483 (cons_264 z_2171 xs_699)))))
(assert (forall ((x_56532 Bool_365) (x_56483 R_438))
	(=> (eps_29 x_56532 x_56483) (rec_0 x_56532 x_56483 nil_294))))
(declare-fun reck_0 (Bool_365 R_438 list_264) Bool)
(declare-fun reck_1 (list_263 R_438 R_438 list_265) Bool)
(assert (forall ((x_56535 Bool_365) (x_56485 T_0) (x_56486 list_264) (p_406 R_438))
	(=> (and (rec_0 x_56535 (x_56474 p_406 (Star_14 p_406)) (cons_264 x_56485 x_56486)) (eps_29 false_365 p_406)) (reck_0 x_56535 (Star_14 p_406) (cons_264 x_56485 x_56486)))))
(assert (forall ((x_56485 T_0) (x_56486 list_264) (p_406 R_438))
	(=> (eps_29 true_365 p_406) (reck_0 false_365 (Star_14 p_406) (cons_264 x_56485 x_56486)))))
(assert (forall ((p_406 R_438))
	(reck_0 true_365 (Star_14 p_406) nil_294)))
(assert (forall ((x_56540 Bool_365) (x_56541 list_265) (x_56542 list_263) (r_441 R_438) (q_135 R_438) (y_2410 list_264))
	(=> (and (splits_1 x_56541 y_2410) (reck_1 x_56542 r_441 q_135 x_56541) (or_372 x_56540 x_56542)) (reck_0 x_56540 (x_56474 r_441 q_135) y_2410))))
(assert (forall ((x_56544 Bool_365) (x_56545 Bool_365) (x_56546 Bool_365) (p_407 R_438) (q_136 R_438) (y_2410 list_264))
	(=> (and (reck_0 x_56545 p_407 y_2410) (reck_0 x_56546 q_136 y_2410) (or_373 x_56544 x_56545 x_56546)) (reck_0 x_56544 (x_56473 p_407 q_136) y_2410))))
(assert (forall ((x_56488 T_0) (x_56489 list_264) (b_36 T_0) (c_22 T_0))
	(reck_0 false_365 (Atom_14 c_22) (cons_264 b_36 (cons_264 x_56488 x_56489)))))
(assert (forall ((b_36 T_0))
	(reck_0 true_365 (Atom_14 b_36) (cons_264 b_36 nil_294))))
(assert (forall ((b_36 T_0) (c_22 T_0))
	(=> (diseqT_0 c_22 b_36) (reck_0 false_365 (Atom_14 c_22) (cons_264 b_36 nil_294)))))
(assert (forall ((c_22 T_0))
	(reck_0 false_365 (Atom_14 c_22) nil_294)))
(assert (forall ((z_2172 T_0) (x_56490 list_264))
	(reck_0 false_365 Eps_28 (cons_264 z_2172 x_56490))))
(assert (reck_0 true_365 Eps_28 nil_294))
(assert (forall ((y_2410 list_264))
	(reck_0 false_365 Nil_296 y_2410)))
(assert (forall ((x_56564 Bool_365) (x_56555 Bool_365) (x_56556 Bool_365) (x_56557 list_263) (l_43 list_264) (r_442 list_264) (z_2173 list_265) (p_408 R_438) (q_137 R_438))
	(=> (and (reck_0 x_56555 p_408 l_43) (rec_0 x_56556 q_137 r_442) (reck_1 x_56557 p_408 q_137 z_2173) (and_365 x_56564 x_56555 x_56556)) (reck_1 (cons_263 x_56564 x_56557) p_408 q_137 (cons_265 (pair_95 l_43 r_442) z_2173)))))
(assert (forall ((p_408 R_438) (q_137 R_438))
	(reck_1 nil_293 p_408 q_137 nil_295)))
(assert (forall ((p_409 R_438))
	(=> (and true (reck_0 true_365 p_409 (cons_264 A_53 (cons_264 B_34 (cons_264 A_53 (cons_264 B_34 (cons_264 B_34 nil_294))))))) false)))
(check-sat)