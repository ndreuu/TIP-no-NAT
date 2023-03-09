(set-logic HORN)
(declare-datatypes ((Bool_28 0)) (((false_28 ) (true_28 ))))
(declare-fun diseqBool_8 (Bool_28 Bool_28) Bool)
(declare-fun isfalse_8 (Bool_28) Bool)
(declare-fun istrue_8 (Bool_28) Bool)
(assert (isfalse_8 false_28))
(assert (istrue_8 true_28))
(assert (diseqBool_8 false_28 true_28))
(assert (diseqBool_8 true_28 false_28))
(declare-fun and_28 (Bool_28 Bool_28 Bool_28) Bool)
(declare-fun or_28 (Bool_28 Bool_28 Bool_28) Bool)
(declare-fun hence_28 (Bool_28 Bool_28 Bool_28) Bool)
(declare-fun not_28 (Bool_28 Bool_28) Bool)
(assert (and_28 false_28 false_28 false_28))
(assert (and_28 false_28 true_28 false_28))
(assert (and_28 false_28 false_28 true_28))
(assert (and_28 true_28 true_28 true_28))
(assert (or_28 false_28 false_28 false_28))
(assert (or_28 true_28 true_28 false_28))
(assert (or_28 true_28 false_28 true_28))
(assert (or_28 true_28 true_28 true_28))
(assert (hence_28 true_28 false_28 false_28))
(assert (hence_28 false_28 true_28 false_28))
(assert (hence_28 true_28 false_28 true_28))
(assert (hence_28 true_28 true_28 true_28))
(assert (not_28 true_28 false_28))
(assert (not_28 false_28 true_28))
(declare-datatypes ((Nat_53 0)) (((Z_152 ) (S_53 (projS_50 Nat_53)))))
(declare-fun diseqNat_53 (Nat_53 Nat_53) Bool)
(declare-fun projS_51 (Nat_53 Nat_53) Bool)
(declare-fun isZ_53 (Nat_53) Bool)
(declare-fun isS_53 (Nat_53) Bool)
(assert (forall ((x_1575 Nat_53))
	(projS_51 x_1575 (S_53 x_1575))))
(assert (isZ_53 Z_152))
(assert (forall ((x_1577 Nat_53))
	(isS_53 (S_53 x_1577))))
(assert (forall ((x_1578 Nat_53))
	(diseqNat_53 Z_152 (S_53 x_1578))))
(assert (forall ((x_1579 Nat_53))
	(diseqNat_53 (S_53 x_1579) Z_152)))
(assert (forall ((x_1580 Nat_53) (x_1581 Nat_53))
	(=> (diseqNat_53 x_1580 x_1581)
	    (diseqNat_53 (S_53 x_1580) (S_53 x_1581)))))
(declare-datatypes ((list_28 0)) (((nil_28 ) (cons_28 (head_56 Nat_53) (tail_56 list_28)))))
(declare-fun diseqlist_28 (list_28 list_28) Bool)
(declare-fun head_57 (Nat_53 list_28) Bool)
(declare-fun tail_57 (list_28 list_28) Bool)
(declare-fun isnil_28 (list_28) Bool)
(declare-fun iscons_28 (list_28) Bool)
(assert (forall ((x_1583 Nat_53) (x_1584 list_28))
	(head_57 x_1583 (cons_28 x_1583 x_1584))))
(assert (forall ((x_1583 Nat_53) (x_1584 list_28))
	(tail_57 x_1584 (cons_28 x_1583 x_1584))))
(assert (isnil_28 nil_28))
(assert (forall ((x_1586 Nat_53) (x_1587 list_28))
	(iscons_28 (cons_28 x_1586 x_1587))))
(assert (forall ((x_1588 Nat_53) (x_1589 list_28))
	(diseqlist_28 nil_28 (cons_28 x_1588 x_1589))))
(assert (forall ((x_1590 Nat_53) (x_1591 list_28))
	(diseqlist_28 (cons_28 x_1590 x_1591) nil_28)))
(assert (forall ((x_1592 Nat_53) (x_1593 list_28) (x_1594 Nat_53) (x_1595 list_28))
	(=> (diseqNat_53 x_1592 x_1594)
	    (diseqlist_28 (cons_28 x_1592 x_1593) (cons_28 x_1594 x_1595)))))
(assert (forall ((x_1592 Nat_53) (x_1593 list_28) (x_1594 Nat_53) (x_1595 list_28))
	(=> (diseqlist_28 x_1593 x_1595)
	    (diseqlist_28 (cons_28 x_1592 x_1593) (cons_28 x_1594 x_1595)))))
(declare-fun x_1542 (Bool_28 Nat_53 Nat_53) Bool)
(assert (forall ((x_1549 Bool_28) (y_121 Nat_53) (x_1544 Nat_53))
	(=> (x_1542 x_1549 x_1544 y_121)
	    (x_1542 x_1549 (S_53 x_1544) (S_53 y_121)))))
(assert (forall ((x_1544 Nat_53))
	(x_1542 false_28 (S_53 x_1544) Z_152)))
(assert (forall ((z_153 Nat_53))
	(x_1542 false_28 Z_152 (S_53 z_153))))
(assert (x_1542 true_28 Z_152 Z_152))
(declare-fun count_3 (Nat_53 Nat_53 list_28) Bool)
(assert (forall ((x_1556 Nat_53) (z_154 Nat_53) (ys_15 list_28) (x_1545 Nat_53))
	(=>	(and (count_3 x_1556 x_1545 ys_15)
			(x_1542 true_28 x_1545 z_154))
		(count_3 (S_53 x_1556) x_1545 (cons_28 z_154 ys_15)))))
(assert (forall ((x_1558 Nat_53) (z_154 Nat_53) (ys_15 list_28) (x_1545 Nat_53))
	(=>	(and (count_3 x_1558 x_1545 ys_15)
			(x_1542 false_28 x_1545 z_154))
		(count_3 x_1558 x_1545 (cons_28 z_154 ys_15)))))
(assert (forall ((x_1545 Nat_53))
	(count_3 Z_152 x_1545 nil_28)))
(declare-fun x_1546 (list_28 list_28 list_28) Bool)
(assert (forall ((x_1562 list_28) (z_155 Nat_53) (xs_42 list_28) (y_123 list_28))
	(=> (x_1546 x_1562 xs_42 y_123)
	    (x_1546 (cons_28 z_155 x_1562) (cons_28 z_155 xs_42) y_123))))
(assert (forall ((x_1563 list_28))
	(x_1546 x_1563 nil_28 x_1563)))
(declare-fun rev_1 (list_28 list_28) Bool)
(assert (forall ((x_1564 list_28) (x_1565 list_28) (y_124 Nat_53) (xs_43 list_28))
	(=>	(and (rev_1 x_1565 xs_43)
			(x_1546 x_1564 x_1565 (cons_28 y_124 nil_28)))
		(rev_1 x_1564 (cons_28 y_124 xs_43)))))
(assert (rev_1 nil_28 nil_28))
(assert (forall ((x_1568 Nat_53) (x_1569 list_28) (x_1570 Nat_53) (n_12 Nat_53) (xs_44 list_28))
	(=>	(and true
			(diseqNat_53 x_1568 x_1570)
			(count_3 x_1568 n_12 xs_44)
			(rev_1 x_1569 xs_44)
			(count_3 x_1570 n_12 x_1569))
		false)))
(check-sat)
