(set-logic HORN)
(define-fun zero_28 () Int 0)
(define-fun succ_28 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_125 0)) (((false_125) (true_125))))
(declare-fun diseqBool_55 (Bool_125 Bool_125) Bool)
(declare-fun isfalse_55 (Bool_125) Bool)
(declare-fun istrue_55 (Bool_125) Bool)
(assert (isfalse_55 false_125))
(assert (istrue_55 true_125))
(assert (diseqBool_55 false_125 true_125))
(assert (diseqBool_55 true_125 false_125))
(declare-fun and_125 (Bool_125 Bool_125 Bool_125) Bool)
(declare-fun or_126 (Bool_125 Bool_125 Bool_125) Bool)
(declare-fun hence_125 (Bool_125 Bool_125 Bool_125) Bool)
(declare-fun not_125 (Bool_125 Bool_125) Bool)
(assert (and_125 false_125 false_125 false_125))
(assert (and_125 false_125 true_125 false_125))
(assert (and_125 false_125 false_125 true_125))
(assert (and_125 true_125 true_125 true_125))
(assert (or_126 false_125 false_125 false_125))
(assert (or_126 true_125 true_125 false_125))
(assert (or_126 true_125 false_125 true_125))
(assert (or_126 true_125 true_125 true_125))
(assert (hence_125 true_125 false_125 false_125))
(assert (hence_125 false_125 true_125 false_125))
(assert (hence_125 true_125 false_125 true_125))
(assert (hence_125 true_125 true_125 true_125))
(assert (not_125 true_125 false_125))
(assert (not_125 false_125 true_125))
(declare-fun p_80 (Int Int) Bool)
(declare-fun iszero_28 (Int) Bool)
(declare-fun issucc_28 (Int) Bool)
(assert (forall ((x_18215 Int))
	(p_80 x_18215 (succ_28 x_18215))))
(assert (iszero_28 zero_28))
(assert (forall ((x_18217 Int))
	(issucc_28 (succ_28 x_18217))))
(declare-datatypes ((list_92 0)) (((nil_99) (cons_92 (head_184 Int) (tail_184 list_92)))))
(declare-fun diseqlist_92 (list_92 list_92) Bool)
(declare-fun head_186 (Int list_92) Bool)
(declare-fun tail_186 (list_92 list_92) Bool)
(declare-fun isnil_99 (list_92) Bool)
(declare-fun iscons_92 (list_92) Bool)
(assert (forall ((x_18223 Int) (x_18224 list_92))
	(head_186 x_18223 (cons_92 x_18223 x_18224))))
(assert (forall ((x_18223 Int) (x_18224 list_92))
	(tail_186 x_18224 (cons_92 x_18223 x_18224))))
(assert (isnil_99 nil_99))
(assert (forall ((x_18226 Int) (x_18227 list_92))
	(iscons_92 (cons_92 x_18226 x_18227))))
(assert (forall ((x_18228 Int) (x_18229 list_92))
	(diseqlist_92 nil_99 (cons_92 x_18228 x_18229))))
(assert (forall ((x_18230 Int) (x_18231 list_92))
	(diseqlist_92 (cons_92 x_18230 x_18231) nil_99)))
(assert (forall ((x_18232 Int) (x_18233 list_92) (x_18234 Int) (x_18235 list_92))
	(=> (distinct x_18232 x_18234) (diseqlist_92 (cons_92 x_18232 x_18233) (cons_92 x_18234 x_18235)))))
(assert (forall ((x_18232 Int) (x_18233 list_92) (x_18234 Int) (x_18235 list_92))
	(=> (diseqlist_92 x_18233 x_18235) (diseqlist_92 (cons_92 x_18232 x_18233) (cons_92 x_18234 x_18235)))))
(declare-datatypes ((list_93 0)) (((nil_100) (cons_93 (head_185 list_92) (tail_185 list_93)))))
(declare-fun diseqlist_93 (list_93 list_93) Bool)
(declare-fun head_187 (list_92 list_93) Bool)
(declare-fun tail_187 (list_93 list_93) Bool)
(declare-fun isnil_100 (list_93) Bool)
(declare-fun iscons_93 (list_93) Bool)
(assert (forall ((x_18237 list_92) (x_18238 list_93))
	(head_187 x_18237 (cons_93 x_18237 x_18238))))
(assert (forall ((x_18237 list_92) (x_18238 list_93))
	(tail_187 x_18238 (cons_93 x_18237 x_18238))))
(assert (isnil_100 nil_100))
(assert (forall ((x_18240 list_92) (x_18241 list_93))
	(iscons_93 (cons_93 x_18240 x_18241))))
(assert (forall ((x_18242 list_92) (x_18243 list_93))
	(diseqlist_93 nil_100 (cons_93 x_18242 x_18243))))
(assert (forall ((x_18244 list_92) (x_18245 list_93))
	(diseqlist_93 (cons_93 x_18244 x_18245) nil_100)))
(assert (forall ((x_18246 list_92) (x_18247 list_93) (x_18248 list_92) (x_18249 list_93))
	(=> (diseqlist_92 x_18246 x_18248) (diseqlist_93 (cons_93 x_18246 x_18247) (cons_93 x_18248 x_18249)))))
(assert (forall ((x_18246 list_92) (x_18247 list_93) (x_18248 list_92) (x_18249 list_93))
	(=> (diseqlist_93 x_18247 x_18249) (diseqlist_93 (cons_93 x_18246 x_18247) (cons_93 x_18248 x_18249)))))
(declare-fun leq_11 (Bool_125 Int Int) Bool)
(assert (forall ((x Int) (y Int))
	(=> (distinct x y) (leq_11 false_125 x y))))
(assert (forall ((x Int) (y Int))
	(=> (= x y) (leq_11 true_125 x y))))
(assert (forall ((y_687 Int))
	(leq_11 true_125 zero_28 y_687)))
(declare-fun lmerge_3 (list_92 list_92 list_92) Bool)
(assert (forall ((x_18166 list_92) (x_18151 Int) (x_18152 list_92) (z_705 Int) (x_18150 list_92))
	(=> (and (lmerge_3 x_18166 x_18150 (cons_92 x_18151 x_18152)) (leq_11 true_125 z_705 x_18151)) (lmerge_3 (cons_92 z_705 x_18166) (cons_92 z_705 x_18150) (cons_92 x_18151 x_18152)))))
(assert (forall ((x_18169 list_92) (x_18151 Int) (x_18152 list_92) (z_705 Int) (x_18150 list_92))
	(=> (and (lmerge_3 x_18169 (cons_92 z_705 x_18150) x_18152) (leq_11 false_125 z_705 x_18151)) (lmerge_3 (cons_92 x_18151 x_18169) (cons_92 z_705 x_18150) (cons_92 x_18151 x_18152)))))
(assert (forall ((z_705 Int) (x_18150 list_92))
	(lmerge_3 (cons_92 z_705 x_18150) (cons_92 z_705 x_18150) nil_99)))
(assert (forall ((x_18171 list_92))
	(lmerge_3 x_18171 nil_99 x_18171)))
(declare-fun pairwise_0 (list_93 list_93) Bool)
(assert (forall ((x_18173 list_92) (x_18174 list_93) (ys_56 list_92) (xss_0 list_93) (xs_216 list_92))
	(=> (and (lmerge_3 x_18173 xs_216 ys_56) (pairwise_0 x_18174 xss_0)) (pairwise_0 (cons_93 x_18173 x_18174) (cons_93 xs_216 (cons_93 ys_56 xss_0))))))
(assert (forall ((xs_216 list_92))
	(pairwise_0 (cons_93 xs_216 nil_100) (cons_93 xs_216 nil_100))))
(assert (pairwise_0 nil_100 nil_100))
(declare-fun mergingbu_0 (list_92 list_93) Bool)
(assert (forall ((x_18177 list_92) (x_18178 list_93) (z_706 list_92) (x_18155 list_93) (xs_217 list_92))
	(=> (and (pairwise_0 x_18178 (cons_93 xs_217 (cons_93 z_706 x_18155))) (mergingbu_0 x_18177 x_18178)) (mergingbu_0 x_18177 (cons_93 xs_217 (cons_93 z_706 x_18155))))))
(assert (forall ((x_18180 list_92))
	(mergingbu_0 x_18180 (cons_93 x_18180 nil_100))))
(assert (mergingbu_0 nil_99 nil_100))
(declare-fun risers_0 (list_93 list_92) Bool)
(assert (forall ((ys_57 list_92) (yss_0 list_93) (y_692 Int) (xs_218 list_92) (y_691 Int))
	(=> (and (risers_0 (cons_93 ys_57 yss_0) (cons_92 y_692 xs_218)) (leq_11 true_125 y_691 y_692)) (risers_0 (cons_93 (cons_92 y_691 ys_57) yss_0) (cons_92 y_691 (cons_92 y_692 xs_218))))))
(assert (forall ((x_18187 list_93) (y_692 Int) (xs_218 list_92) (y_691 Int))
	(=> (and (risers_0 x_18187 (cons_92 y_692 xs_218)) (leq_11 false_125 y_691 y_692)) (risers_0 (cons_93 (cons_92 y_691 nil_99) x_18187) (cons_92 y_691 (cons_92 y_692 xs_218))))))
(assert (forall ((y_692 Int) (xs_218 list_92) (y_691 Int))
	(=> (and (risers_0 nil_100 (cons_92 y_692 xs_218)) (leq_11 true_125 y_691 y_692)) (risers_0 nil_100 (cons_92 y_691 (cons_92 y_692 xs_218))))))
(assert (forall ((x_18193 list_93) (y_692 Int) (xs_218 list_92) (y_691 Int))
	(=> (and (risers_0 x_18193 (cons_92 y_692 xs_218)) (leq_11 false_125 y_691 y_692)) (risers_0 (cons_93 (cons_92 y_691 nil_99) x_18193) (cons_92 y_691 (cons_92 y_692 xs_218))))))
(assert (forall ((y_691 Int))
	(risers_0 (cons_93 (cons_92 y_691 nil_99) nil_100) (cons_92 y_691 nil_99))))
(assert (risers_0 nil_100 nil_99))
(declare-fun msortbu_0 (list_92 list_92) Bool)
(assert (forall ((x_18196 list_92) (x_18197 list_93) (x_18157 list_92))
	(=> (and (risers_0 x_18197 x_18157) (mergingbu_0 x_18196 x_18197)) (msortbu_0 x_18196 x_18157))))
(declare-fun insert_6 (list_92 Int list_92) Bool)
(assert (forall ((z_708 Int) (xs_219 list_92) (x_18158 Int))
	(=> (leq_11 true_125 x_18158 z_708) (insert_6 (cons_92 x_18158 (cons_92 z_708 xs_219)) x_18158 (cons_92 z_708 xs_219)))))
(assert (forall ((x_18203 list_92) (z_708 Int) (xs_219 list_92) (x_18158 Int))
	(=> (and (insert_6 x_18203 x_18158 xs_219) (leq_11 false_125 x_18158 z_708)) (insert_6 (cons_92 z_708 x_18203) x_18158 (cons_92 z_708 xs_219)))))
(assert (forall ((x_18158 Int))
	(insert_6 (cons_92 x_18158 nil_99) x_18158 nil_99)))
(declare-fun isort_6 (list_92 list_92) Bool)
(assert (forall ((x_18205 list_92) (x_18206 list_92) (y_694 Int) (xs_220 list_92))
	(=> (and (isort_6 x_18206 xs_220) (insert_6 x_18205 y_694 x_18206)) (isort_6 x_18205 (cons_92 y_694 xs_220)))))
(assert (isort_6 nil_99 nil_99))
(assert (forall ((x_18209 list_92) (x_18210 list_92) (xs_221 list_92))
	(=> (and true (diseqlist_92 x_18209 x_18210) (msortbu_0 x_18209 xs_221) (isort_6 x_18210 xs_221)) false)))
(check-sat)