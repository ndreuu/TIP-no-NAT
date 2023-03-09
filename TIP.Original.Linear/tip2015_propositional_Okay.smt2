(set-logic HORN)
(declare-datatypes ((Nat_443 0)) (((Z_1570 ) (S_366 (unS_526 Nat_443)))))
(declare-fun diseqNat_443 (Nat_443 Nat_443) Bool)
(declare-fun unS_527 (Nat_443 Nat_443) Bool)
(declare-fun isZ_336 (Nat_443) Bool)
(declare-fun isS_336 (Nat_443) Bool)
(assert (forall ((x_49626 Nat_443))
	(unS_527 x_49626 (S_366 x_49626))))
(assert (isZ_336 Z_1570))
(assert (forall ((x_49628 Nat_443))
	(isS_336 (S_366 x_49628))))
(assert (forall ((x_49629 Nat_443))
	(diseqNat_443 Z_1570 (S_366 x_49629))))
(assert (forall ((x_49630 Nat_443))
	(diseqNat_443 (S_366 x_49630) Z_1570)))
(assert (forall ((x_49631 Nat_443) (x_49632 Nat_443))
	(=> (diseqNat_443 x_49631 x_49632)
	    (diseqNat_443 (S_366 x_49631) (S_366 x_49632)))))
(declare-fun add_283 (Nat_443 Nat_443 Nat_443) Bool)
(declare-fun minus_279 (Nat_443 Nat_443 Nat_443) Bool)
(declare-fun le_263 (Nat_443 Nat_443) Bool)
(declare-fun ge_263 (Nat_443 Nat_443) Bool)
(declare-fun lt_280 (Nat_443 Nat_443) Bool)
(declare-fun gt_266 (Nat_443 Nat_443) Bool)
(declare-fun mult_263 (Nat_443 Nat_443 Nat_443) Bool)
(declare-fun div_263 (Nat_443 Nat_443 Nat_443) Bool)
(declare-fun mod_265 (Nat_443 Nat_443 Nat_443) Bool)
(assert (forall ((y_1759 Nat_443))
	(add_283 y_1759 Z_1570 y_1759)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443) (r_331 Nat_443))
	(=> (add_283 r_331 x_49624 y_1759)
	    (add_283 (S_366 r_331) (S_366 x_49624) y_1759))))
(assert (forall ((y_1759 Nat_443))
	(minus_279 Z_1570 Z_1570 y_1759)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443) (r_331 Nat_443))
	(=> (minus_279 r_331 x_49624 y_1759)
	    (minus_279 (S_366 r_331) (S_366 x_49624) y_1759))))
(assert (forall ((y_1759 Nat_443))
	(le_263 Z_1570 y_1759)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (le_263 x_49624 y_1759)
	    (le_263 (S_366 x_49624) (S_366 y_1759)))))
(assert (forall ((y_1759 Nat_443))
	(ge_263 y_1759 Z_1570)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (ge_263 x_49624 y_1759)
	    (ge_263 (S_366 x_49624) (S_366 y_1759)))))
(assert (forall ((y_1759 Nat_443))
	(lt_280 Z_1570 (S_366 y_1759))))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (lt_280 x_49624 y_1759)
	    (lt_280 (S_366 x_49624) (S_366 y_1759)))))
(assert (forall ((y_1759 Nat_443))
	(gt_266 (S_366 y_1759) Z_1570)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (gt_266 x_49624 y_1759)
	    (gt_266 (S_366 x_49624) (S_366 y_1759)))))
(assert (forall ((y_1759 Nat_443))
	(mult_263 Z_1570 Z_1570 y_1759)))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443) (r_331 Nat_443) (z_1571 Nat_443))
	(=>	(and (mult_263 r_331 x_49624 y_1759)
			(add_283 z_1571 r_331 y_1759))
		(mult_263 z_1571 (S_366 x_49624) y_1759))))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (lt_280 x_49624 y_1759)
	    (div_263 Z_1570 x_49624 y_1759))))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443) (r_331 Nat_443) (z_1571 Nat_443))
	(=>	(and (ge_263 x_49624 y_1759)
			(minus_279 z_1571 x_49624 y_1759)
			(div_263 r_331 z_1571 y_1759))
		(div_263 (S_366 r_331) x_49624 y_1759))))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443))
	(=> (lt_280 x_49624 y_1759)
	    (mod_265 x_49624 x_49624 y_1759))))
(assert (forall ((x_49624 Nat_443) (y_1759 Nat_443) (r_331 Nat_443) (z_1571 Nat_443))
	(=>	(and (ge_263 x_49624 y_1759)
			(minus_279 z_1571 x_49624 y_1759)
			(mod_265 r_331 z_1571 y_1759))
		(mod_265 r_331 x_49624 y_1759))))
(declare-datatypes ((Bool_263 0)) (((false_263 ) (true_263 ))))
(declare-fun diseqBool_122 (Bool_263 Bool_263) Bool)
(declare-fun isfalse_122 (Bool_263) Bool)
(declare-fun istrue_122 (Bool_263) Bool)
(assert (isfalse_122 false_263))
(assert (istrue_122 true_263))
(assert (diseqBool_122 false_263 true_263))
(assert (diseqBool_122 true_263 false_263))
(declare-fun and_263 (Bool_263 Bool_263 Bool_263) Bool)
(declare-fun or_269 (Bool_263 Bool_263 Bool_263) Bool)
(declare-fun hence_263 (Bool_263 Bool_263 Bool_263) Bool)
(declare-fun not_267 (Bool_263 Bool_263) Bool)
(assert (and_263 false_263 false_263 false_263))
(assert (and_263 false_263 true_263 false_263))
(assert (and_263 false_263 false_263 true_263))
(assert (and_263 true_263 true_263 true_263))
(assert (or_269 false_263 false_263 false_263))
(assert (or_269 true_263 true_263 false_263))
(assert (or_269 true_263 false_263 true_263))
(assert (or_269 true_263 true_263 true_263))
(assert (hence_263 true_263 false_263 false_263))
(assert (hence_263 false_263 true_263 false_263))
(assert (hence_263 true_263 false_263 true_263))
(assert (hence_263 true_263 true_263 true_263))
(assert (not_267 true_263 false_263))
(assert (not_267 false_263 true_263))
(declare-datatypes ((pair_80 0)) (((pair_81 (projpair_160 Nat_443) (projpair_161 Bool_263)))))
(declare-fun diseqpair_40 (pair_80 pair_80) Bool)
(declare-fun projpair_162 (Nat_443 pair_80) Bool)
(declare-fun projpair_163 (Bool_263 pair_80) Bool)
(declare-fun ispair_40 (pair_80) Bool)
(assert (forall ((x_49635 Nat_443) (x_49636 Bool_263))
	(projpair_162 x_49635 (pair_81 x_49635 x_49636))))
(assert (forall ((x_49635 Nat_443) (x_49636 Bool_263))
	(projpair_163 x_49636 (pair_81 x_49635 x_49636))))
(assert (forall ((x_49638 Nat_443) (x_49639 Bool_263))
	(ispair_40 (pair_81 x_49638 x_49639))))
(assert (forall ((x_49640 Nat_443) (x_49641 Bool_263) (x_49642 Nat_443) (x_49643 Bool_263))
	(=> (diseqNat_443 x_49640 x_49642)
	    (diseqpair_40 (pair_81 x_49640 x_49641) (pair_81 x_49642 x_49643)))))
(assert (forall ((x_49640 Nat_443) (x_49641 Bool_263) (x_49642 Nat_443) (x_49643 Bool_263))
	(=> (diseqBool_122 x_49641 x_49643)
	    (diseqpair_40 (pair_81 x_49640 x_49641) (pair_81 x_49642 x_49643)))))
(declare-datatypes ((list_188 0)) (((nil_214 ) (cons_188 (head_376 Bool_263) (tail_376 list_188)))))
(declare-fun diseqlist_188 (list_188 list_188) Bool)
(declare-fun head_380 (Bool_263 list_188) Bool)
(declare-fun tail_380 (list_188 list_188) Bool)
(declare-fun isnil_214 (list_188) Bool)
(declare-fun iscons_188 (list_188) Bool)
(assert (forall ((x_49645 Bool_263) (x_49646 list_188))
	(head_380 x_49645 (cons_188 x_49645 x_49646))))
(assert (forall ((x_49645 Bool_263) (x_49646 list_188))
	(tail_380 x_49646 (cons_188 x_49645 x_49646))))
(assert (isnil_214 nil_214))
(assert (forall ((x_49648 Bool_263) (x_49649 list_188))
	(iscons_188 (cons_188 x_49648 x_49649))))
(assert (forall ((x_49650 Bool_263) (x_49651 list_188))
	(diseqlist_188 nil_214 (cons_188 x_49650 x_49651))))
(assert (forall ((x_49652 Bool_263) (x_49653 list_188))
	(diseqlist_188 (cons_188 x_49652 x_49653) nil_214)))
(assert (forall ((x_49654 Bool_263) (x_49655 list_188) (x_49656 Bool_263) (x_49657 list_188))
	(=> (diseqBool_122 x_49654 x_49656)
	    (diseqlist_188 (cons_188 x_49654 x_49655) (cons_188 x_49656 x_49657)))))
(assert (forall ((x_49654 Bool_263) (x_49655 list_188) (x_49656 Bool_263) (x_49657 list_188))
	(=> (diseqlist_188 x_49655 x_49657)
	    (diseqlist_188 (cons_188 x_49654 x_49655) (cons_188 x_49656 x_49657)))))
(declare-datatypes ((list_189 0)) (((nil_215 ) (cons_189 (head_377 Nat_443) (tail_377 list_189)))))
(declare-fun diseqlist_189 (list_189 list_189) Bool)
(declare-fun head_381 (Nat_443 list_189) Bool)
(declare-fun tail_381 (list_189 list_189) Bool)
(declare-fun isnil_215 (list_189) Bool)
(declare-fun iscons_189 (list_189) Bool)
(assert (forall ((x_49659 Nat_443) (x_49660 list_189))
	(head_381 x_49659 (cons_189 x_49659 x_49660))))
(assert (forall ((x_49659 Nat_443) (x_49660 list_189))
	(tail_381 x_49660 (cons_189 x_49659 x_49660))))
(assert (isnil_215 nil_215))
(assert (forall ((x_49662 Nat_443) (x_49663 list_189))
	(iscons_189 (cons_189 x_49662 x_49663))))
(assert (forall ((x_49664 Nat_443) (x_49665 list_189))
	(diseqlist_189 nil_215 (cons_189 x_49664 x_49665))))
(assert (forall ((x_49666 Nat_443) (x_49667 list_189))
	(diseqlist_189 (cons_189 x_49666 x_49667) nil_215)))
(assert (forall ((x_49668 Nat_443) (x_49669 list_189) (x_49670 Nat_443) (x_49671 list_189))
	(=> (diseqNat_443 x_49668 x_49670)
	    (diseqlist_189 (cons_189 x_49668 x_49669) (cons_189 x_49670 x_49671)))))
(assert (forall ((x_49668 Nat_443) (x_49669 list_189) (x_49670 Nat_443) (x_49671 list_189))
	(=> (diseqlist_189 x_49669 x_49671)
	    (diseqlist_189 (cons_189 x_49668 x_49669) (cons_189 x_49670 x_49671)))))
(declare-datatypes ((list_190 0)) (((nil_216 ) (cons_190 (head_378 pair_80) (tail_378 list_190)))))
(declare-fun diseqlist_190 (list_190 list_190) Bool)
(declare-fun head_382 (pair_80 list_190) Bool)
(declare-fun tail_382 (list_190 list_190) Bool)
(declare-fun isnil_216 (list_190) Bool)
(declare-fun iscons_190 (list_190) Bool)
(assert (forall ((x_49673 pair_80) (x_49674 list_190))
	(head_382 x_49673 (cons_190 x_49673 x_49674))))
(assert (forall ((x_49673 pair_80) (x_49674 list_190))
	(tail_382 x_49674 (cons_190 x_49673 x_49674))))
(assert (isnil_216 nil_216))
(assert (forall ((x_49676 pair_80) (x_49677 list_190))
	(iscons_190 (cons_190 x_49676 x_49677))))
(assert (forall ((x_49678 pair_80) (x_49679 list_190))
	(diseqlist_190 nil_216 (cons_190 x_49678 x_49679))))
(assert (forall ((x_49680 pair_80) (x_49681 list_190))
	(diseqlist_190 (cons_190 x_49680 x_49681) nil_216)))
(assert (forall ((x_49682 pair_80) (x_49683 list_190) (x_49684 pair_80) (x_49685 list_190))
	(=> (diseqpair_40 x_49682 x_49684)
	    (diseqlist_190 (cons_190 x_49682 x_49683) (cons_190 x_49684 x_49685)))))
(assert (forall ((x_49682 pair_80) (x_49683 list_190) (x_49684 pair_80) (x_49685 list_190))
	(=> (diseqlist_190 x_49683 x_49685)
	    (diseqlist_190 (cons_190 x_49682 x_49683) (cons_190 x_49684 x_49685)))))
(declare-datatypes ((list_191 0)) (((nil_217 ) (cons_191 (head_379 list_190) (tail_379 list_191)))))
(declare-fun diseqlist_191 (list_191 list_191) Bool)
(declare-fun head_383 (list_190 list_191) Bool)
(declare-fun tail_383 (list_191 list_191) Bool)
(declare-fun isnil_217 (list_191) Bool)
(declare-fun iscons_191 (list_191) Bool)
(assert (forall ((x_49687 list_190) (x_49688 list_191))
	(head_383 x_49687 (cons_191 x_49687 x_49688))))
(assert (forall ((x_49687 list_190) (x_49688 list_191))
	(tail_383 x_49688 (cons_191 x_49687 x_49688))))
(assert (isnil_217 nil_217))
(assert (forall ((x_49690 list_190) (x_49691 list_191))
	(iscons_191 (cons_191 x_49690 x_49691))))
(assert (forall ((x_49692 list_190) (x_49693 list_191))
	(diseqlist_191 nil_217 (cons_191 x_49692 x_49693))))
(assert (forall ((x_49694 list_190) (x_49695 list_191))
	(diseqlist_191 (cons_191 x_49694 x_49695) nil_217)))
(assert (forall ((x_49696 list_190) (x_49697 list_191) (x_49698 list_190) (x_49699 list_191))
	(=> (diseqlist_190 x_49696 x_49698)
	    (diseqlist_191 (cons_191 x_49696 x_49697) (cons_191 x_49698 x_49699)))))
(assert (forall ((x_49696 list_190) (x_49697 list_191) (x_49698 list_190) (x_49699 list_191))
	(=> (diseqlist_191 x_49697 x_49699)
	    (diseqlist_191 (cons_191 x_49696 x_49697) (cons_191 x_49698 x_49699)))))
(declare-datatypes ((Form_3 0)) (((x_49524 (proj_12 Form_3) (proj_13 Form_3)) (Not_266 (projNot_6 Form_3)) (Var_3 (projVar_6 Nat_443)))))
(declare-fun diseqForm_3 (Form_3 Form_3) Bool)
(declare-fun proj_14 (Form_3 Form_3) Bool)
(declare-fun proj_15 (Form_3 Form_3) Bool)
(declare-fun projNot_7 (Form_3 Form_3) Bool)
(declare-fun projVar_7 (Nat_443 Form_3) Bool)
(declare-fun isx_17 (Form_3) Bool)
(declare-fun isNot_3 (Form_3) Bool)
(declare-fun isVar_3 (Form_3) Bool)
(assert (forall ((x_49700 Form_3) (x_49701 Form_3))
	(proj_14 x_49700 (x_49524 x_49700 x_49701))))
(assert (forall ((x_49700 Form_3) (x_49701 Form_3))
	(proj_15 x_49701 (x_49524 x_49700 x_49701))))
(assert (forall ((x_49703 Form_3))
	(projNot_7 x_49703 (Not_266 x_49703))))
(assert (forall ((x_49705 Nat_443))
	(projVar_7 x_49705 (Var_3 x_49705))))
(assert (forall ((x_49707 Form_3) (x_49708 Form_3))
	(isx_17 (x_49524 x_49707 x_49708))))
(assert (forall ((x_49709 Form_3))
	(isNot_3 (Not_266 x_49709))))
(assert (forall ((x_49710 Nat_443))
	(isVar_3 (Var_3 x_49710))))
(assert (forall ((x_49711 Form_3) (x_49712 Form_3) (x_49713 Form_3))
	(diseqForm_3 (x_49524 x_49711 x_49712) (Not_266 x_49713))))
(assert (forall ((x_49714 Form_3) (x_49715 Form_3) (x_49716 Nat_443))
	(diseqForm_3 (x_49524 x_49714 x_49715) (Var_3 x_49716))))
(assert (forall ((x_49717 Form_3) (x_49718 Form_3) (x_49719 Form_3))
	(diseqForm_3 (Not_266 x_49717) (x_49524 x_49718 x_49719))))
(assert (forall ((x_49720 Nat_443) (x_49721 Form_3) (x_49722 Form_3))
	(diseqForm_3 (Var_3 x_49720) (x_49524 x_49721 x_49722))))
(assert (forall ((x_49723 Form_3) (x_49724 Nat_443))
	(diseqForm_3 (Not_266 x_49723) (Var_3 x_49724))))
(assert (forall ((x_49725 Nat_443) (x_49726 Form_3))
	(diseqForm_3 (Var_3 x_49725) (Not_266 x_49726))))
(assert (forall ((x_49727 Form_3) (x_49728 Form_3) (x_49729 Form_3) (x_49730 Form_3))
	(=> (diseqForm_3 x_49727 x_49729)
	    (diseqForm_3 (x_49524 x_49727 x_49728) (x_49524 x_49729 x_49730)))))
(assert (forall ((x_49727 Form_3) (x_49728 Form_3) (x_49729 Form_3) (x_49730 Form_3))
	(=> (diseqForm_3 x_49728 x_49730)
	    (diseqForm_3 (x_49524 x_49727 x_49728) (x_49524 x_49729 x_49730)))))
(assert (forall ((x_49731 Form_3) (x_49732 Form_3))
	(=> (diseqForm_3 x_49731 x_49732)
	    (diseqForm_3 (Not_266 x_49731) (Not_266 x_49732)))))
(assert (forall ((x_49733 Nat_443) (x_49734 Nat_443))
	(=> (diseqNat_443 x_49733 x_49734)
	    (diseqForm_3 (Var_3 x_49733) (Var_3 x_49734)))))
(declare-fun or_268 (Bool_263 list_188) Bool)
(assert (forall ((x_49546 Bool_263) (x_49547 Bool_263) (y_1743 Bool_263) (xs_517 list_188))
	(=>	(and (or_268 x_49547 xs_517)
			(or_269 x_49546 y_1743 x_49547))
		(or_268 x_49546 (cons_188 y_1743 xs_517)))))
(assert (or_268 false_263 nil_214))
(declare-fun okay_0 (list_189 list_190) Bool)
(assert (forall ((x_49550 list_189) (z_1560 Nat_443) (y_1745 Bool_263) (xs_518 list_190))
	(=> (okay_0 x_49550 xs_518)
	    (okay_0 (cons_189 z_1560 x_49550) (cons_190 (pair_81 z_1560 y_1745) xs_518)))))
(assert (okay_0 nil_215 nil_216))
(declare-fun models_18 (list_190 Nat_443 list_190) Bool)
(assert (forall ((x_49553 list_190) (x_49528 Nat_443) (y_1747 Bool_263) (xs_519 list_190) (x_49527 Nat_443))
	(=>	(and (diseqNat_443 x_49527 x_49528)
			(models_18 x_49553 x_49527 xs_519))
		(models_18 (cons_190 (pair_81 x_49528 y_1747) x_49553) x_49527 (cons_190 (pair_81 x_49528 y_1747) xs_519)))))
(assert (forall ((x_49554 list_190) (y_1747 Bool_263) (xs_519 list_190) (x_49527 Nat_443))
	(=> (models_18 x_49554 x_49527 xs_519)
	    (models_18 x_49554 x_49527 (cons_190 (pair_81 x_49527 y_1747) xs_519)))))
(assert (forall ((x_49527 Nat_443))
	(models_18 nil_216 x_49527 nil_216)))
(declare-fun models_19 (list_188 Nat_443 list_190) Bool)
(assert (forall ((x_49557 list_188) (y_1749 Nat_443) (x_49530 list_190) (x_49529 Nat_443))
	(=> (models_19 x_49557 x_49529 x_49530)
	    (models_19 x_49557 x_49529 (cons_190 (pair_81 y_1749 true_263) x_49530)))))
(assert (forall ((x_49560 list_188) (x_49530 list_190) (x_49529 Nat_443))
	(=> (models_19 x_49560 x_49529 x_49530)
	    (models_19 (cons_188 true_263 x_49560) x_49529 (cons_190 (pair_81 x_49529 false_263) x_49530)))))
(assert (forall ((x_49562 list_188) (y_1749 Nat_443) (x_49530 list_190) (x_49529 Nat_443))
	(=>	(and (diseqNat_443 x_49529 y_1749)
			(models_19 x_49562 x_49529 x_49530))
		(models_19 (cons_188 false_263 x_49562) x_49529 (cons_190 (pair_81 y_1749 false_263) x_49530)))))
(assert (forall ((x_49529 Nat_443))
	(models_19 nil_214 x_49529 nil_216)))
(declare-fun models_20 (list_188 Nat_443 list_190) Bool)
(assert (forall ((x_49565 list_188) (x_49533 list_190) (x_49532 Nat_443))
	(=> (models_20 x_49565 x_49532 x_49533)
	    (models_20 (cons_188 true_263 x_49565) x_49532 (cons_190 (pair_81 x_49532 true_263) x_49533)))))
(assert (forall ((x_49567 list_188) (y_1751 Nat_443) (x_49533 list_190) (x_49532 Nat_443))
	(=>	(and (diseqNat_443 x_49532 y_1751)
			(models_20 x_49567 x_49532 x_49533))
		(models_20 (cons_188 false_263 x_49567) x_49532 (cons_190 (pair_81 y_1751 true_263) x_49533)))))
(assert (forall ((x_49568 list_188) (y_1751 Nat_443) (x_49533 list_190) (x_49532 Nat_443))
	(=> (models_20 x_49568 x_49532 x_49533)
	    (models_20 x_49568 x_49532 (cons_190 (pair_81 y_1751 false_263) x_49533)))))
(assert (forall ((x_49532 Nat_443))
	(models_20 nil_214 x_49532 nil_216)))
(declare-fun elem_10 (Bool_263 Nat_443 list_189) Bool)
(assert (forall ((xs_520 list_189) (x_49535 Nat_443))
	(elem_10 true_263 x_49535 (cons_189 x_49535 xs_520))))
(assert (forall ((x_49572 Bool_263) (z_1564 Nat_443) (xs_520 list_189) (x_49535 Nat_443))
	(=>	(and (diseqNat_443 z_1564 x_49535)
			(elem_10 x_49572 x_49535 xs_520))
		(elem_10 x_49572 x_49535 (cons_189 z_1564 xs_520)))))
(assert (forall ((x_49535 Nat_443))
	(elem_10 false_263 x_49535 nil_215)))
(declare-fun okay_1 (Bool_263 list_190) Bool)
(assert (forall ((x_49621 Bool_263) (x_49575 Bool_263) (x_49576 list_189) (x_49577 Bool_263) (x_49578 Bool_263) (z_1565 Nat_443) (c_17 Bool_263) (m_35 list_190))
	(=>	(and (okay_0 x_49576 m_35)
			(elem_10 x_49577 z_1565 x_49576)
			(okay_1 x_49578 m_35)
			(not_267 x_49621 x_49577)
			(and_263 x_49575 x_49621 x_49578))
		(okay_1 x_49575 (cons_190 (pair_81 z_1565 c_17) m_35)))))
(assert (okay_1 true_263 nil_216))
(declare-fun formula_3 (Bool_263 list_191) Bool)
(assert (forall ((x_49580 Bool_263) (x_49581 Bool_263) (x_49582 Bool_263) (y_1754 list_190) (xs_521 list_191))
	(=>	(and (okay_1 x_49581 y_1754)
			(formula_3 x_49582 xs_521)
			(and_263 x_49580 x_49581 x_49582))
		(formula_3 x_49580 (cons_191 y_1754 xs_521)))))
(assert (formula_3 true_263 nil_217))
(declare-fun x_49538 (list_191 list_191 list_191) Bool)
(assert (forall ((x_49585 list_191) (z_1566 list_190) (xs_522 list_191) (y_1755 list_191))
	(=> (x_49538 x_49585 xs_522 y_1755)
	    (x_49538 (cons_191 z_1566 x_49585) (cons_191 z_1566 xs_522) y_1755))))
(assert (forall ((x_49586 list_191))
	(x_49538 x_49586 nil_217 x_49586)))
(declare-fun models_21 (list_191 Form_3 list_190) Bool)
(declare-fun models_22 (list_191 Form_3 list_191) Bool)
(declare-fun models_23 (list_191 list_191 Form_3 list_191) Bool)
(assert (forall ((x_49590 list_190) (x_49587 list_188) (x_49541 Nat_443) (y_1756 list_190))
	(=>	(and (models_18 x_49590 x_49541 y_1756)
			(models_19 x_49587 x_49541 y_1756)
			(or_268 false_263 x_49587))
		(models_21 (cons_191 (cons_190 (pair_81 x_49541 true_263) x_49590) nil_217) (Var_3 x_49541) y_1756))))
(assert (forall ((x_49591 list_188) (x_49541 Nat_443) (y_1756 list_190))
	(=>	(and (models_19 x_49591 x_49541 y_1756)
			(or_268 true_263 x_49591))
		(models_21 nil_217 (Var_3 x_49541) y_1756))))
(assert (forall ((x_49597 list_190) (x_49594 list_188) (x_49542 Nat_443) (y_1756 list_190))
	(=>	(and (models_18 x_49597 x_49542 y_1756)
			(models_20 x_49594 x_49542 y_1756)
			(or_268 false_263 x_49594))
		(models_21 (cons_191 (cons_190 (pair_81 x_49542 false_263) x_49597) nil_217) (Not_266 (Var_3 x_49542)) y_1756))))
(assert (forall ((x_49598 list_188) (x_49542 Nat_443) (y_1756 list_190))
	(=>	(and (models_20 x_49598 x_49542 y_1756)
			(or_268 true_263 x_49598))
		(models_21 nil_217 (Not_266 (Var_3 x_49542)) y_1756))))
(assert (forall ((x_49601 list_191) (p_309 Form_3) (y_1756 list_190))
	(=> (models_21 x_49601 p_309 y_1756)
	    (models_21 x_49601 (Not_266 (Not_266 p_309)) y_1756))))
(assert (forall ((x_49603 list_191) (x_49604 list_191) (x_49605 list_191) (r_330 Form_3) (q_111 Form_3) (y_1756 list_190))
	(=>	(and (models_21 x_49604 (Not_266 r_330) y_1756)
			(models_21 x_49605 (x_49524 r_330 (Not_266 q_111)) y_1756)
			(x_49538 x_49603 x_49604 x_49605))
		(models_21 x_49603 (Not_266 (x_49524 r_330 q_111)) y_1756))))
(assert (forall ((x_49607 list_191) (x_49608 list_191) (p_310 Form_3) (q_112 Form_3) (y_1756 list_190))
	(=>	(and (models_21 x_49608 p_310 y_1756)
			(models_22 x_49607 q_112 x_49608))
		(models_21 x_49607 (x_49524 p_310 q_112) y_1756))))
(assert (forall ((x_49610 list_191) (x_49611 list_191) (y_1757 list_190) (z_1568 list_191) (q_113 Form_3))
	(=>	(and (models_21 x_49611 q_113 y_1757)
			(models_23 x_49610 z_1568 q_113 x_49611))
		(models_22 x_49610 q_113 (cons_191 y_1757 z_1568)))))
(assert (forall ((q_113 Form_3))
	(models_22 nil_217 q_113 nil_217)))
(assert (forall ((x_49615 list_191) (z_1569 list_190) (x_49545 list_191) (x_49544 list_191) (q_114 Form_3))
	(=> (models_23 x_49615 x_49544 q_114 x_49545)
	    (models_23 (cons_191 z_1569 x_49615) x_49544 q_114 (cons_191 z_1569 x_49545)))))
(assert (forall ((x_49616 list_191) (x_49544 list_191) (q_114 Form_3))
	(=> (models_22 x_49616 q_114 x_49544)
	    (models_23 x_49616 x_49544 q_114 nil_217))))
(assert (forall ((x_49618 list_191) (p_311 Form_3))
	(=>	(and true
			(models_21 x_49618 p_311 nil_216)
			(formula_3 false_263 x_49618))
		false)))
(check-sat)
