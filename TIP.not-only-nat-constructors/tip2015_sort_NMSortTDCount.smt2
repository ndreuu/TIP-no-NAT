(set-logic HORN)
(define-fun Z_646 () Int 0)
(define-fun S_197 ((x Int)) Int (+ x 1))
(declare-fun unS_233 (Int Int) Bool)
(declare-fun isZ_189 (Int) Bool)
(declare-fun isS_189 (Int) Bool)
(assert (forall ((x_15258 Int))
	(unS_233 x_15258 (S_197 x_15258))))
(assert (isZ_189 Z_646))
(assert (forall ((x_15260 Int))
	(isS_189 (S_197 x_15260))))
(declare-fun add_121 (Int Int Int) Bool)
(declare-fun minus_118 (Int Int Int) Bool)
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (+ x y)) (add_121 z x y))))
(assert (forall ((z Int) (x Int) (y Int)) (=> (= z (- x y)) (minus_118 z x y))))
(declare-datatypes ((list_86 0)) (((nil_92) (cons_86 (head_172 Int) (tail_172 list_86)))))
(declare-fun diseqlist_86 (list_86 list_86) Bool)
(declare-fun head_173 (Int list_86) Bool)
(declare-fun tail_173 (list_86 list_86) Bool)
(declare-fun isnil_92 (list_86) Bool)
(declare-fun iscons_86 (list_86) Bool)
(assert (forall ((x_15266 Int) (x_15267 list_86))
	(head_173 x_15266 (cons_86 x_15266 x_15267))))
(assert (forall ((x_15266 Int) (x_15267 list_86))
	(tail_173 x_15267 (cons_86 x_15266 x_15267))))
(assert (isnil_92 nil_92))
(assert (forall ((x_15269 Int) (x_15270 list_86))
	(iscons_86 (cons_86 x_15269 x_15270))))
(assert (forall ((x_15271 Int) (x_15272 list_86))
	(diseqlist_86 nil_92 (cons_86 x_15271 x_15272))))
(assert (forall ((x_15273 Int) (x_15274 list_86))
	(diseqlist_86 (cons_86 x_15273 x_15274) nil_92)))
(assert (forall ((x_15275 Int) (x_15276 list_86) (x_15277 Int) (x_15278 list_86))
	(=> (distinct x_15275 x_15277) (diseqlist_86 (cons_86 x_15275 x_15276) (cons_86 x_15277 x_15278)))))
(assert (forall ((x_15275 Int) (x_15276 list_86) (x_15277 Int) (x_15278 list_86))
	(=> (diseqlist_86 x_15276 x_15278) (diseqlist_86 (cons_86 x_15275 x_15276) (cons_86 x_15277 x_15278)))))
(declare-fun take_17 (list_86 Int list_86) Bool)
(assert (forall ((x_15195 Int) (y_603 list_86))
	(=> (<= x_15195 Z_646) (take_17 nil_92 x_15195 y_603))))
(assert (forall ((x_15251 Int) (x_15210 list_86) (z_641 Int) (xs_190 list_86) (x_15195 Int))
	(=> (and (> x_15195 Z_646) (take_17 x_15210 x_15251 xs_190) (minus_118 x_15251 x_15195 (S_197 Z_646))) (take_17 (cons_86 z_641 x_15210) x_15195 (cons_86 z_641 xs_190)))))
(assert (forall ((x_15195 Int) (y_603 list_86))
	(=> (<= x_15195 Z_646) (take_17 nil_92 x_15195 y_603))))
(assert (forall ((x_15195 Int))
	(=> (> x_15195 Z_646) (take_17 nil_92 x_15195 nil_92))))
(declare-fun nmsorttdhalf_0 (Int Int) Bool)
(assert (nmsorttdhalf_0 Z_646 (S_197 Z_646)))
(assert (=> (distinct Z_646 (S_197 Z_646)) (nmsorttdhalf_0 Z_646 Z_646)))
(assert (nmsorttdhalf_0 Z_646 (S_197 Z_646)))
(assert (forall ((x_15253 Int) (x_15216 Int) (x_15217 Int) (x_15196 Int))
	(=> (and (distinct x_15196 (S_197 Z_646)) (distinct x_15196 Z_646) (nmsorttdhalf_0 x_15217 x_15253) (minus_118 x_15253 x_15196 (S_197 (S_197 Z_646))) (add_121 x_15216 (S_197 Z_646) x_15217)) (nmsorttdhalf_0 x_15216 x_15196))))
(declare-fun lmerge_1 (list_86 list_86 list_86) Bool)
(assert (forall ((x_15219 list_86) (x_15199 Int) (x_15200 list_86) (z_642 Int) (x_15198 list_86))
	(=> (and (<= z_642 x_15199) (lmerge_1 x_15219 x_15198 (cons_86 x_15199 x_15200))) (lmerge_1 (cons_86 z_642 x_15219) (cons_86 z_642 x_15198) (cons_86 x_15199 x_15200)))))
(assert (forall ((x_15221 list_86) (x_15199 Int) (x_15200 list_86) (z_642 Int) (x_15198 list_86))
	(=> (and (> z_642 x_15199) (lmerge_1 x_15221 (cons_86 z_642 x_15198) x_15200)) (lmerge_1 (cons_86 x_15199 x_15221) (cons_86 z_642 x_15198) (cons_86 x_15199 x_15200)))))
(assert (forall ((z_642 Int) (x_15198 list_86))
	(lmerge_1 (cons_86 z_642 x_15198) (cons_86 z_642 x_15198) nil_92)))
(assert (forall ((x_15223 list_86))
	(lmerge_1 x_15223 nil_92 x_15223)))
(declare-fun length_4 (Int list_86) Bool)
(assert (forall ((x_15224 Int) (x_15225 Int) (y_605 Int) (l_6 list_86))
	(=> (and (length_4 x_15225 l_6) (add_121 x_15224 (S_197 Z_646) x_15225)) (length_4 x_15224 (cons_86 y_605 l_6)))))
(assert (length_4 Z_646 nil_92))
(declare-fun drop_19 (list_86 Int list_86) Bool)
(assert (forall ((x_15227 list_86) (x_15202 Int))
	(=> (<= x_15202 Z_646) (drop_19 x_15227 x_15202 x_15227))))
(assert (forall ((x_15255 Int) (x_15228 list_86) (z_643 Int) (xs_191 list_86) (x_15202 Int))
	(=> (and (> x_15202 Z_646) (drop_19 x_15228 x_15255 xs_191) (minus_118 x_15255 x_15202 (S_197 Z_646))) (drop_19 x_15228 x_15202 (cons_86 z_643 xs_191)))))
(assert (forall ((x_15230 list_86) (x_15202 Int))
	(=> (<= x_15202 Z_646) (drop_19 x_15230 x_15202 x_15230))))
(assert (forall ((x_15202 Int))
	(=> (> x_15202 Z_646) (drop_19 nil_92 x_15202 nil_92))))
(declare-fun nmsorttd_0 (list_86 list_86) Bool)
(assert (forall ((x_15234 list_86) (x_15235 list_86) (x_15236 list_86) (x_15237 list_86) (x_15238 list_86) (x_15232 Int) (k_4 Int) (x_15204 Int) (x_15205 list_86) (y_607 Int))
	(=> (and (take_17 x_15235 k_4 (cons_86 y_607 (cons_86 x_15204 x_15205))) (nmsorttd_0 x_15236 x_15235) (drop_19 x_15237 k_4 (cons_86 y_607 (cons_86 x_15204 x_15205))) (nmsorttd_0 x_15238 x_15237) (lmerge_1 x_15234 x_15236 x_15238) (length_4 x_15232 (cons_86 y_607 (cons_86 x_15204 x_15205))) (nmsorttdhalf_0 k_4 x_15232)) (nmsorttd_0 x_15234 (cons_86 y_607 (cons_86 x_15204 x_15205))))))
(assert (forall ((y_607 Int))
	(nmsorttd_0 (cons_86 y_607 nil_92) (cons_86 y_607 nil_92))))
(assert (nmsorttd_0 nil_92 nil_92))
(declare-fun count_14 (Int Int list_86) Bool)
(assert (forall ((x_15242 Int) (x_15243 Int) (ys_51 list_86) (x_15206 Int))
	(=> (and (count_14 x_15243 x_15206 ys_51) (add_121 x_15242 (S_197 Z_646) x_15243)) (count_14 x_15242 x_15206 (cons_86 x_15206 ys_51)))))
(assert (forall ((x_15244 Int) (z_645 Int) (ys_51 list_86) (x_15206 Int))
	(=> (and (distinct x_15206 z_645) (count_14 x_15244 x_15206 ys_51)) (count_14 x_15244 x_15206 (cons_86 z_645 ys_51)))))
(assert (forall ((x_15206 Int))
	(count_14 Z_646 x_15206 nil_92)))
(assert (forall ((x_15247 list_86) (x_15248 Int) (x_15249 Int) (x_15207 Int) (xs_192 list_86))
	(=> (and true (distinct x_15248 x_15249) (nmsorttd_0 x_15247 xs_192) (count_14 x_15248 x_15207 x_15247) (count_14 x_15249 x_15207 xs_192)) false)))
(check-sat)
