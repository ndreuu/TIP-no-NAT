
(set-logic HORN)
(define-fun Z_2314 () Int 0)
(define-fun S_535 ((x Int)) Int (+ x 1))
(declare-fun unS_767 (Int Int) Bool)
(declare-fun isZ_502 (Int) Bool)
(declare-fun isS_502 (Int) Bool)
(assert (forall ((x_59635 Int))
	(unS_767 x_59635 (S_535 x_59635))))
(assert (isZ_502 Z_2314))
(assert (forall ((x_59637 Int))
	(isS_502 (S_535 x_59637))))
(declare-fun add_409 (Int Int Int) Bool)
(declare-fun minus_404 (Int Int Int) Bool)
(declare-fun le_383 (Int Int) Bool)
(declare-fun ge_383 (Int Int) Bool)
(declare-fun lt_403 (Int Int) Bool)
(declare-fun gt_386 (Int Int) Bool)
(declare-fun mult_384 (Int Int Int) Bool)
(declare-fun div_383 (Int Int Int) Bool)
(declare-fun mod_385 (Int Int Int) Bool)
(assert (forall ((y_2586 Int))
	(add_409 y_2586 Z_2314 y_2586)))
(assert (forall ((x_59629 Int) (y_2586 Int) (r_480 Int))
	(=> (add_409 r_480 x_59629 y_2586) (add_409 (S_535 r_480) (S_535 x_59629) y_2586))))
(assert (forall ((y_2586 Int))
	(minus_404 Z_2314 Z_2314 y_2586)))
(assert (forall ((x_59629 Int) (y_2586 Int) (r_480 Int))
	(=> (minus_404 r_480 x_59629 y_2586) (minus_404 (S_535 r_480) (S_535 x_59629) y_2586))))
(assert (forall ((y_2586 Int))
	(le_383 Z_2314 y_2586)))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (le_383 x_59629 y_2586) (le_383 (S_535 x_59629) (S_535 y_2586)))))
(assert (forall ((y_2586 Int))
	(ge_383 y_2586 Z_2314)))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (ge_383 x_59629 y_2586) (ge_383 (S_535 x_59629) (S_535 y_2586)))))
(assert (forall ((y_2586 Int))
	(lt_403 Z_2314 (S_535 y_2586))))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (lt_403 x_59629 y_2586) (lt_403 (S_535 x_59629) (S_535 y_2586)))))
(assert (forall ((y_2586 Int))
	(gt_386 (S_535 y_2586) Z_2314)))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (gt_386 x_59629 y_2586) (gt_386 (S_535 x_59629) (S_535 y_2586)))))
(assert (forall ((y_2586 Int))
	(mult_384 Z_2314 Z_2314 y_2586)))
(assert (forall ((x_59629 Int) (y_2586 Int) (r_480 Int) (z_2315 Int))
	(=> (and (mult_384 r_480 x_59629 y_2586) (add_409 z_2315 r_480 y_2586)) (mult_384 z_2315 (S_535 x_59629) y_2586))))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (lt_403 x_59629 y_2586) (div_383 Z_2314 x_59629 y_2586))))
(assert (forall ((x_59629 Int) (y_2586 Int) (r_480 Int) (z_2315 Int))
	(=> (and (ge_383 x_59629 y_2586) (minus_404 z_2315 x_59629 y_2586) (div_383 r_480 z_2315 y_2586)) (div_383 (S_535 r_480) x_59629 y_2586))))
(assert (forall ((x_59629 Int) (y_2586 Int))
	(=> (lt_403 x_59629 y_2586) (mod_385 x_59629 x_59629 y_2586))))
(assert (forall ((x_59629 Int) (y_2586 Int) (r_480 Int) (z_2315 Int))
	(=> (and (ge_383 x_59629 y_2586) (minus_404 z_2315 x_59629 y_2586) (mod_385 r_480 z_2315 y_2586)) (mod_385 r_480 x_59629 y_2586))))
(declare-datatypes ((pair_116 0)) (((pair_117 (projpair_232 Int) (projpair_233 Int)))))
(declare-fun diseqpair_58 (pair_116 pair_116) Bool)
(declare-fun projpair_236 (Int pair_116) Bool)
(declare-fun projpair_237 (Int pair_116) Bool)
(declare-fun ispair_58 (pair_116) Bool)
(assert (forall ((x_59642 Int) (x_59643 Int))
	(projpair_236 x_59642 (pair_117 x_59642 x_59643))))
(assert (forall ((x_59642 Int) (x_59643 Int))
	(projpair_237 x_59643 (pair_117 x_59642 x_59643))))
(assert (forall ((x_59645 Int) (x_59646 Int))
	(ispair_58 (pair_117 x_59645 x_59646))))
(assert (forall ((x_59647 Int) (x_59648 Int) (x_59649 Int) (x_59650 Int))
	(=> (distinct x_59647 x_59649) (diseqpair_58 (pair_117 x_59647 x_59648) (pair_117 x_59649 x_59650)))))
(assert (forall ((x_59647 Int) (x_59648 Int) (x_59649 Int) (x_59650 Int))
	(=> (distinct x_59648 x_59650) (diseqpair_58 (pair_117 x_59647 x_59648) (pair_117 x_59649 x_59650)))))
(declare-datatypes ((list_300 0)) (((nil_333) (cons_298 (head_596 Int) (tail_598 list_300)))))
(declare-fun diseqlist_298 (list_300 list_300) Bool)
(declare-fun head_597 (Int list_300) Bool)
(declare-fun tail_600 (list_300 list_300) Bool)
(declare-fun isnil_333 (list_300) Bool)
(declare-fun iscons_298 (list_300) Bool)
(assert (forall ((x_59652 Int) (x_59653 list_300))
	(head_597 x_59652 (cons_298 x_59652 x_59653))))
(assert (forall ((x_59652 Int) (x_59653 list_300))
	(tail_600 x_59653 (cons_298 x_59652 x_59653))))
(assert (isnil_333 nil_333))
(assert (forall ((x_59655 Int) (x_59656 list_300))
	(iscons_298 (cons_298 x_59655 x_59656))))
(assert (forall ((x_59657 Int) (x_59658 list_300))
	(diseqlist_298 nil_333 (cons_298 x_59657 x_59658))))
(assert (forall ((x_59659 Int) (x_59660 list_300))
	(diseqlist_298 (cons_298 x_59659 x_59660) nil_333)))
(assert (forall ((x_59661 Int) (x_59662 list_300) (x_59663 Int) (x_59664 list_300))
	(=> (distinct x_59661 x_59663) (diseqlist_298 (cons_298 x_59661 x_59662) (cons_298 x_59663 x_59664)))))
(assert (forall ((x_59661 Int) (x_59662 list_300) (x_59663 Int) (x_59664 list_300))
	(=> (diseqlist_298 x_59662 x_59664) (diseqlist_298 (cons_298 x_59661 x_59662) (cons_298 x_59663 x_59664)))))
(declare-datatypes ((pair_118 0)) (((pair_119 (projpair_234 list_300) (projpair_235 list_300)))))
(declare-fun diseqpair_59 (pair_118 pair_118) Bool)
(declare-fun projpair_238 (list_300 pair_118) Bool)
(declare-fun projpair_239 (list_300 pair_118) Bool)
(declare-fun ispair_59 (pair_118) Bool)
(assert (forall ((x_59665 list_300) (x_59666 list_300))
	(projpair_238 x_59665 (pair_119 x_59665 x_59666))))
(assert (forall ((x_59665 list_300) (x_59666 list_300))
	(projpair_239 x_59666 (pair_119 x_59665 x_59666))))
(assert (forall ((x_59668 list_300) (x_59669 list_300))
	(ispair_59 (pair_119 x_59668 x_59669))))
(assert (forall ((x_59670 list_300) (x_59671 list_300) (x_59672 list_300) (x_59673 list_300))
	(=> (diseqlist_298 x_59670 x_59672) (diseqpair_59 (pair_119 x_59670 x_59671) (pair_119 x_59672 x_59673)))))
(assert (forall ((x_59670 list_300) (x_59671 list_300) (x_59672 list_300) (x_59673 list_300))
	(=> (diseqlist_298 x_59671 x_59673) (diseqpair_59 (pair_119 x_59670 x_59671) (pair_119 x_59672 x_59673)))))
(declare-datatypes ((Q_167 0)) (((Q_168 (projQ_8 list_300) (projQ_9 list_300)))))
(declare-fun diseqQ_2 (Q_167 Q_167) Bool)
(declare-fun projQ_10 (list_300 Q_167) Bool)
(declare-fun projQ_11 (list_300 Q_167) Bool)
(declare-fun isQ_4 (Q_167) Bool)
(assert (forall ((x_59674 list_300) (x_59675 list_300))
	(projQ_10 x_59674 (Q_168 x_59674 x_59675))))
(assert (forall ((x_59674 list_300) (x_59675 list_300))
	(projQ_11 x_59675 (Q_168 x_59674 x_59675))))
(assert (forall ((x_59677 list_300) (x_59678 list_300))
	(isQ_4 (Q_168 x_59677 x_59678))))
(assert (forall ((x_59679 list_300) (x_59680 list_300) (x_59681 list_300) (x_59682 list_300))
	(=> (diseqlist_298 x_59679 x_59681) (diseqQ_2 (Q_168 x_59679 x_59680) (Q_168 x_59681 x_59682)))))
(assert (forall ((x_59679 list_300) (x_59680 list_300) (x_59681 list_300) (x_59682 list_300))
	(=> (diseqlist_298 x_59680 x_59682) (diseqQ_2 (Q_168 x_59679 x_59680) (Q_168 x_59681 x_59682)))))
(declare-datatypes ((Maybe_5 0)) (((Nothing_5) (Just_5 (projJust_10 Int)))))
(declare-fun diseqMaybe_5 (Maybe_5 Maybe_5) Bool)
(declare-fun projJust_12 (Int Maybe_5) Bool)
(declare-fun isNothing_5 (Maybe_5) Bool)
(declare-fun isJust_5 (Maybe_5) Bool)
(assert (forall ((x_59684 Int))
	(projJust_12 x_59684 (Just_5 x_59684))))
(assert (isNothing_5 Nothing_5))
(assert (forall ((x_59686 Int))
	(isJust_5 (Just_5 x_59686))))
(assert (forall ((x_59687 Int))
	(diseqMaybe_5 Nothing_5 (Just_5 x_59687))))
(assert (forall ((x_59688 Int))
	(diseqMaybe_5 (Just_5 x_59688) Nothing_5)))
(assert (forall ((x_59689 Int) (x_59690 Int))
	(=> (distinct x_59689 x_59690) (diseqMaybe_5 (Just_5 x_59689) (Just_5 x_59690)))))
(declare-datatypes ((Maybe_6 0)) (((Nothing_6) (Just_6 (projJust_11 Q_167)))))
(declare-fun diseqMaybe_6 (Maybe_6 Maybe_6) Bool)
(declare-fun projJust_13 (Q_167 Maybe_6) Bool)
(declare-fun isNothing_6 (Maybe_6) Bool)
(declare-fun isJust_6 (Maybe_6) Bool)
(assert (forall ((x_59692 Q_167))
	(projJust_13 x_59692 (Just_6 x_59692))))
(assert (isNothing_6 Nothing_6))
(assert (forall ((x_59694 Q_167))
	(isJust_6 (Just_6 x_59694))))
(assert (forall ((x_59695 Q_167))
	(diseqMaybe_6 Nothing_6 (Just_6 x_59695))))
(assert (forall ((x_59696 Q_167))
	(diseqMaybe_6 (Just_6 x_59696) Nothing_6)))
(assert (forall ((x_59697 Q_167) (x_59698 Q_167))
	(=> (diseqQ_2 x_59697 x_59698) (diseqMaybe_6 (Just_6 x_59697) (Just_6 x_59698)))))
(declare-datatypes ((E_21 0)) (((Empty_4) (EnqL_4 (projEnqL_8 Int) (projEnqL_9 E_21)) (EnqR_4 (projEnqR_8 E_21) (projEnqR_9 Int)) (DeqL_4 (projDeqL_4 E_21)) (DeqR_4 (projDeqR_4 E_21)) (App_2 (projApp_8 E_21) (projApp_9 E_21)))))
(declare-fun diseqE_2 (E_21 E_21) Bool)
(declare-fun projEnqL_10 (Int E_21) Bool)
(declare-fun projEnqL_11 (E_21 E_21) Bool)
(declare-fun projEnqR_10 (E_21 E_21) Bool)
(declare-fun projEnqR_11 (Int E_21) Bool)
(declare-fun projDeqL_5 (E_21 E_21) Bool)
(declare-fun projDeqR_5 (E_21 E_21) Bool)
(declare-fun projApp_10 (E_21 E_21) Bool)
(declare-fun projApp_11 (E_21 E_21) Bool)
(declare-fun isEmpty_2 (E_21) Bool)
(declare-fun isEnqL_2 (E_21) Bool)
(declare-fun isEnqR_2 (E_21) Bool)
(declare-fun isDeqL_2 (E_21) Bool)
(declare-fun isDeqR_2 (E_21) Bool)
(declare-fun isApp_2 (E_21) Bool)
(assert (forall ((x_59700 Int) (x_59701 E_21))
	(projEnqL_10 x_59700 (EnqL_4 x_59700 x_59701))))
(assert (forall ((x_59700 Int) (x_59701 E_21))
	(projEnqL_11 x_59701 (EnqL_4 x_59700 x_59701))))
(assert (forall ((x_59703 E_21) (x_59704 Int))
	(projEnqR_10 x_59703 (EnqR_4 x_59703 x_59704))))
(assert (forall ((x_59703 E_21) (x_59704 Int))
	(projEnqR_11 x_59704 (EnqR_4 x_59703 x_59704))))
(assert (forall ((x_59706 E_21))
	(projDeqL_5 x_59706 (DeqL_4 x_59706))))
(assert (forall ((x_59708 E_21))
	(projDeqR_5 x_59708 (DeqR_4 x_59708))))
(assert (forall ((x_59710 E_21) (x_59711 E_21))
	(projApp_10 x_59710 (App_2 x_59710 x_59711))))
(assert (forall ((x_59710 E_21) (x_59711 E_21))
	(projApp_11 x_59711 (App_2 x_59710 x_59711))))
(assert (isEmpty_2 Empty_4))
(assert (forall ((x_59713 Int) (x_59714 E_21))
	(isEnqL_2 (EnqL_4 x_59713 x_59714))))
(assert (forall ((x_59715 E_21) (x_59716 Int))
	(isEnqR_2 (EnqR_4 x_59715 x_59716))))
(assert (forall ((x_59717 E_21))
	(isDeqL_2 (DeqL_4 x_59717))))
(assert (forall ((x_59718 E_21))
	(isDeqR_2 (DeqR_4 x_59718))))
(assert (forall ((x_59719 E_21) (x_59720 E_21))
	(isApp_2 (App_2 x_59719 x_59720))))
(assert (forall ((x_59721 Int) (x_59722 E_21))
	(diseqE_2 Empty_4 (EnqL_4 x_59721 x_59722))))
(assert (forall ((x_59723 E_21) (x_59724 Int))
	(diseqE_2 Empty_4 (EnqR_4 x_59723 x_59724))))
(assert (forall ((x_59725 E_21))
	(diseqE_2 Empty_4 (DeqL_4 x_59725))))
(assert (forall ((x_59726 E_21))
	(diseqE_2 Empty_4 (DeqR_4 x_59726))))
(assert (forall ((x_59727 E_21) (x_59728 E_21))
	(diseqE_2 Empty_4 (App_2 x_59727 x_59728))))
(assert (forall ((x_59729 Int) (x_59730 E_21))
	(diseqE_2 (EnqL_4 x_59729 x_59730) Empty_4)))
(assert (forall ((x_59731 E_21) (x_59732 Int))
	(diseqE_2 (EnqR_4 x_59731 x_59732) Empty_4)))
(assert (forall ((x_59733 E_21))
	(diseqE_2 (DeqL_4 x_59733) Empty_4)))
(assert (forall ((x_59734 E_21))
	(diseqE_2 (DeqR_4 x_59734) Empty_4)))
(assert (forall ((x_59735 E_21) (x_59736 E_21))
	(diseqE_2 (App_2 x_59735 x_59736) Empty_4)))
(assert (forall ((x_59737 Int) (x_59738 E_21) (x_59739 E_21) (x_59740 Int))
	(diseqE_2 (EnqL_4 x_59737 x_59738) (EnqR_4 x_59739 x_59740))))
(assert (forall ((x_59741 Int) (x_59742 E_21) (x_59743 E_21))
	(diseqE_2 (EnqL_4 x_59741 x_59742) (DeqL_4 x_59743))))
(assert (forall ((x_59744 Int) (x_59745 E_21) (x_59746 E_21))
	(diseqE_2 (EnqL_4 x_59744 x_59745) (DeqR_4 x_59746))))
(assert (forall ((x_59747 Int) (x_59748 E_21) (x_59749 E_21) (x_59750 E_21))
	(diseqE_2 (EnqL_4 x_59747 x_59748) (App_2 x_59749 x_59750))))
(assert (forall ((x_59751 E_21) (x_59752 Int) (x_59753 Int) (x_59754 E_21))
	(diseqE_2 (EnqR_4 x_59751 x_59752) (EnqL_4 x_59753 x_59754))))
(assert (forall ((x_59755 E_21) (x_59756 Int) (x_59757 E_21))
	(diseqE_2 (DeqL_4 x_59755) (EnqL_4 x_59756 x_59757))))
(assert (forall ((x_59758 E_21) (x_59759 Int) (x_59760 E_21))
	(diseqE_2 (DeqR_4 x_59758) (EnqL_4 x_59759 x_59760))))
(assert (forall ((x_59761 E_21) (x_59762 E_21) (x_59763 Int) (x_59764 E_21))
	(diseqE_2 (App_2 x_59761 x_59762) (EnqL_4 x_59763 x_59764))))
(assert (forall ((x_59765 E_21) (x_59766 Int) (x_59767 E_21))
	(diseqE_2 (EnqR_4 x_59765 x_59766) (DeqL_4 x_59767))))
(assert (forall ((x_59768 E_21) (x_59769 Int) (x_59770 E_21))
	(diseqE_2 (EnqR_4 x_59768 x_59769) (DeqR_4 x_59770))))
(assert (forall ((x_59771 E_21) (x_59772 Int) (x_59773 E_21) (x_59774 E_21))
	(diseqE_2 (EnqR_4 x_59771 x_59772) (App_2 x_59773 x_59774))))
(assert (forall ((x_59775 E_21) (x_59776 E_21) (x_59777 Int))
	(diseqE_2 (DeqL_4 x_59775) (EnqR_4 x_59776 x_59777))))
(assert (forall ((x_59778 E_21) (x_59779 E_21) (x_59780 Int))
	(diseqE_2 (DeqR_4 x_59778) (EnqR_4 x_59779 x_59780))))
(assert (forall ((x_59781 E_21) (x_59782 E_21) (x_59783 E_21) (x_59784 Int))
	(diseqE_2 (App_2 x_59781 x_59782) (EnqR_4 x_59783 x_59784))))
(assert (forall ((x_59785 E_21) (x_59786 E_21))
	(diseqE_2 (DeqL_4 x_59785) (DeqR_4 x_59786))))
(assert (forall ((x_59787 E_21) (x_59788 E_21) (x_59789 E_21))
	(diseqE_2 (DeqL_4 x_59787) (App_2 x_59788 x_59789))))
(assert (forall ((x_59790 E_21) (x_59791 E_21))
	(diseqE_2 (DeqR_4 x_59790) (DeqL_4 x_59791))))
(assert (forall ((x_59792 E_21) (x_59793 E_21) (x_59794 E_21))
	(diseqE_2 (App_2 x_59792 x_59793) (DeqL_4 x_59794))))
(assert (forall ((x_59795 E_21) (x_59796 E_21) (x_59797 E_21))
	(diseqE_2 (DeqR_4 x_59795) (App_2 x_59796 x_59797))))
(assert (forall ((x_59798 E_21) (x_59799 E_21) (x_59800 E_21))
	(diseqE_2 (App_2 x_59798 x_59799) (DeqR_4 x_59800))))
(assert (forall ((x_59801 Int) (x_59802 E_21) (x_59803 Int) (x_59804 E_21))
	(=> (distinct x_59801 x_59803) (diseqE_2 (EnqL_4 x_59801 x_59802) (EnqL_4 x_59803 x_59804)))))
(assert (forall ((x_59801 Int) (x_59802 E_21) (x_59803 Int) (x_59804 E_21))
	(=> (diseqE_2 x_59802 x_59804) (diseqE_2 (EnqL_4 x_59801 x_59802) (EnqL_4 x_59803 x_59804)))))
(assert (forall ((x_59805 E_21) (x_59806 Int) (x_59807 E_21) (x_59808 Int))
	(=> (diseqE_2 x_59805 x_59807) (diseqE_2 (EnqR_4 x_59805 x_59806) (EnqR_4 x_59807 x_59808)))))
(assert (forall ((x_59805 E_21) (x_59806 Int) (x_59807 E_21) (x_59808 Int))
	(=> (distinct x_59806 x_59808) (diseqE_2 (EnqR_4 x_59805 x_59806) (EnqR_4 x_59807 x_59808)))))
(assert (forall ((x_59809 E_21) (x_59810 E_21))
	(=> (diseqE_2 x_59809 x_59810) (diseqE_2 (DeqL_4 x_59809) (DeqL_4 x_59810)))))
(assert (forall ((x_59811 E_21) (x_59812 E_21))
	(=> (diseqE_2 x_59811 x_59812) (diseqE_2 (DeqR_4 x_59811) (DeqR_4 x_59812)))))
(assert (forall ((x_59813 E_21) (x_59814 E_21) (x_59815 E_21) (x_59816 E_21))
	(=> (diseqE_2 x_59813 x_59815) (diseqE_2 (App_2 x_59813 x_59814) (App_2 x_59815 x_59816)))))
(assert (forall ((x_59813 E_21) (x_59814 E_21) (x_59815 E_21) (x_59816 E_21))
	(=> (diseqE_2 x_59814 x_59816) (diseqE_2 (App_2 x_59813 x_59814) (App_2 x_59815 x_59816)))))
(declare-fun take_53 (list_300 Int list_300) Bool)
(assert (forall ((x_59465 Int) (y_2565 list_300))
	(=> (le_383 x_59465 Z_2314) (take_53 nil_333 x_59465 y_2565))))
(assert (forall ((x_59630 Int) (x_59511 list_300) (z_2301 Int) (xs_758 list_300) (x_59465 Int))
	(=> (and (gt_386 x_59465 Z_2314) (take_53 x_59511 x_59630 xs_758) (minus_404 x_59630 x_59465 (S_535 Z_2314))) (take_53 (cons_298 z_2301 x_59511) x_59465 (cons_298 z_2301 xs_758)))))
(assert (forall ((x_59465 Int) (y_2565 list_300))
	(=> (le_383 x_59465 Z_2314) (take_53 nil_333 x_59465 y_2565))))
(assert (forall ((x_59465 Int))
	(=> (gt_386 x_59465 Z_2314) (take_53 nil_333 x_59465 nil_333))))
(declare-fun tail_599 (list_300 list_300) Bool)
(assert (forall ((x_59514 list_300) (y_2566 Int))
	(tail_599 x_59514 (cons_298 y_2566 x_59514))))
(assert (tail_599 nil_333 nil_333))
(declare-fun length_61 (Int list_300) Bool)
(assert (forall ((x_59516 Int) (x_59517 Int) (y_2567 Int) (l_50 list_300))
	(=> (and (length_61 x_59517 l_50) (add_409 x_59516 (S_535 Z_2314) x_59517)) (length_61 x_59516 (cons_298 y_2567 l_50)))))
(assert (length_61 Z_2314 nil_333))
(declare-fun init_2 (list_300 list_300) Bool)
(assert (forall ((x_59520 list_300) (x_59469 Int) (x_59470 list_300) (y_2568 Int))
	(=> (init_2 x_59520 (cons_298 x_59469 x_59470)) (init_2 (cons_298 y_2568 x_59520) (cons_298 y_2568 (cons_298 x_59469 x_59470))))))
(assert (forall ((y_2568 Int))
	(init_2 nil_333 (cons_298 y_2568 nil_333))))
(assert (init_2 nil_333 nil_333))
(declare-fun fstL_1 (Maybe_5 Q_167) Bool)
(assert (forall ((x_59472 Int) (x_59473 list_300) (z_2303 list_300))
	(fstL_1 (Just_5 x_59472) (Q_168 (cons_298 x_59472 x_59473) z_2303))))
(assert (forall ((x_59475 Int) (x_59476 list_300) (y_2570 Int))
	(fstL_1 Nothing_5 (Q_168 nil_333 (cons_298 y_2570 (cons_298 x_59475 x_59476))))))
(assert (forall ((y_2570 Int))
	(fstL_1 (Just_5 y_2570) (Q_168 nil_333 (cons_298 y_2570 nil_333)))))
(assert (fstL_1 Nothing_5 (Q_168 nil_333 nil_333)))
(declare-fun fromMaybe_4 (Int Int Maybe_5) Bool)
(assert (forall ((x_59527 Int) (x_59477 Int))
	(fromMaybe_4 x_59527 x_59477 (Just_5 x_59527))))
(assert (forall ((x_59477 Int))
	(fromMaybe_4 x_59477 x_59477 Nothing_5)))
(declare-fun fromMaybe_5 (Q_167 Q_167 Maybe_6) Bool)
(assert (forall ((x_59529 Q_167) (x_59478 Q_167))
	(fromMaybe_5 x_59529 x_59478 (Just_6 x_59529))))
(assert (forall ((x_59478 Q_167))
	(fromMaybe_5 x_59478 x_59478 Nothing_6)))
(declare-fun empty_5 (Q_167) Bool)
(assert (empty_5 (Q_168 nil_333 nil_333)))
(declare-fun drop_60 (list_300 Int list_300) Bool)
(assert (forall ((x_59532 list_300) (x_59479 Int))
	(=> (le_383 x_59479 Z_2314) (drop_60 x_59532 x_59479 x_59532))))
(assert (forall ((x_59632 Int) (x_59533 list_300) (z_2306 Int) (xs_760 list_300) (x_59479 Int))
	(=> (and (gt_386 x_59479 Z_2314) (drop_60 x_59533 x_59632 xs_760) (minus_404 x_59632 x_59479 (S_535 Z_2314))) (drop_60 x_59533 x_59479 (cons_298 z_2306 xs_760)))))
(assert (forall ((x_59535 list_300) (x_59479 Int))
	(=> (le_383 x_59479 Z_2314) (drop_60 x_59535 x_59479 x_59535))))
(assert (forall ((x_59479 Int))
	(=> (gt_386 x_59479 Z_2314) (drop_60 nil_333 x_59479 nil_333))))
(declare-fun halve_2 (pair_118 list_300) Bool)
(assert (forall ((x_59539 list_300) (x_59540 list_300) (x_59537 Int) (k_17 Int) (x_59480 list_300))
	(=> (and (take_53 x_59539 k_17 x_59480) (drop_60 x_59540 k_17 x_59480) (length_61 x_59537 x_59480) (div_383 k_17 x_59537 (S_535 (S_535 Z_2314)))) (halve_2 (pair_119 x_59539 x_59540) x_59480))))
(declare-fun x_59481 (list_300 list_300 list_300) Bool)
(assert (forall ((x_59542 list_300) (z_2307 Int) (xs_761 list_300) (y_2574 list_300))
	(=> (x_59481 x_59542 xs_761 y_2574) (x_59481 (cons_298 z_2307 x_59542) (cons_298 z_2307 xs_761) y_2574))))
(assert (forall ((x_59543 list_300))
	(x_59481 x_59543 nil_333 x_59543)))
(declare-fun list_301 (list_300 E_21) Bool)
(assert (forall ((x_59544 list_300) (x_59545 list_300) (x_59546 list_300) (a_65 E_21) (b_54 E_21))
	(=> (and (list_301 x_59545 a_65) (list_301 x_59546 b_54) (x_59481 x_59544 x_59545 x_59546)) (list_301 x_59544 (App_2 a_65 b_54)))))
(assert (forall ((x_59548 list_300) (x_59549 list_300) (e_22 E_21))
	(=> (and (list_301 x_59549 e_22) (init_2 x_59548 x_59549)) (list_301 x_59548 (DeqR_4 e_22)))))
(assert (forall ((x_59551 list_300) (x_59552 list_300) (e_23 E_21))
	(=> (and (list_301 x_59552 e_23) (tail_599 x_59551 x_59552)) (list_301 x_59551 (DeqL_4 e_23)))))
(assert (forall ((x_59554 list_300) (x_59555 list_300) (e_24 E_21) (z_2308 Int))
	(=> (and (list_301 x_59555 e_24) (x_59481 x_59554 x_59555 (cons_298 z_2308 nil_333))) (list_301 x_59554 (EnqR_4 e_24 z_2308)))))
(assert (forall ((x_59558 list_300) (y_2575 Int) (e_25 E_21))
	(=> (list_301 x_59558 e_25) (list_301 (cons_298 y_2575 x_59558) (EnqL_4 y_2575 e_25)))))
(assert (list_301 nil_333 Empty_4))
(declare-fun reverse_15 (list_300 list_300) Bool)
(assert (forall ((x_59560 list_300) (x_59561 list_300) (y_2576 Int) (xs_762 list_300))
	(=> (and (reverse_15 x_59561 xs_762) (x_59481 x_59560 x_59561 (cons_298 y_2576 nil_333))) (reverse_15 x_59560 (cons_298 y_2576 xs_762)))))
(assert (reverse_15 nil_333 nil_333))
(declare-fun enqL_5 (Q_167 Int Q_167) Bool)
(assert (forall ((z_2309 Int) (x_59486 list_300) (xs_763 list_300) (x_59485 Int))
	(enqL_5 (Q_168 (cons_298 x_59485 xs_763) (cons_298 z_2309 x_59486)) x_59485 (Q_168 xs_763 (cons_298 z_2309 x_59486)))))
(assert (forall ((x_59567 list_300) (as_6 list_300) (bs_9 list_300) (xs_763 list_300) (x_59485 Int))
	(=> (and (reverse_15 x_59567 bs_9) (halve_2 (pair_119 as_6 bs_9) (cons_298 x_59485 xs_763))) (enqL_5 (Q_168 as_6 x_59567) x_59485 (Q_168 xs_763 nil_333)))))
(declare-fun mkQ_2 (Q_167 list_300 list_300) Bool)
(assert (forall ((x_59489 Int) (x_59490 list_300) (z_2310 Int) (x_59488 list_300))
	(mkQ_2 (Q_168 (cons_298 z_2310 x_59488) (cons_298 x_59489 x_59490)) (cons_298 z_2310 x_59488) (cons_298 x_59489 x_59490))))
(assert (forall ((x_59571 list_300) (as_7 list_300) (cs_3 list_300) (z_2310 Int) (x_59488 list_300))
	(=> (and (reverse_15 x_59571 cs_3) (halve_2 (pair_119 as_7 cs_3) (cons_298 z_2310 x_59488))) (mkQ_2 (Q_168 as_7 x_59571) (cons_298 z_2310 x_59488) nil_333))))
(assert (forall ((x_59574 list_300) (as_8 list_300) (bs_10 list_300) (y_2578 list_300))
	(=> (and (reverse_15 x_59574 as_8) (halve_2 (pair_119 as_8 bs_10) y_2578)) (mkQ_2 (Q_168 x_59574 bs_10) nil_333 y_2578))))
(declare-fun x_59491 (Q_167 Q_167 Q_167) Bool)
(assert (forall ((x_59575 Q_167) (x_59576 list_300) (x_59577 list_300) (x_59578 list_300) (x_59579 list_300) (vs_4 list_300) (ws_2 list_300) (xs_764 list_300) (ys_216 list_300))
	(=> (and (reverse_15 x_59576 ys_216) (x_59481 x_59577 xs_764 x_59576) (reverse_15 x_59578 vs_4) (x_59481 x_59579 ws_2 x_59578) (mkQ_2 x_59575 x_59577 x_59579)) (x_59491 x_59575 (Q_168 xs_764 ys_216) (Q_168 vs_4 ws_2)))))
(declare-fun deqL_5 (Maybe_6 Q_167) Bool)
(assert (forall ((x_59582 Q_167) (x_59494 Int) (xs_765 list_300) (z_2311 list_300))
	(=> (mkQ_2 x_59582 xs_765 z_2311) (deqL_5 (Just_6 x_59582) (Q_168 (cons_298 x_59494 xs_765) z_2311)))))
(assert (forall ((x_59497 Int) (x_59498 list_300) (x_59495 Int))
	(deqL_5 Nothing_6 (Q_168 nil_333 (cons_298 x_59495 (cons_298 x_59497 x_59498))))))
(assert (forall ((x_59585 Q_167) (x_59495 Int))
	(=> (empty_5 x_59585) (deqL_5 (Just_6 x_59585) (Q_168 nil_333 (cons_298 x_59495 nil_333))))))
(assert (deqL_5 Nothing_6 (Q_168 nil_333 nil_333)))
(declare-fun deqR_5 (Maybe_6 Q_167) Bool)
(assert (forall ((x_59587 Q_167) (x_59502 Int) (x_59503 list_300) (x_59500 Int) (y_2582 Int) (ys_217 list_300))
	(=> (mkQ_2 x_59587 (cons_298 x_59500 (cons_298 x_59502 x_59503)) ys_217) (deqR_5 (Just_6 x_59587) (Q_168 (cons_298 x_59500 (cons_298 x_59502 x_59503)) (cons_298 y_2582 ys_217))))))
(assert (forall ((x_59589 Q_167) (x_59504 Int) (x_59505 list_300) (x_59500 Int))
	(=> (mkQ_2 x_59589 (cons_298 x_59500 nil_333) x_59505) (deqR_5 (Just_6 x_59589) (Q_168 (cons_298 x_59500 nil_333) (cons_298 x_59504 x_59505))))))
(assert (forall ((x_59594 Q_167) (y_2582 Int) (ys_217 list_300))
	(=> (mkQ_2 x_59594 nil_333 ys_217) (deqR_5 (Just_6 x_59594) (Q_168 nil_333 (cons_298 y_2582 ys_217))))))
(assert (forall ((x_59502 Int) (x_59503 list_300) (x_59500 Int))
	(deqR_5 Nothing_6 (Q_168 (cons_298 x_59500 (cons_298 x_59502 x_59503)) nil_333))))
(assert (forall ((x_59599 Q_167) (x_59500 Int))
	(=> (empty_5 x_59599) (deqR_5 (Just_6 x_59599) (Q_168 (cons_298 x_59500 nil_333) nil_333)))))
(assert (deqR_5 Nothing_6 (Q_168 nil_333 nil_333)))
(declare-fun enqR_5 (Q_167 Q_167 Int) Bool)
(assert (forall ((x_59601 Q_167) (xs_766 list_300) (ys_218 list_300) (y_2583 Int))
	(=> (mkQ_2 x_59601 xs_766 (cons_298 y_2583 ys_218)) (enqR_5 x_59601 (Q_168 xs_766 ys_218) y_2583))))
(declare-fun queue_2 (Q_167 E_21) Bool)
(assert (forall ((x_59603 Q_167) (x_59604 Q_167) (x_59605 Q_167) (a_66 E_21) (b_55 E_21))
	(=> (and (queue_2 x_59604 a_66) (queue_2 x_59605 b_55) (x_59491 x_59603 x_59604 x_59605)) (queue_2 x_59603 (App_2 a_66 b_55)))))
(assert (forall ((x_59608 Q_167) (x_59609 Maybe_6) (r_479 Q_167) (e_26 E_21))
	(=> (and (deqR_5 x_59609 r_479) (fromMaybe_5 x_59608 r_479 x_59609) (queue_2 r_479 e_26)) (queue_2 x_59608 (DeqR_4 e_26)))))
(assert (forall ((x_59612 Q_167) (x_59613 Maybe_6) (q_169 Q_167) (e_27 E_21))
	(=> (and (deqL_5 x_59613 q_169) (fromMaybe_5 x_59612 q_169 x_59613) (queue_2 q_169 e_27)) (queue_2 x_59612 (DeqL_4 e_27)))))
(assert (forall ((x_59615 Q_167) (x_59616 Q_167) (e_28 E_21) (z_2313 Int))
	(=> (and (queue_2 x_59616 e_28) (enqR_5 x_59615 x_59616 z_2313)) (queue_2 x_59615 (EnqR_4 e_28 z_2313)))))
(assert (forall ((x_59618 Q_167) (x_59619 Q_167) (y_2584 Int) (e_29 E_21))
	(=> (and (queue_2 x_59619 e_29) (enqL_5 x_59618 y_2584 x_59619)) (queue_2 x_59618 (EnqL_4 y_2584 e_29)))))
(assert (forall ((x_59621 Q_167))
	(=> (empty_5 x_59621) (queue_2 x_59621 Empty_4))))
(assert (forall ((x_59623 Q_167) (x_59624 Maybe_5) (x_59508 Int) (y_2585 list_300) (e_30 E_21))
	(=> (and true (diseqMaybe_5 x_59624 (Just_5 x_59508)) (list_301 (cons_298 x_59508 y_2585) e_30) (queue_2 x_59623 e_30) (fstL_1 x_59624 x_59623)) false)))
(assert (forall ((x_59626 Q_167) (x_59627 Maybe_5) (e_30 E_21))
	(=> (and true (diseqMaybe_5 x_59627 Nothing_5) (list_301 nil_333 e_30) (queue_2 x_59626 e_30) (fstL_1 x_59627 x_59626)) false)))
(check-sat)