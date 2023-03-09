(set-logic HORN)
(declare-datatypes ((Bool_410 0)) (((false_410 ) (true_410 ))))
(declare-fun diseqBool_197 (Bool_410 Bool_410) Bool)
(declare-fun isfalse_197 (Bool_410) Bool)
(declare-fun istrue_197 (Bool_410) Bool)
(assert (isfalse_197 false_410))
(assert (istrue_197 true_410))
(assert (diseqBool_197 false_410 true_410))
(assert (diseqBool_197 true_410 false_410))
(declare-fun and_414 (Bool_410 Bool_410 Bool_410) Bool)
(declare-fun or_424 (Bool_410 Bool_410 Bool_410) Bool)
(declare-fun hence_410 (Bool_410 Bool_410 Bool_410) Bool)
(declare-fun not_415 (Bool_410 Bool_410) Bool)
(assert (and_414 false_410 false_410 false_410))
(assert (and_414 false_410 true_410 false_410))
(assert (and_414 false_410 false_410 true_410))
(assert (and_414 true_410 true_410 true_410))
(assert (or_424 false_410 false_410 false_410))
(assert (or_424 true_410 true_410 false_410))
(assert (or_424 true_410 false_410 true_410))
(assert (or_424 true_410 true_410 true_410))
(assert (hence_410 true_410 false_410 false_410))
(assert (hence_410 false_410 true_410 false_410))
(assert (hence_410 true_410 false_410 true_410))
(assert (hence_410 true_410 true_410 true_410))
(assert (not_415 true_410 false_410))
(assert (not_415 false_410 true_410))
(declare-datatypes ((T_20 0)) (((A_92 ) (B_90 ) (C_51 ))))
(declare-fun diseqT_19 (T_20 T_20) Bool)
(declare-fun isA_26 (T_20) Bool)
(declare-fun isB_26 (T_20) Bool)
(declare-fun isC_26 (T_20) Bool)
(assert (isA_26 A_92))
(assert (isB_26 B_90))
(assert (isC_26 C_51))
(assert (diseqT_19 A_92 B_90))
(assert (diseqT_19 A_92 C_51))
(assert (diseqT_19 B_90 A_92))
(assert (diseqT_19 C_51 A_92))
(assert (diseqT_19 B_90 C_51))
(assert (diseqT_19 C_51 B_90))
(declare-datatypes ((list_345 0)) (((nil_389 ) (cons_340 (head_680 T_20) (tail_685 list_345)))))
(declare-fun diseqlist_340 (list_345 list_345) Bool)
(declare-fun head_681 (T_20 list_345) Bool)
(declare-fun tail_686 (list_345 list_345) Bool)
(declare-fun isnil_389 (list_345) Bool)
(declare-fun iscons_340 (list_345) Bool)
(assert (forall ((x_87628 T_20) (x_87629 list_345))
	(head_681 x_87628 (cons_340 x_87628 x_87629))))
(assert (forall ((x_87628 T_20) (x_87629 list_345))
	(tail_686 x_87629 (cons_340 x_87628 x_87629))))
(assert (isnil_389 nil_389))
(assert (forall ((x_87631 T_20) (x_87632 list_345))
	(iscons_340 (cons_340 x_87631 x_87632))))
(assert (forall ((x_87633 T_20) (x_87634 list_345))
	(diseqlist_340 nil_389 (cons_340 x_87633 x_87634))))
(assert (forall ((x_87635 T_20) (x_87636 list_345))
	(diseqlist_340 (cons_340 x_87635 x_87636) nil_389)))
(assert (forall ((x_87637 T_20) (x_87638 list_345) (x_87639 T_20) (x_87640 list_345))
	(=> (diseqT_19 x_87637 x_87639)
	    (diseqlist_340 (cons_340 x_87637 x_87638) (cons_340 x_87639 x_87640)))))
(assert (forall ((x_87637 T_20) (x_87638 list_345) (x_87639 T_20) (x_87640 list_345))
	(=> (diseqlist_340 x_87638 x_87640)
	    (diseqlist_340 (cons_340 x_87637 x_87638) (cons_340 x_87639 x_87640)))))
(declare-datatypes ((R_557 0)) (((Nil_390 ) (Eps_66 ) (Atom_33 (projAtom_66 T_20)) (x_87578 (proj_192 R_557) (proj_193 R_557)) (x_87579 (proj_194 R_557) (proj_195 R_557)) (Star_33 (projStar_66 R_557)))))
(declare-fun diseqR_33 (R_557 R_557) Bool)
(declare-fun projAtom_67 (T_20 R_557) Bool)
(declare-fun proj_196 (R_557 R_557) Bool)
(declare-fun proj_197 (R_557 R_557) Bool)
(declare-fun proj_198 (R_557 R_557) Bool)
(declare-fun proj_199 (R_557 R_557) Bool)
(declare-fun projStar_67 (R_557 R_557) Bool)
(declare-fun isNil_390 (R_557) Bool)
(declare-fun isEps_33 (R_557) Bool)
(declare-fun isAtom_33 (R_557) Bool)
(declare-fun isx_62 (R_557) Bool)
(declare-fun isx_63 (R_557) Bool)
(declare-fun isStar_33 (R_557) Bool)
(assert (forall ((x_87643 T_20))
	(projAtom_67 x_87643 (Atom_33 x_87643))))
(assert (forall ((x_87645 R_557) (x_87646 R_557))
	(proj_196 x_87645 (x_87578 x_87645 x_87646))))
(assert (forall ((x_87645 R_557) (x_87646 R_557))
	(proj_197 x_87646 (x_87578 x_87645 x_87646))))
(assert (forall ((x_87648 R_557) (x_87649 R_557))
	(proj_198 x_87648 (x_87579 x_87648 x_87649))))
(assert (forall ((x_87648 R_557) (x_87649 R_557))
	(proj_199 x_87649 (x_87579 x_87648 x_87649))))
(assert (forall ((x_87651 R_557))
	(projStar_67 x_87651 (Star_33 x_87651))))
(assert (isNil_390 Nil_390))
(assert (isEps_33 Eps_66))
(assert (forall ((x_87653 T_20))
	(isAtom_33 (Atom_33 x_87653))))
(assert (forall ((x_87654 R_557) (x_87655 R_557))
	(isx_62 (x_87578 x_87654 x_87655))))
(assert (forall ((x_87656 R_557) (x_87657 R_557))
	(isx_63 (x_87579 x_87656 x_87657))))
(assert (forall ((x_87658 R_557))
	(isStar_33 (Star_33 x_87658))))
(assert (diseqR_33 Nil_390 Eps_66))
(assert (forall ((x_87659 T_20))
	(diseqR_33 Nil_390 (Atom_33 x_87659))))
(assert (forall ((x_87660 R_557) (x_87661 R_557))
	(diseqR_33 Nil_390 (x_87578 x_87660 x_87661))))
(assert (forall ((x_87662 R_557) (x_87663 R_557))
	(diseqR_33 Nil_390 (x_87579 x_87662 x_87663))))
(assert (forall ((x_87664 R_557))
	(diseqR_33 Nil_390 (Star_33 x_87664))))
(assert (diseqR_33 Eps_66 Nil_390))
(assert (forall ((x_87665 T_20))
	(diseqR_33 (Atom_33 x_87665) Nil_390)))
(assert (forall ((x_87666 R_557) (x_87667 R_557))
	(diseqR_33 (x_87578 x_87666 x_87667) Nil_390)))
(assert (forall ((x_87668 R_557) (x_87669 R_557))
	(diseqR_33 (x_87579 x_87668 x_87669) Nil_390)))
(assert (forall ((x_87670 R_557))
	(diseqR_33 (Star_33 x_87670) Nil_390)))
(assert (forall ((x_87671 T_20))
	(diseqR_33 Eps_66 (Atom_33 x_87671))))
(assert (forall ((x_87672 R_557) (x_87673 R_557))
	(diseqR_33 Eps_66 (x_87578 x_87672 x_87673))))
(assert (forall ((x_87674 R_557) (x_87675 R_557))
	(diseqR_33 Eps_66 (x_87579 x_87674 x_87675))))
(assert (forall ((x_87676 R_557))
	(diseqR_33 Eps_66 (Star_33 x_87676))))
(assert (forall ((x_87677 T_20))
	(diseqR_33 (Atom_33 x_87677) Eps_66)))
(assert (forall ((x_87678 R_557) (x_87679 R_557))
	(diseqR_33 (x_87578 x_87678 x_87679) Eps_66)))
(assert (forall ((x_87680 R_557) (x_87681 R_557))
	(diseqR_33 (x_87579 x_87680 x_87681) Eps_66)))
(assert (forall ((x_87682 R_557))
	(diseqR_33 (Star_33 x_87682) Eps_66)))
(assert (forall ((x_87683 T_20) (x_87684 R_557) (x_87685 R_557))
	(diseqR_33 (Atom_33 x_87683) (x_87578 x_87684 x_87685))))
(assert (forall ((x_87686 T_20) (x_87687 R_557) (x_87688 R_557))
	(diseqR_33 (Atom_33 x_87686) (x_87579 x_87687 x_87688))))
(assert (forall ((x_87689 T_20) (x_87690 R_557))
	(diseqR_33 (Atom_33 x_87689) (Star_33 x_87690))))
(assert (forall ((x_87691 R_557) (x_87692 R_557) (x_87693 T_20))
	(diseqR_33 (x_87578 x_87691 x_87692) (Atom_33 x_87693))))
(assert (forall ((x_87694 R_557) (x_87695 R_557) (x_87696 T_20))
	(diseqR_33 (x_87579 x_87694 x_87695) (Atom_33 x_87696))))
(assert (forall ((x_87697 R_557) (x_87698 T_20))
	(diseqR_33 (Star_33 x_87697) (Atom_33 x_87698))))
(assert (forall ((x_87699 R_557) (x_87700 R_557) (x_87701 R_557) (x_87702 R_557))
	(diseqR_33 (x_87578 x_87699 x_87700) (x_87579 x_87701 x_87702))))
(assert (forall ((x_87703 R_557) (x_87704 R_557) (x_87705 R_557))
	(diseqR_33 (x_87578 x_87703 x_87704) (Star_33 x_87705))))
(assert (forall ((x_87706 R_557) (x_87707 R_557) (x_87708 R_557) (x_87709 R_557))
	(diseqR_33 (x_87579 x_87706 x_87707) (x_87578 x_87708 x_87709))))
(assert (forall ((x_87710 R_557) (x_87711 R_557) (x_87712 R_557))
	(diseqR_33 (Star_33 x_87710) (x_87578 x_87711 x_87712))))
(assert (forall ((x_87713 R_557) (x_87714 R_557) (x_87715 R_557))
	(diseqR_33 (x_87579 x_87713 x_87714) (Star_33 x_87715))))
(assert (forall ((x_87716 R_557) (x_87717 R_557) (x_87718 R_557))
	(diseqR_33 (Star_33 x_87716) (x_87579 x_87717 x_87718))))
(assert (forall ((x_87719 T_20) (x_87720 T_20))
	(=> (diseqT_19 x_87719 x_87720)
	    (diseqR_33 (Atom_33 x_87719) (Atom_33 x_87720)))))
(assert (forall ((x_87721 R_557) (x_87722 R_557) (x_87723 R_557) (x_87724 R_557))
	(=> (diseqR_33 x_87721 x_87723)
	    (diseqR_33 (x_87578 x_87721 x_87722) (x_87578 x_87723 x_87724)))))
(assert (forall ((x_87721 R_557) (x_87722 R_557) (x_87723 R_557) (x_87724 R_557))
	(=> (diseqR_33 x_87722 x_87724)
	    (diseqR_33 (x_87578 x_87721 x_87722) (x_87578 x_87723 x_87724)))))
(assert (forall ((x_87725 R_557) (x_87726 R_557) (x_87727 R_557) (x_87728 R_557))
	(=> (diseqR_33 x_87725 x_87727)
	    (diseqR_33 (x_87579 x_87725 x_87726) (x_87579 x_87727 x_87728)))))
(assert (forall ((x_87725 R_557) (x_87726 R_557) (x_87727 R_557) (x_87728 R_557))
	(=> (diseqR_33 x_87726 x_87728)
	    (diseqR_33 (x_87579 x_87725 x_87726) (x_87579 x_87727 x_87728)))))
(assert (forall ((x_87729 R_557) (x_87730 R_557))
	(=> (diseqR_33 x_87729 x_87730)
	    (diseqR_33 (Star_33 x_87729) (Star_33 x_87730)))))
(declare-fun eps_67 (Bool_410 R_557) Bool)
(assert (forall ((y_2844 R_557))
	(eps_67 true_410 (Star_33 y_2844))))
(assert (forall ((x_87587 Bool_410) (x_87588 Bool_410) (x_87589 Bool_410) (r_558 R_557) (q_254 R_557))
	(=>	(and (eps_67 x_87588 r_558)
			(eps_67 x_87589 q_254)
			(and_414 x_87587 x_87588 x_87589))
		(eps_67 x_87587 (x_87579 r_558 q_254)))))
(assert (forall ((x_87590 Bool_410) (x_87591 Bool_410) (x_87592 Bool_410) (p_504 R_557) (q_255 R_557))
	(=>	(and (eps_67 x_87591 p_504)
			(eps_67 x_87592 q_255)
			(or_424 x_87590 x_87591 x_87592))
		(eps_67 x_87590 (x_87578 p_504 q_255)))))
(assert (eps_67 true_410 Eps_66))
(assert (forall ((x_87581 R_557) (x_87585 T_20))
	(eps_67 false_410 (Atom_33 x_87585))))
(assert (forall ((x_87581 R_557))
	(eps_67 false_410 Nil_390)))
(declare-fun step_33 (R_557 R_557 T_20) Bool)
(assert (forall ((x_87597 R_557) (p_505 R_557) (y_2845 T_20))
	(=> (step_33 x_87597 p_505 y_2845)
	    (step_33 (x_87579 x_87597 (Star_33 p_505)) (Star_33 p_505) y_2845))))
(assert (forall ((x_87600 R_557) (x_87601 R_557) (r_559 R_557) (q_256 R_557) (y_2845 T_20))
	(=>	(and (step_33 x_87600 r_559 y_2845)
			(step_33 x_87601 q_256 y_2845)
			(eps_67 true_410 r_559))
		(step_33 (x_87578 (x_87579 x_87600 q_256) x_87601) (x_87579 r_559 q_256) y_2845))))
(assert (forall ((x_87604 R_557) (r_559 R_557) (q_256 R_557) (y_2845 T_20))
	(=>	(and (step_33 x_87604 r_559 y_2845)
			(eps_67 false_410 r_559))
		(step_33 (x_87578 (x_87579 x_87604 q_256) Nil_390) (x_87579 r_559 q_256) y_2845))))
(assert (forall ((x_87606 R_557) (x_87607 R_557) (p_506 R_557) (q_257 R_557) (y_2845 T_20))
	(=>	(and (step_33 x_87606 p_506 y_2845)
			(step_33 x_87607 q_257 y_2845))
		(step_33 (x_87578 x_87606 x_87607) (x_87578 p_506 q_257) y_2845))))
(assert (forall ((b_91 T_20))
	(step_33 Eps_66 (Atom_33 b_91) b_91)))
(assert (forall ((b_91 T_20) (y_2845 T_20))
	(=> (diseqT_19 b_91 y_2845)
	    (step_33 Nil_390 (Atom_33 b_91) y_2845))))
(assert (forall ((x_87583 R_557) (y_2845 T_20))
	(step_33 Nil_390 Eps_66 y_2845)))
(assert (forall ((x_87583 R_557) (y_2845 T_20))
	(step_33 Nil_390 Nil_390 y_2845)))
(declare-fun rec_19 (Bool_410 R_557 list_345) Bool)
(assert (forall ((x_87612 Bool_410) (x_87613 R_557) (z_2499 T_20) (xs_830 list_345) (x_87584 R_557))
	(=>	(and (step_33 x_87613 x_87584 z_2499)
			(rec_19 x_87612 x_87613 xs_830))
		(rec_19 x_87612 x_87584 (cons_340 z_2499 xs_830)))))
(assert (forall ((x_87615 Bool_410) (x_87584 R_557))
	(=> (eps_67 x_87615 x_87584)
	    (rec_19 x_87615 x_87584 nil_389))))
(assert (forall ((x_87617 Bool_410) (x_87618 Bool_410) (p_507 R_557) (q_258 R_557) (a_93 T_20) (b_92 T_20))
	(=>	(and true
			(diseqBool_197 x_87617 x_87618)
			(rec_19 x_87617 (x_87579 p_507 q_258) (cons_340 a_93 (cons_340 b_92 nil_389)))
			(rec_19 x_87618 (x_87579 q_258 p_507) (cons_340 a_93 (cons_340 b_92 nil_389))))
		false)))
(check-sat)
