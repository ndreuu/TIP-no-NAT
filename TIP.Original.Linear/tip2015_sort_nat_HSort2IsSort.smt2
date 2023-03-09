(set-logic HORN)
(declare-datatypes ((Bool_87 0)) (((false_87 ) (true_87 ))))
(declare-fun diseqBool_36 (Bool_87 Bool_87) Bool)
(declare-fun isfalse_36 (Bool_87) Bool)
(declare-fun istrue_36 (Bool_87) Bool)
(assert (isfalse_36 false_87))
(assert (istrue_36 true_87))
(assert (diseqBool_36 false_87 true_87))
(assert (diseqBool_36 true_87 false_87))
(declare-fun and_87 (Bool_87 Bool_87 Bool_87) Bool)
(declare-fun or_87 (Bool_87 Bool_87 Bool_87) Bool)
(declare-fun hence_87 (Bool_87 Bool_87 Bool_87) Bool)
(declare-fun not_87 (Bool_87 Bool_87) Bool)
(assert (and_87 false_87 false_87 false_87))
(assert (and_87 false_87 true_87 false_87))
(assert (and_87 false_87 false_87 true_87))
(assert (and_87 true_87 true_87 true_87))
(assert (or_87 false_87 false_87 false_87))
(assert (or_87 true_87 true_87 false_87))
(assert (or_87 true_87 false_87 true_87))
(assert (or_87 true_87 true_87 true_87))
(assert (hence_87 true_87 false_87 false_87))
(assert (hence_87 false_87 true_87 false_87))
(assert (hence_87 true_87 false_87 true_87))
(assert (hence_87 true_87 true_87 true_87))
(assert (not_87 true_87 false_87))
(assert (not_87 false_87 true_87))
(declare-datatypes ((Nat_166 0)) (((zero_6 ) (succ_6 (p_12 Nat_166)))))
(declare-fun diseqNat_166 (Nat_166 Nat_166) Bool)
(declare-fun p_13 (Nat_166 Nat_166) Bool)
(declare-fun iszero_6 (Nat_166) Bool)
(declare-fun issucc_6 (Nat_166) Bool)
(assert (forall ((x_4593 Nat_166))
	(p_13 x_4593 (succ_6 x_4593))))
(assert (iszero_6 zero_6))
(assert (forall ((x_4595 Nat_166))
	(issucc_6 (succ_6 x_4595))))
(assert (forall ((x_4596 Nat_166))
	(diseqNat_166 zero_6 (succ_6 x_4596))))
(assert (forall ((x_4597 Nat_166))
	(diseqNat_166 (succ_6 x_4597) zero_6)))
(assert (forall ((x_4598 Nat_166) (x_4599 Nat_166))
	(=> (diseqNat_166 x_4598 x_4599)
	    (diseqNat_166 (succ_6 x_4598) (succ_6 x_4599)))))
(declare-datatypes ((list_69 0)) (((nil_70 ) (cons_69 (head_138 Nat_166) (tail_138 list_69)))))
(declare-fun diseqlist_69 (list_69 list_69) Bool)
(declare-fun head_139 (Nat_166 list_69) Bool)
(declare-fun tail_139 (list_69 list_69) Bool)
(declare-fun isnil_70 (list_69) Bool)
(declare-fun iscons_69 (list_69) Bool)
(assert (forall ((x_4601 Nat_166) (x_4602 list_69))
	(head_139 x_4601 (cons_69 x_4601 x_4602))))
(assert (forall ((x_4601 Nat_166) (x_4602 list_69))
	(tail_139 x_4602 (cons_69 x_4601 x_4602))))
(assert (isnil_70 nil_70))
(assert (forall ((x_4604 Nat_166) (x_4605 list_69))
	(iscons_69 (cons_69 x_4604 x_4605))))
(assert (forall ((x_4606 Nat_166) (x_4607 list_69))
	(diseqlist_69 nil_70 (cons_69 x_4606 x_4607))))
(assert (forall ((x_4608 Nat_166) (x_4609 list_69))
	(diseqlist_69 (cons_69 x_4608 x_4609) nil_70)))
(assert (forall ((x_4610 Nat_166) (x_4611 list_69) (x_4612 Nat_166) (x_4613 list_69))
	(=> (diseqNat_166 x_4610 x_4612)
	    (diseqlist_69 (cons_69 x_4610 x_4611) (cons_69 x_4612 x_4613)))))
(assert (forall ((x_4610 Nat_166) (x_4611 list_69) (x_4612 Nat_166) (x_4613 list_69))
	(=> (diseqlist_69 x_4611 x_4613)
	    (diseqlist_69 (cons_69 x_4610 x_4611) (cons_69 x_4612 x_4613)))))
(declare-datatypes ((Heap_1 0)) (((Node_2 (projNode_12 Heap_1) (projNode_13 Nat_166) (projNode_14 Heap_1)) (Nil_71 ))))
(declare-fun diseqHeap_1 (Heap_1 Heap_1) Bool)
(declare-fun projNode_15 (Heap_1 Heap_1) Bool)
(declare-fun projNode_16 (Nat_166 Heap_1) Bool)
(declare-fun projNode_17 (Heap_1 Heap_1) Bool)
(declare-fun isNode_2 (Heap_1) Bool)
(declare-fun isNil_71 (Heap_1) Bool)
(assert (forall ((x_4614 Heap_1) (x_4615 Nat_166) (x_4616 Heap_1))
	(projNode_15 x_4614 (Node_2 x_4614 x_4615 x_4616))))
(assert (forall ((x_4614 Heap_1) (x_4615 Nat_166) (x_4616 Heap_1))
	(projNode_16 x_4615 (Node_2 x_4614 x_4615 x_4616))))
(assert (forall ((x_4614 Heap_1) (x_4615 Nat_166) (x_4616 Heap_1))
	(projNode_17 x_4616 (Node_2 x_4614 x_4615 x_4616))))
(assert (forall ((x_4619 Heap_1) (x_4620 Nat_166) (x_4621 Heap_1))
	(isNode_2 (Node_2 x_4619 x_4620 x_4621))))
(assert (isNil_71 Nil_71))
(assert (forall ((x_4622 Heap_1) (x_4623 Nat_166) (x_4624 Heap_1))
	(diseqHeap_1 (Node_2 x_4622 x_4623 x_4624) Nil_71)))
(assert (forall ((x_4625 Heap_1) (x_4626 Nat_166) (x_4627 Heap_1))
	(diseqHeap_1 Nil_71 (Node_2 x_4625 x_4626 x_4627))))
(assert (forall ((x_4628 Heap_1) (x_4629 Nat_166) (x_4630 Heap_1) (x_4631 Heap_1) (x_4632 Nat_166) (x_4633 Heap_1))
	(=> (diseqHeap_1 x_4628 x_4631)
	    (diseqHeap_1 (Node_2 x_4628 x_4629 x_4630) (Node_2 x_4631 x_4632 x_4633)))))
(assert (forall ((x_4628 Heap_1) (x_4629 Nat_166) (x_4630 Heap_1) (x_4631 Heap_1) (x_4632 Nat_166) (x_4633 Heap_1))
	(=> (diseqNat_166 x_4629 x_4632)
	    (diseqHeap_1 (Node_2 x_4628 x_4629 x_4630) (Node_2 x_4631 x_4632 x_4633)))))
(assert (forall ((x_4628 Heap_1) (x_4629 Nat_166) (x_4630 Heap_1) (x_4631 Heap_1) (x_4632 Nat_166) (x_4633 Heap_1))
	(=> (diseqHeap_1 x_4630 x_4633)
	    (diseqHeap_1 (Node_2 x_4628 x_4629 x_4630) (Node_2 x_4631 x_4632 x_4633)))))
(declare-fun leq_2 (Bool_87 Nat_166 Nat_166) Bool)
(assert (forall ((x_4552 Bool_87) (x_4539 Nat_166) (z_466 Nat_166))
	(=> (leq_2 x_4552 z_466 x_4539)
	    (leq_2 x_4552 (succ_6 z_466) (succ_6 x_4539)))))
(assert (forall ((z_466 Nat_166))
	(leq_2 false_87 (succ_6 z_466) zero_6)))
(assert (forall ((y_378 Nat_166))
	(leq_2 true_87 zero_6 y_378)))
(declare-fun insert_0 (list_69 Nat_166 list_69) Bool)
(assert (forall ((z_467 Nat_166) (xs_132 list_69) (x_4540 Nat_166))
	(=> (leq_2 true_87 x_4540 z_467)
	    (insert_0 (cons_69 x_4540 (cons_69 z_467 xs_132)) x_4540 (cons_69 z_467 xs_132)))))
(assert (forall ((x_4560 list_69) (z_467 Nat_166) (xs_132 list_69) (x_4540 Nat_166))
	(=>	(and (insert_0 x_4560 x_4540 xs_132)
			(leq_2 false_87 x_4540 z_467))
		(insert_0 (cons_69 z_467 x_4560) x_4540 (cons_69 z_467 xs_132)))))
(assert (forall ((x_4540 Nat_166))
	(insert_0 (cons_69 x_4540 nil_70) x_4540 nil_70)))
(declare-fun isort_0 (list_69 list_69) Bool)
(assert (forall ((x_4562 list_69) (x_4563 list_69) (y_380 Nat_166) (xs_133 list_69))
	(=>	(and (isort_0 x_4563 xs_133)
			(insert_0 x_4562 y_380 x_4563))
		(isort_0 x_4562 (cons_69 y_380 xs_133)))))
(assert (isort_0 nil_70 nil_70))
(declare-fun hmerge_1 (Heap_1 Heap_1 Heap_1) Bool)
(assert (forall ((x_4566 Heap_1))
	(hmerge_1 x_4566 Nil_71 x_4566)))
(assert (forall ((z_468 Heap_1) (x_4543 Nat_166) (x_4544 Heap_1))
	(hmerge_1 (Node_2 z_468 x_4543 x_4544) (Node_2 z_468 x_4543 x_4544) Nil_71)))
(assert (forall ((x_4570 Heap_1) (x_4545 Heap_1) (x_4546 Nat_166) (x_4547 Heap_1) (z_468 Heap_1) (x_4543 Nat_166) (x_4544 Heap_1))
	(=>	(and (hmerge_1 x_4570 x_4544 (Node_2 x_4545 x_4546 x_4547))
			(leq_2 true_87 x_4543 x_4546))
		(hmerge_1 (Node_2 x_4570 x_4543 z_468) (Node_2 z_468 x_4543 x_4544) (Node_2 x_4545 x_4546 x_4547)))))
(assert (forall ((x_4573 Heap_1) (x_4545 Heap_1) (x_4546 Nat_166) (x_4547 Heap_1) (z_468 Heap_1) (x_4543 Nat_166) (x_4544 Heap_1))
	(=>	(and (hmerge_1 x_4573 (Node_2 z_468 x_4543 x_4544) x_4547)
			(leq_2 false_87 x_4543 x_4546))
		(hmerge_1 (Node_2 x_4573 x_4546 x_4545) (Node_2 z_468 x_4543 x_4544) (Node_2 x_4545 x_4546 x_4547)))))
(declare-fun toList_1 (list_69 Heap_1) Bool)
(assert (toList_1 nil_70 Nil_71))
(assert (forall ((x_4576 Heap_1) (x_4577 list_69) (q_1 Heap_1) (y_382 Nat_166) (r_90 Heap_1))
	(=>	(and (hmerge_1 x_4576 q_1 r_90)
			(toList_1 x_4577 x_4576))
		(toList_1 (cons_69 y_382 x_4577) (Node_2 q_1 y_382 r_90)))))
(declare-fun hinsert_1 (Heap_1 Nat_166 Heap_1) Bool)
(assert (forall ((x_4578 Heap_1) (x_4549 Nat_166) (y_383 Heap_1))
	(=> (hmerge_1 x_4578 (Node_2 Nil_71 x_4549 Nil_71) y_383)
	    (hinsert_1 x_4578 x_4549 y_383))))
(declare-fun toHeap_1 (Heap_1 list_69) Bool)
(assert (forall ((x_4580 Heap_1) (x_4581 Heap_1) (y_384 Nat_166) (xs_134 list_69))
	(=>	(and (toHeap_1 x_4581 xs_134)
			(hinsert_1 x_4580 y_384 x_4581))
		(toHeap_1 x_4580 (cons_69 y_384 xs_134)))))
(assert (toHeap_1 Nil_71 nil_70))
(declare-fun hsort_1 (list_69 list_69) Bool)
(assert (forall ((x_4584 list_69) (x_4585 Heap_1) (x_4551 list_69))
	(=>	(and (toHeap_1 x_4585 x_4551)
			(toList_1 x_4584 x_4585))
		(hsort_1 x_4584 x_4551))))
(assert (forall ((x_4587 list_69) (x_4588 list_69) (xs_135 list_69))
	(=>	(and true
			(diseqlist_69 x_4587 x_4588)
			(hsort_1 x_4587 xs_135)
			(isort_0 x_4588 xs_135))
		false)))
(check-sat)
