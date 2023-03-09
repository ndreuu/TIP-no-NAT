(set-logic HORN)
(declare-datatypes ((Bool_120 0)) (((false_120 ) (true_120 ))))
(declare-fun diseqBool_53 (Bool_120 Bool_120) Bool)
(declare-fun isfalse_53 (Bool_120) Bool)
(declare-fun istrue_53 (Bool_120) Bool)
(assert (isfalse_53 false_120))
(assert (istrue_53 true_120))
(assert (diseqBool_53 false_120 true_120))
(assert (diseqBool_53 true_120 false_120))
(declare-fun and_120 (Bool_120 Bool_120 Bool_120) Bool)
(declare-fun or_121 (Bool_120 Bool_120 Bool_120) Bool)
(declare-fun hence_120 (Bool_120 Bool_120 Bool_120) Bool)
(declare-fun not_120 (Bool_120 Bool_120) Bool)
(assert (and_120 false_120 false_120 false_120))
(assert (and_120 false_120 true_120 false_120))
(assert (and_120 false_120 false_120 true_120))
(assert (and_120 true_120 true_120 true_120))
(assert (or_121 false_120 false_120 false_120))
(assert (or_121 true_120 true_120 false_120))
(assert (or_121 true_120 false_120 true_120))
(assert (or_121 true_120 true_120 true_120))
(assert (hence_120 true_120 false_120 false_120))
(assert (hence_120 false_120 true_120 false_120))
(assert (hence_120 true_120 false_120 true_120))
(assert (hence_120 true_120 true_120 true_120))
(assert (not_120 true_120 false_120))
(assert (not_120 false_120 true_120))
(declare-datatypes ((Nat_218 0)) (((zero_25 ) (succ_25 (p_72 Nat_218)))))
(declare-fun diseqNat_218 (Nat_218 Nat_218) Bool)
(declare-fun p_73 (Nat_218 Nat_218) Bool)
(declare-fun iszero_25 (Nat_218) Bool)
(declare-fun issucc_25 (Nat_218) Bool)
(assert (forall ((x_17753 Nat_218))
	(p_73 x_17753 (succ_25 x_17753))))
(assert (iszero_25 zero_25))
(assert (forall ((x_17755 Nat_218))
	(issucc_25 (succ_25 x_17755))))
(assert (forall ((x_17756 Nat_218))
	(diseqNat_218 zero_25 (succ_25 x_17756))))
(assert (forall ((x_17757 Nat_218))
	(diseqNat_218 (succ_25 x_17757) zero_25)))
(assert (forall ((x_17758 Nat_218) (x_17759 Nat_218))
	(=> (diseqNat_218 x_17758 x_17759)
	    (diseqNat_218 (succ_25 x_17758) (succ_25 x_17759)))))
(declare-datatypes ((list_89 0)) (((nil_96 ) (cons_89 (head_178 Nat_218) (tail_178 list_89)))))
(declare-fun diseqlist_89 (list_89 list_89) Bool)
(declare-fun head_179 (Nat_218 list_89) Bool)
(declare-fun tail_179 (list_89 list_89) Bool)
(declare-fun isnil_96 (list_89) Bool)
(declare-fun iscons_89 (list_89) Bool)
(assert (forall ((x_17761 Nat_218) (x_17762 list_89))
	(head_179 x_17761 (cons_89 x_17761 x_17762))))
(assert (forall ((x_17761 Nat_218) (x_17762 list_89))
	(tail_179 x_17762 (cons_89 x_17761 x_17762))))
(assert (isnil_96 nil_96))
(assert (forall ((x_17764 Nat_218) (x_17765 list_89))
	(iscons_89 (cons_89 x_17764 x_17765))))
(assert (forall ((x_17766 Nat_218) (x_17767 list_89))
	(diseqlist_89 nil_96 (cons_89 x_17766 x_17767))))
(assert (forall ((x_17768 Nat_218) (x_17769 list_89))
	(diseqlist_89 (cons_89 x_17768 x_17769) nil_96)))
(assert (forall ((x_17770 Nat_218) (x_17771 list_89) (x_17772 Nat_218) (x_17773 list_89))
	(=> (diseqNat_218 x_17770 x_17772)
	    (diseqlist_89 (cons_89 x_17770 x_17771) (cons_89 x_17772 x_17773)))))
(assert (forall ((x_17770 Nat_218) (x_17771 list_89) (x_17772 Nat_218) (x_17773 list_89))
	(=> (diseqlist_89 x_17771 x_17773)
	    (diseqlist_89 (cons_89 x_17770 x_17771) (cons_89 x_17772 x_17773)))))
(declare-datatypes ((pair_28 0)) (((pair_29 (projpair_56 list_89) (projpair_57 list_89)))))
(declare-fun diseqpair_14 (pair_28 pair_28) Bool)
(declare-fun projpair_58 (list_89 pair_28) Bool)
(declare-fun projpair_59 (list_89 pair_28) Bool)
(declare-fun ispair_14 (pair_28) Bool)
(assert (forall ((x_17774 list_89) (x_17775 list_89))
	(projpair_58 x_17774 (pair_29 x_17774 x_17775))))
(assert (forall ((x_17774 list_89) (x_17775 list_89))
	(projpair_59 x_17775 (pair_29 x_17774 x_17775))))
(assert (forall ((x_17777 list_89) (x_17778 list_89))
	(ispair_14 (pair_29 x_17777 x_17778))))
(assert (forall ((x_17779 list_89) (x_17780 list_89) (x_17781 list_89) (x_17782 list_89))
	(=> (diseqlist_89 x_17779 x_17781)
	    (diseqpair_14 (pair_29 x_17779 x_17780) (pair_29 x_17781 x_17782)))))
(assert (forall ((x_17779 list_89) (x_17780 list_89) (x_17781 list_89) (x_17782 list_89))
	(=> (diseqlist_89 x_17780 x_17782)
	    (diseqpair_14 (pair_29 x_17779 x_17780) (pair_29 x_17781 x_17782)))))
(declare-fun take_18 (list_89 Nat_218 list_89) Bool)
(assert (forall ((x_17665 list_89) (z_662 Nat_218) (xs_198 list_89) (z_661 Nat_218))
	(=> (take_18 x_17665 z_661 xs_198)
	    (take_18 (cons_89 z_662 x_17665) (succ_25 z_661) (cons_89 z_662 xs_198)))))
(assert (forall ((z_661 Nat_218))
	(take_18 nil_96 (succ_25 z_661) nil_96)))
(assert (forall ((y_629 list_89))
	(take_18 nil_96 zero_25 y_629)))
(declare-fun plus_25 (Nat_218 Nat_218 Nat_218) Bool)
(assert (forall ((x_17669 Nat_218) (z_663 Nat_218) (y_630 Nat_218))
	(=> (plus_25 x_17669 z_663 y_630)
	    (plus_25 (succ_25 x_17669) (succ_25 z_663) y_630))))
(assert (forall ((x_17670 Nat_218))
	(plus_25 x_17670 zero_25 x_17670)))
(declare-fun minus_122 (Nat_218 Nat_218 Nat_218) Bool)
(assert (forall ((x_17671 Nat_218) (y_632 Nat_218) (z_664 Nat_218))
	(=> (minus_122 x_17671 z_664 y_632)
	    (minus_122 x_17671 (succ_25 z_664) (succ_25 y_632)))))
(assert (forall ((z_664 Nat_218))
	(minus_122 zero_25 (succ_25 z_664) zero_25)))
(assert (forall ((y_631 Nat_218))
	(minus_122 zero_25 zero_25 y_631)))
(declare-fun lt_123 (Bool_120 Nat_218 Nat_218) Bool)
(assert (forall ((x_17675 Bool_120) (n_38 Nat_218) (z_665 Nat_218))
	(=> (lt_123 x_17675 n_38 z_665)
	    (lt_123 x_17675 (succ_25 n_38) (succ_25 z_665)))))
(assert (forall ((z_665 Nat_218))
	(lt_123 true_120 zero_25 (succ_25 z_665))))
(assert (forall ((x_17642 Nat_218))
	(lt_123 false_120 x_17642 zero_25)))
(declare-fun leq_9 (Bool_120 Nat_218 Nat_218) Bool)
(assert (forall ((x_17679 Bool_120) (x_17644 Nat_218) (z_666 Nat_218))
	(=> (leq_9 x_17679 z_666 x_17644)
	    (leq_9 x_17679 (succ_25 z_666) (succ_25 x_17644)))))
(assert (forall ((z_666 Nat_218))
	(leq_9 false_120 (succ_25 z_666) zero_25)))
(assert (forall ((y_634 Nat_218))
	(leq_9 true_120 zero_25 y_634)))
(declare-fun ordered_4 (Bool_120 list_89) Bool)
(assert (forall ((x_17683 Bool_120) (x_17684 Bool_120) (x_17685 Bool_120) (y_636 Nat_218) (xs_199 list_89) (y_635 Nat_218))
	(=>	(and (leq_9 x_17684 y_635 y_636)
			(ordered_4 x_17685 (cons_89 y_636 xs_199))
			(and_120 x_17683 x_17684 x_17685))
		(ordered_4 x_17683 (cons_89 y_635 (cons_89 y_636 xs_199))))))
(assert (forall ((y_635 Nat_218))
	(ordered_4 true_120 (cons_89 y_635 nil_96))))
(assert (ordered_4 true_120 nil_96))
(declare-fun sort_8 (list_89 Nat_218 Nat_218) Bool)
(assert (forall ((x_17646 Nat_218) (y_637 Nat_218))
	(=> (leq_9 true_120 x_17646 y_637)
	    (sort_8 (cons_89 x_17646 (cons_89 y_637 nil_96)) x_17646 y_637))))
(assert (forall ((x_17646 Nat_218) (y_637 Nat_218))
	(=> (leq_9 false_120 x_17646 y_637)
	    (sort_8 (cons_89 y_637 (cons_89 x_17646 nil_96)) x_17646 y_637))))
(declare-fun length_5 (Nat_218 list_89) Bool)
(assert (forall ((x_17692 Nat_218) (x_17693 Nat_218) (y_638 Nat_218) (l_7 list_89))
	(=>	(and (length_5 x_17693 l_7)
			(plus_25 x_17692 (succ_25 zero_25) x_17693))
		(length_5 x_17692 (cons_89 y_638 l_7)))))
(assert (length_5 zero_25 nil_96))
(declare-fun idiv_2 (Nat_218 Nat_218 Nat_218) Bool)
(assert (forall ((x_17648 Nat_218) (y_639 Nat_218))
	(=> (lt_123 true_120 x_17648 y_639)
	    (idiv_2 zero_25 x_17648 y_639))))
(assert (forall ((x_17700 Nat_218) (x_17701 Nat_218) (x_17648 Nat_218) (y_639 Nat_218))
	(=>	(and (minus_122 x_17700 x_17648 y_639)
			(idiv_2 x_17701 x_17700 y_639)
			(lt_123 false_120 x_17648 y_639))
		(idiv_2 (succ_25 x_17701) x_17648 y_639))))
(declare-fun drop_20 (list_89 Nat_218 list_89) Bool)
(assert (forall ((x_17702 list_89) (z_669 Nat_218) (xs_200 list_89) (z_668 Nat_218))
	(=> (drop_20 x_17702 z_668 xs_200)
	    (drop_20 x_17702 (succ_25 z_668) (cons_89 z_669 xs_200)))))
(assert (forall ((z_668 Nat_218))
	(drop_20 nil_96 (succ_25 z_668) nil_96)))
(assert (forall ((x_17705 list_89))
	(drop_20 x_17705 zero_25 x_17705)))
(declare-fun splitAt_3 (pair_28 Nat_218 list_89) Bool)
(assert (forall ((x_17707 list_89) (x_17708 list_89) (x_17650 Nat_218) (y_641 list_89))
	(=>	(and (take_18 x_17707 x_17650 y_641)
			(drop_20 x_17708 x_17650 y_641))
		(splitAt_3 (pair_29 x_17707 x_17708) x_17650 y_641))))
(declare-fun x_17651 (list_89 list_89 list_89) Bool)
(assert (forall ((x_17710 list_89) (z_670 Nat_218) (xs_201 list_89) (y_642 list_89))
	(=> (x_17651 x_17710 xs_201 y_642)
	    (x_17651 (cons_89 z_670 x_17710) (cons_89 z_670 xs_201) y_642))))
(assert (forall ((x_17711 list_89))
	(x_17651 x_17711 nil_96 x_17711)))
(declare-fun reverse_3 (list_89 list_89) Bool)
(assert (forall ((x_17712 list_89) (x_17713 list_89) (y_643 Nat_218) (xs_202 list_89))
	(=>	(and (reverse_3 x_17713 xs_202)
			(x_17651 x_17712 x_17713 (cons_89 y_643 nil_96)))
		(reverse_3 x_17712 (cons_89 y_643 xs_202)))))
(assert (reverse_3 nil_96 nil_96))
(declare-fun stoogesort_3 (list_89 list_89) Bool)
(declare-fun stoogesort_4 (list_89 list_89) Bool)
(declare-fun stoogesort_5 (list_89 list_89) Bool)
(assert (forall ((x_17720 list_89) (x_17721 list_89) (x_17722 list_89) (x_17716 Nat_218) (x_17717 Nat_218) (x_17718 list_89) (ys_52 list_89) (zs_11 list_89) (x_17654 list_89))
	(=>	(and (stoogesort_4 x_17721 zs_11)
			(reverse_3 x_17722 ys_52)
			(x_17651 x_17720 x_17721 x_17722)
			(length_5 x_17716 x_17654)
			(idiv_2 x_17717 x_17716 (succ_25 (succ_25 (succ_25 zero_25))))
			(reverse_3 x_17718 x_17654)
			(splitAt_3 (pair_29 ys_52 zs_11) x_17717 x_17718))
		(stoogesort_3 x_17720 x_17654))))
(assert (forall ((x_17724 list_89) (x_17725 list_89) (x_17726 list_89) (x_17657 Nat_218) (x_17658 list_89) (y_645 Nat_218) (y_644 Nat_218))
	(=>	(and (stoogesort_3 x_17725 (cons_89 y_644 (cons_89 y_645 (cons_89 x_17657 x_17658))))
			(stoogesort_5 x_17726 x_17725)
			(stoogesort_3 x_17724 x_17726))
		(stoogesort_4 x_17724 (cons_89 y_644 (cons_89 y_645 (cons_89 x_17657 x_17658)))))))
(assert (forall ((x_17728 list_89) (y_645 Nat_218) (y_644 Nat_218))
	(=> (sort_8 x_17728 y_644 y_645)
	    (stoogesort_4 x_17728 (cons_89 y_644 (cons_89 y_645 nil_96))))))
(assert (forall ((y_644 Nat_218))
	(stoogesort_4 (cons_89 y_644 nil_96) (cons_89 y_644 nil_96))))
(assert (stoogesort_4 nil_96 nil_96))
(assert (forall ((x_17735 list_89) (x_17736 list_89) (x_17732 Nat_218) (x_17733 Nat_218) (ys_53 list_89) (zs_12 list_89) (x_17659 list_89))
	(=>	(and (stoogesort_4 x_17736 zs_12)
			(x_17651 x_17735 ys_53 x_17736)
			(length_5 x_17732 x_17659)
			(idiv_2 x_17733 x_17732 (succ_25 (succ_25 (succ_25 zero_25))))
			(splitAt_3 (pair_29 ys_53 zs_12) x_17733 x_17659))
		(stoogesort_5 x_17735 x_17659))))
(assert (forall ((x_17738 Nat_218) (x_17739 Nat_218) (x_17740 Nat_218) (x_17741 Nat_218) (x_17660 Nat_218) (y_646 Nat_218) (z_672 Nat_218))
	(=>	(and true
			(diseqNat_218 x_17739 x_17741)
			(plus_25 x_17738 y_646 z_672)
			(plus_25 x_17739 x_17660 x_17738)
			(plus_25 x_17740 x_17660 y_646)
			(plus_25 x_17741 x_17740 z_672))
		false)))
(assert (forall ((x_17742 Nat_218) (x_17743 Nat_218) (x_17661 Nat_218) (y_647 Nat_218))
	(=>	(and true
			(diseqNat_218 x_17742 x_17743)
			(plus_25 x_17742 x_17661 y_647)
			(plus_25 x_17743 y_647 x_17661))
		false)))
(assert (forall ((x_17744 Nat_218) (x_17662 Nat_218))
	(=>	(and true
			(diseqNat_218 x_17744 x_17662)
			(plus_25 x_17744 x_17662 zero_25))
		false)))
(assert (forall ((x_17745 Nat_218) (x_17663 Nat_218))
	(=>	(and true
			(diseqNat_218 x_17745 x_17663)
			(plus_25 x_17745 zero_25 x_17663))
		false)))
(assert (forall ((x_17746 list_89) (xs_203 list_89))
	(=>	(and true
			(stoogesort_4 x_17746 xs_203)
			(ordered_4 false_120 x_17746))
		false)))
(check-sat)