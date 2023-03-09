(set-logic HORN)
(declare-datatypes ((Nat_98 0)) (((Z_279 ) (S_98 (unS_100 Nat_98)))))
(declare-fun diseqNat_98 (Nat_98 Nat_98) Bool)
(declare-fun unS_101 (Nat_98 Nat_98) Bool)
(declare-fun isZ_98 (Nat_98) Bool)
(declare-fun isS_98 (Nat_98) Bool)
(assert (forall ((x_2715 Nat_98))
	(unS_101 x_2715 (S_98 x_2715))))
(assert (isZ_98 Z_279))
(assert (forall ((x_2717 Nat_98))
	(isS_98 (S_98 x_2717))))
(assert (forall ((x_2718 Nat_98))
	(diseqNat_98 Z_279 (S_98 x_2718))))
(assert (forall ((x_2719 Nat_98))
	(diseqNat_98 (S_98 x_2719) Z_279)))
(assert (forall ((x_2720 Nat_98) (x_2721 Nat_98))
	(=> (diseqNat_98 x_2720 x_2721)
	    (diseqNat_98 (S_98 x_2720) (S_98 x_2721)))))
(declare-fun add_50 (Nat_98 Nat_98 Nat_98) Bool)
(declare-fun minus_50 (Nat_98 Nat_98 Nat_98) Bool)
(declare-fun le_50 (Nat_98 Nat_98) Bool)
(declare-fun ge_50 (Nat_98 Nat_98) Bool)
(declare-fun lt_50 (Nat_98 Nat_98) Bool)
(declare-fun gt_50 (Nat_98 Nat_98) Bool)
(declare-fun mult_50 (Nat_98 Nat_98 Nat_98) Bool)
(declare-fun div_50 (Nat_98 Nat_98 Nat_98) Bool)
(declare-fun mod_50 (Nat_98 Nat_98 Nat_98) Bool)
(assert (forall ((y_221 Nat_98))
	(add_50 y_221 Z_279 y_221)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98) (r_50 Nat_98))
	(=> (add_50 r_50 x_2668 y_221)
	    (add_50 (S_98 r_50) (S_98 x_2668) y_221))))
(assert (forall ((y_221 Nat_98))
	(minus_50 Z_279 Z_279 y_221)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98) (r_50 Nat_98))
	(=> (minus_50 r_50 x_2668 y_221)
	    (minus_50 (S_98 r_50) (S_98 x_2668) y_221))))
(assert (forall ((y_221 Nat_98))
	(le_50 Z_279 y_221)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (le_50 x_2668 y_221)
	    (le_50 (S_98 x_2668) (S_98 y_221)))))
(assert (forall ((y_221 Nat_98))
	(ge_50 y_221 Z_279)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (ge_50 x_2668 y_221)
	    (ge_50 (S_98 x_2668) (S_98 y_221)))))
(assert (forall ((y_221 Nat_98))
	(lt_50 Z_279 (S_98 y_221))))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (lt_50 x_2668 y_221)
	    (lt_50 (S_98 x_2668) (S_98 y_221)))))
(assert (forall ((y_221 Nat_98))
	(gt_50 (S_98 y_221) Z_279)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (gt_50 x_2668 y_221)
	    (gt_50 (S_98 x_2668) (S_98 y_221)))))
(assert (forall ((y_221 Nat_98))
	(mult_50 Z_279 Z_279 y_221)))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98) (r_50 Nat_98) (z_280 Nat_98))
	(=>	(and (mult_50 r_50 x_2668 y_221)
			(add_50 z_280 r_50 y_221))
		(mult_50 z_280 (S_98 x_2668) y_221))))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (lt_50 x_2668 y_221)
	    (div_50 Z_279 x_2668 y_221))))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98) (r_50 Nat_98) (z_280 Nat_98))
	(=>	(and (ge_50 x_2668 y_221)
			(minus_50 z_280 x_2668 y_221)
			(div_50 r_50 z_280 y_221))
		(div_50 (S_98 r_50) x_2668 y_221))))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98))
	(=> (lt_50 x_2668 y_221)
	    (mod_50 x_2668 x_2668 y_221))))
(assert (forall ((x_2668 Nat_98) (y_221 Nat_98) (r_50 Nat_98) (z_280 Nat_98))
	(=>	(and (ge_50 x_2668 y_221)
			(minus_50 z_280 x_2668 y_221)
			(mod_50 r_50 z_280 y_221))
		(mod_50 r_50 x_2668 y_221))))
(declare-datatypes ((pair_14 0)) (((pair_15 (projpair_28 Nat_98) (projpair_29 Nat_98)))))
(declare-fun diseqpair_7 (pair_14 pair_14) Bool)
(declare-fun projpair_30 (Nat_98 pair_14) Bool)
(declare-fun projpair_31 (Nat_98 pair_14) Bool)
(declare-fun ispair_7 (pair_14) Bool)
(assert (forall ((x_2669 Nat_98) (x_2670 Nat_98))
	(projpair_30 x_2669 (pair_15 x_2669 x_2670))))
(assert (forall ((x_2669 Nat_98) (x_2670 Nat_98))
	(projpair_31 x_2670 (pair_15 x_2669 x_2670))))
(assert (forall ((x_2672 Nat_98) (x_2673 Nat_98))
	(ispair_7 (pair_15 x_2672 x_2673))))
(assert (forall ((x_2674 Nat_98) (x_2675 Nat_98) (x_2676 Nat_98) (x_2677 Nat_98))
	(=> (diseqNat_98 x_2674 x_2676)
	    (diseqpair_7 (pair_15 x_2674 x_2675) (pair_15 x_2676 x_2677)))))
(assert (forall ((x_2674 Nat_98) (x_2675 Nat_98) (x_2676 Nat_98) (x_2677 Nat_98))
	(=> (diseqNat_98 x_2675 x_2677)
	    (diseqpair_7 (pair_15 x_2674 x_2675) (pair_15 x_2676 x_2677)))))
(declare-datatypes ((list_43 0)) (((nil_43 ) (cons_43 (head_86 Nat_98) (tail_86 list_43)))))
(declare-fun diseqlist_43 (list_43 list_43) Bool)
(declare-fun head_88 (Nat_98 list_43) Bool)
(declare-fun tail_88 (list_43 list_43) Bool)
(declare-fun isnil_43 (list_43) Bool)
(declare-fun iscons_43 (list_43) Bool)
(assert (forall ((x_2679 Nat_98) (x_2680 list_43))
	(head_88 x_2679 (cons_43 x_2679 x_2680))))
(assert (forall ((x_2679 Nat_98) (x_2680 list_43))
	(tail_88 x_2680 (cons_43 x_2679 x_2680))))
(assert (isnil_43 nil_43))
(assert (forall ((x_2682 Nat_98) (x_2683 list_43))
	(iscons_43 (cons_43 x_2682 x_2683))))
(assert (forall ((x_2684 Nat_98) (x_2685 list_43))
	(diseqlist_43 nil_43 (cons_43 x_2684 x_2685))))
(assert (forall ((x_2686 Nat_98) (x_2687 list_43))
	(diseqlist_43 (cons_43 x_2686 x_2687) nil_43)))
(assert (forall ((x_2688 Nat_98) (x_2689 list_43) (x_2690 Nat_98) (x_2691 list_43))
	(=> (diseqNat_98 x_2688 x_2690)
	    (diseqlist_43 (cons_43 x_2688 x_2689) (cons_43 x_2690 x_2691)))))
(assert (forall ((x_2688 Nat_98) (x_2689 list_43) (x_2690 Nat_98) (x_2691 list_43))
	(=> (diseqlist_43 x_2689 x_2691)
	    (diseqlist_43 (cons_43 x_2688 x_2689) (cons_43 x_2690 x_2691)))))
(declare-datatypes ((list_44 0)) (((nil_44 ) (cons_44 (head_87 pair_14) (tail_87 list_44)))))
(declare-fun diseqlist_44 (list_44 list_44) Bool)
(declare-fun head_89 (pair_14 list_44) Bool)
(declare-fun tail_89 (list_44 list_44) Bool)
(declare-fun isnil_44 (list_44) Bool)
(declare-fun iscons_44 (list_44) Bool)
(assert (forall ((x_2693 pair_14) (x_2694 list_44))
	(head_89 x_2693 (cons_44 x_2693 x_2694))))
(assert (forall ((x_2693 pair_14) (x_2694 list_44))
	(tail_89 x_2694 (cons_44 x_2693 x_2694))))
(assert (isnil_44 nil_44))
(assert (forall ((x_2696 pair_14) (x_2697 list_44))
	(iscons_44 (cons_44 x_2696 x_2697))))
(assert (forall ((x_2698 pair_14) (x_2699 list_44))
	(diseqlist_44 nil_44 (cons_44 x_2698 x_2699))))
(assert (forall ((x_2700 pair_14) (x_2701 list_44))
	(diseqlist_44 (cons_44 x_2700 x_2701) nil_44)))
(assert (forall ((x_2702 pair_14) (x_2703 list_44) (x_2704 pair_14) (x_2705 list_44))
	(=> (diseqpair_7 x_2702 x_2704)
	    (diseqlist_44 (cons_44 x_2702 x_2703) (cons_44 x_2704 x_2705)))))
(assert (forall ((x_2702 pair_14) (x_2703 list_44) (x_2704 pair_14) (x_2705 list_44))
	(=> (diseqlist_44 x_2703 x_2705)
	    (diseqlist_44 (cons_44 x_2702 x_2703) (cons_44 x_2704 x_2705)))))
(declare-datatypes ((Nat_97 0)) (((Z_273 ) (S_97 (projS_94 Nat_97)))))
(declare-fun diseqNat_97 (Nat_97 Nat_97) Bool)
(declare-fun projS_95 (Nat_97 Nat_97) Bool)
(declare-fun isZ_97 (Nat_97) Bool)
(declare-fun isS_97 (Nat_97) Bool)
(assert (forall ((x_2707 Nat_97))
	(projS_95 x_2707 (S_97 x_2707))))
(assert (isZ_97 Z_273))
(assert (forall ((x_2709 Nat_97))
	(isS_97 (S_97 x_2709))))
(assert (forall ((x_2710 Nat_97))
	(diseqNat_97 Z_273 (S_97 x_2710))))
(assert (forall ((x_2711 Nat_97))
	(diseqNat_97 (S_97 x_2711) Z_273)))
(assert (forall ((x_2712 Nat_97) (x_2713 Nat_97))
	(=> (diseqNat_97 x_2712 x_2713)
	    (diseqNat_97 (S_97 x_2712) (S_97 x_2713)))))
(declare-fun zip_7 (list_44 list_43 list_43) Bool)
(assert (forall ((x_2639 list_44) (x_2625 Nat_98) (x_2626 list_43) (z_274 Nat_98) (x_2624 list_43))
	(=> (zip_7 x_2639 x_2624 x_2626)
	    (zip_7 (cons_44 (pair_15 z_274 x_2625) x_2639) (cons_43 z_274 x_2624) (cons_43 x_2625 x_2626)))))
(assert (forall ((z_274 Nat_98) (x_2624 list_43))
	(zip_7 nil_44 (cons_43 z_274 x_2624) nil_43)))
(assert (forall ((y_215 list_43))
	(zip_7 nil_44 nil_43 y_215)))
(declare-fun take_9 (list_43 Nat_97 list_43) Bool)
(assert (forall ((x_2643 list_43) (x_2628 Nat_98) (x_2629 list_43) (z_275 Nat_97))
	(=> (take_9 x_2643 z_275 x_2629)
	    (take_9 (cons_43 x_2628 x_2643) (S_97 z_275) (cons_43 x_2628 x_2629)))))
(assert (forall ((z_275 Nat_97))
	(take_9 nil_43 (S_97 z_275) nil_43)))
(assert (forall ((y_216 list_43))
	(take_9 nil_43 Z_273 y_216)))
(declare-fun len_8 (Nat_97 list_43) Bool)
(assert (forall ((x_2647 Nat_97) (y_217 Nat_98) (xs_77 list_43))
	(=> (len_8 x_2647 xs_77)
	    (len_8 (S_97 x_2647) (cons_43 y_217 xs_77)))))
(assert (len_8 Z_273 nil_43))
(declare-fun drop_9 (list_43 Nat_97 list_43) Bool)
(assert (forall ((x_2649 list_43) (x_2632 Nat_98) (x_2633 list_43) (z_276 Nat_97))
	(=> (drop_9 x_2649 z_276 x_2633)
	    (drop_9 x_2649 (S_97 z_276) (cons_43 x_2632 x_2633)))))
(assert (forall ((z_276 Nat_97))
	(drop_9 nil_43 (S_97 z_276) nil_43)))
(assert (forall ((x_2652 list_43))
	(drop_9 x_2652 Z_273 x_2652)))
(declare-fun x_2634 (list_43 list_43 list_43) Bool)
(assert (forall ((x_2654 list_43) (z_277 Nat_98) (xs_78 list_43) (y_219 list_43))
	(=> (x_2634 x_2654 xs_78 y_219)
	    (x_2634 (cons_43 z_277 x_2654) (cons_43 z_277 xs_78) y_219))))
(assert (forall ((x_2655 list_43))
	(x_2634 x_2655 nil_43 x_2655)))
(declare-fun x_2636 (list_44 list_44 list_44) Bool)
(assert (forall ((x_2657 list_44) (z_278 pair_14) (xs_79 list_44) (y_220 list_44))
	(=> (x_2636 x_2657 xs_79 y_220)
	    (x_2636 (cons_44 z_278 x_2657) (cons_44 z_278 xs_79) y_220))))
(assert (forall ((x_2658 list_44))
	(x_2636 x_2658 nil_44 x_2658)))
(assert (forall ((x_2659 list_43) (x_2660 list_44) (x_2661 Nat_97) (x_2662 list_43) (x_2663 list_44) (x_2664 Nat_97) (x_2665 list_43) (x_2666 list_44) (x_2667 list_44) (xs_80 list_43) (ys_21 list_43) (zs_1 list_43))
	(=>	(and true
			(diseqlist_44 x_2660 x_2667)
			(x_2634 x_2659 ys_21 zs_1)
			(zip_7 x_2660 xs_80 x_2659)
			(len_8 x_2661 ys_21)
			(take_9 x_2662 x_2661 xs_80)
			(zip_7 x_2663 x_2662 ys_21)
			(len_8 x_2664 ys_21)
			(drop_9 x_2665 x_2664 xs_80)
			(zip_7 x_2666 x_2665 zs_1)
			(x_2636 x_2667 x_2663 x_2666))
		false)))
(check-sat)
