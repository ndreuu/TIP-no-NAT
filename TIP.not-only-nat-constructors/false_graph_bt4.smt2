(set-logic HORN)
(define-fun Z_2199 () Int 0)
(define-fun S_514 ((x Int)) Int (+ x 1))
(declare-fun unS_737 (Int Int) Bool)
(declare-fun isZ_481 (Int) Bool)
(declare-fun isS_481 (Int) Bool)
(assert (forall ((x_57182 Int))
	(unS_737 x_57182 (S_514 x_57182))))
(assert (isZ_481 Z_2199))
(assert (forall ((x_57184 Int))
	(isS_481 (S_514 x_57184))))
(declare-fun add_394 (Int Int Int) Bool)
(declare-fun minus_389 (Int Int Int) Bool)
(declare-fun le_368 (Int Int) Bool)
(declare-fun ge_368 (Int Int) Bool)
(declare-fun lt_388 (Int Int) Bool)
(declare-fun gt_371 (Int Int) Bool)
(declare-fun mult_369 (Int Int Int) Bool)
(declare-fun div_368 (Int Int Int) Bool)
(declare-fun mod_370 (Int Int Int) Bool)
(assert (forall ((y_2442 Int))
	(add_394 y_2442 Z_2199 y_2442)))
(assert (forall ((x_57119 Int) (y_2442 Int) (r_449 Int))
	(=> (add_394 r_449 x_57119 y_2442) (add_394 (S_514 r_449) (S_514 x_57119) y_2442))))
(assert (forall ((y_2442 Int))
	(minus_389 Z_2199 Z_2199 y_2442)))
(assert (forall ((x_57119 Int) (y_2442 Int) (r_449 Int))
	(=> (minus_389 r_449 x_57119 y_2442) (minus_389 (S_514 r_449) (S_514 x_57119) y_2442))))
(assert (forall ((y_2442 Int))
	(le_368 Z_2199 y_2442)))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (le_368 x_57119 y_2442) (le_368 (S_514 x_57119) (S_514 y_2442)))))
(assert (forall ((y_2442 Int))
	(ge_368 y_2442 Z_2199)))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (ge_368 x_57119 y_2442) (ge_368 (S_514 x_57119) (S_514 y_2442)))))
(assert (forall ((y_2442 Int))
	(lt_388 Z_2199 (S_514 y_2442))))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (lt_388 x_57119 y_2442) (lt_388 (S_514 x_57119) (S_514 y_2442)))))
(assert (forall ((y_2442 Int))
	(gt_371 (S_514 y_2442) Z_2199)))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (gt_371 x_57119 y_2442) (gt_371 (S_514 x_57119) (S_514 y_2442)))))
(assert (forall ((y_2442 Int))
	(mult_369 Z_2199 Z_2199 y_2442)))
(assert (forall ((x_57119 Int) (y_2442 Int) (r_449 Int) (z_2200 Int))
	(=> (and (mult_369 r_449 x_57119 y_2442) (add_394 z_2200 r_449 y_2442)) (mult_369 z_2200 (S_514 x_57119) y_2442))))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (lt_388 x_57119 y_2442) (div_368 Z_2199 x_57119 y_2442))))
(assert (forall ((x_57119 Int) (y_2442 Int) (r_449 Int) (z_2200 Int))
	(=> (and (ge_368 x_57119 y_2442) (minus_389 z_2200 x_57119 y_2442) (div_368 r_449 z_2200 y_2442)) (div_368 (S_514 r_449) x_57119 y_2442))))
(assert (forall ((x_57119 Int) (y_2442 Int))
	(=> (lt_388 x_57119 y_2442) (mod_370 x_57119 x_57119 y_2442))))
(assert (forall ((x_57119 Int) (y_2442 Int) (r_449 Int) (z_2200 Int))
	(=> (and (ge_368 x_57119 y_2442) (minus_389 z_2200 x_57119 y_2442) (mod_370 r_449 z_2200 y_2442)) (mod_370 r_449 x_57119 y_2442))))
(declare-datatypes ((Bool_368 0)) (((false_368) (true_368))))
(declare-fun diseqBool_168 (Bool_368 Bool_368) Bool)
(declare-fun isfalse_168 (Bool_368) Bool)
(declare-fun istrue_168 (Bool_368) Bool)
(assert (isfalse_168 false_368))
(assert (istrue_168 true_368))
(assert (diseqBool_168 false_368 true_368))
(assert (diseqBool_168 true_368 false_368))
(declare-fun and_368 (Bool_368 Bool_368 Bool_368) Bool)
(declare-fun or_377 (Bool_368 Bool_368 Bool_368) Bool)
(declare-fun hence_368 (Bool_368 Bool_368 Bool_368) Bool)
(declare-fun not_373 (Bool_368 Bool_368) Bool)
(assert (and_368 false_368 false_368 false_368))
(assert (and_368 false_368 true_368 false_368))
(assert (and_368 false_368 false_368 true_368))
(assert (and_368 true_368 true_368 true_368))
(assert (or_377 false_368 false_368 false_368))
(assert (or_377 true_368 true_368 false_368))
(assert (or_377 true_368 false_368 true_368))
(assert (or_377 true_368 true_368 true_368))
(assert (hence_368 true_368 false_368 false_368))
(assert (hence_368 false_368 true_368 false_368))
(assert (hence_368 true_368 false_368 true_368))
(assert (hence_368 true_368 true_368 true_368))
(assert (not_373 true_368 false_368))
(assert (not_373 false_368 true_368))
(declare-datatypes ((pair_96 0)) (((pair_97 (projpair_192 Int) (projpair_193 Int)))))
(declare-fun diseqpair_48 (pair_96 pair_96) Bool)
(declare-fun projpair_196 (Int pair_96) Bool)
(declare-fun projpair_197 (Int pair_96) Bool)
(declare-fun ispair_48 (pair_96) Bool)
(assert (forall ((x_57191 Int) (x_57192 Int))
	(projpair_196 x_57191 (pair_97 x_57191 x_57192))))
(assert (forall ((x_57191 Int) (x_57192 Int))
	(projpair_197 x_57192 (pair_97 x_57191 x_57192))))
(assert (forall ((x_57194 Int) (x_57195 Int))
	(ispair_48 (pair_97 x_57194 x_57195))))
(assert (forall ((x_57196 Int) (x_57197 Int) (x_57198 Int) (x_57199 Int))
	(=> (distinct x_57196 x_57198) (diseqpair_48 (pair_97 x_57196 x_57197) (pair_97 x_57198 x_57199)))))
(assert (forall ((x_57196 Int) (x_57197 Int) (x_57198 Int) (x_57199 Int))
	(=> (distinct x_57197 x_57199) (diseqpair_48 (pair_97 x_57196 x_57197) (pair_97 x_57198 x_57199)))))
(declare-datatypes ((list_268 0)) (((nil_300) (cons_268 (head_536 Bool_368) (tail_536 list_268)))))
(declare-fun diseqlist_268 (list_268 list_268) Bool)
(declare-fun head_542 (Bool_368 list_268) Bool)
(declare-fun tail_542 (list_268 list_268) Bool)
(declare-fun isnil_300 (list_268) Bool)
(declare-fun iscons_268 (list_268) Bool)
(assert (forall ((x_57201 Bool_368) (x_57202 list_268))
	(head_542 x_57201 (cons_268 x_57201 x_57202))))
(assert (forall ((x_57201 Bool_368) (x_57202 list_268))
	(tail_542 x_57202 (cons_268 x_57201 x_57202))))
(assert (isnil_300 nil_300))
(assert (forall ((x_57204 Bool_368) (x_57205 list_268))
	(iscons_268 (cons_268 x_57204 x_57205))))
(assert (forall ((x_57206 Bool_368) (x_57207 list_268))
	(diseqlist_268 nil_300 (cons_268 x_57206 x_57207))))
(assert (forall ((x_57208 Bool_368) (x_57209 list_268))
	(diseqlist_268 (cons_268 x_57208 x_57209) nil_300)))
(assert (forall ((x_57210 Bool_368) (x_57211 list_268) (x_57212 Bool_368) (x_57213 list_268))
	(=> (diseqBool_168 x_57210 x_57212) (diseqlist_268 (cons_268 x_57210 x_57211) (cons_268 x_57212 x_57213)))))
(assert (forall ((x_57210 Bool_368) (x_57211 list_268) (x_57212 Bool_368) (x_57213 list_268))
	(=> (diseqlist_268 x_57211 x_57213) (diseqlist_268 (cons_268 x_57210 x_57211) (cons_268 x_57212 x_57213)))))
(declare-datatypes ((list_269 0)) (((nil_301) (cons_269 (head_537 Int) (tail_537 list_269)))))
(declare-fun diseqlist_269 (list_269 list_269) Bool)
(declare-fun head_543 (Int list_269) Bool)
(declare-fun tail_543 (list_269 list_269) Bool)
(declare-fun isnil_301 (list_269) Bool)
(declare-fun iscons_269 (list_269) Bool)
(assert (forall ((x_57215 Int) (x_57216 list_269))
	(head_543 x_57215 (cons_269 x_57215 x_57216))))
(assert (forall ((x_57215 Int) (x_57216 list_269))
	(tail_543 x_57216 (cons_269 x_57215 x_57216))))
(assert (isnil_301 nil_301))
(assert (forall ((x_57218 Int) (x_57219 list_269))
	(iscons_269 (cons_269 x_57218 x_57219))))
(assert (forall ((x_57220 Int) (x_57221 list_269))
	(diseqlist_269 nil_301 (cons_269 x_57220 x_57221))))
(assert (forall ((x_57222 Int) (x_57223 list_269))
	(diseqlist_269 (cons_269 x_57222 x_57223) nil_301)))
(assert (forall ((x_57224 Int) (x_57225 list_269) (x_57226 Int) (x_57227 list_269))
	(=> (distinct x_57224 x_57226) (diseqlist_269 (cons_269 x_57224 x_57225) (cons_269 x_57226 x_57227)))))
(assert (forall ((x_57224 Int) (x_57225 list_269) (x_57226 Int) (x_57227 list_269))
	(=> (diseqlist_269 x_57225 x_57227) (diseqlist_269 (cons_269 x_57224 x_57225) (cons_269 x_57226 x_57227)))))
(declare-datatypes ((list_270 0)) (((nil_302) (cons_270 (head_538 pair_96) (tail_538 list_270)))))
(declare-fun diseqlist_270 (list_270 list_270) Bool)
(declare-fun head_544 (pair_96 list_270) Bool)
(declare-fun tail_544 (list_270 list_270) Bool)
(declare-fun isnil_302 (list_270) Bool)
(declare-fun iscons_270 (list_270) Bool)
(assert (forall ((x_57229 pair_96) (x_57230 list_270))
	(head_544 x_57229 (cons_270 x_57229 x_57230))))
(assert (forall ((x_57229 pair_96) (x_57230 list_270))
	(tail_544 x_57230 (cons_270 x_57229 x_57230))))
(assert (isnil_302 nil_302))
(assert (forall ((x_57232 pair_96) (x_57233 list_270))
	(iscons_270 (cons_270 x_57232 x_57233))))
(assert (forall ((x_57234 pair_96) (x_57235 list_270))
	(diseqlist_270 nil_302 (cons_270 x_57234 x_57235))))
(assert (forall ((x_57236 pair_96) (x_57237 list_270))
	(diseqlist_270 (cons_270 x_57236 x_57237) nil_302)))
(assert (forall ((x_57238 pair_96) (x_57239 list_270) (x_57240 pair_96) (x_57241 list_270))
	(=> (diseqpair_48 x_57238 x_57240) (diseqlist_270 (cons_270 x_57238 x_57239) (cons_270 x_57240 x_57241)))))
(assert (forall ((x_57238 pair_96) (x_57239 list_270) (x_57240 pair_96) (x_57241 list_270))
	(=> (diseqlist_270 x_57239 x_57241) (diseqlist_270 (cons_270 x_57238 x_57239) (cons_270 x_57240 x_57241)))))
(declare-datatypes ((B_40 0)) (((I_5) (O_8))))
(declare-fun diseqB_0 (B_40 B_40) Bool)
(declare-fun isI_0 (B_40) Bool)
(declare-fun isO_0 (B_40) Bool)
(assert (isI_0 I_5))
(assert (isO_0 O_8))
(assert (diseqB_0 I_5 O_8))
(assert (diseqB_0 O_8 I_5))
(declare-datatypes ((list_271 0)) (((nil_303) (cons_271 (head_539 B_40) (tail_539 list_271)))))
(declare-fun diseqlist_271 (list_271 list_271) Bool)
(declare-fun head_545 (B_40 list_271) Bool)
(declare-fun tail_545 (list_271 list_271) Bool)
(declare-fun isnil_303 (list_271) Bool)
(declare-fun iscons_271 (list_271) Bool)
(assert (forall ((x_57245 B_40) (x_57246 list_271))
	(head_545 x_57245 (cons_271 x_57245 x_57246))))
(assert (forall ((x_57245 B_40) (x_57246 list_271))
	(tail_545 x_57246 (cons_271 x_57245 x_57246))))
(assert (isnil_303 nil_303))
(assert (forall ((x_57248 B_40) (x_57249 list_271))
	(iscons_271 (cons_271 x_57248 x_57249))))
(assert (forall ((x_57250 B_40) (x_57251 list_271))
	(diseqlist_271 nil_303 (cons_271 x_57250 x_57251))))
(assert (forall ((x_57252 B_40) (x_57253 list_271))
	(diseqlist_271 (cons_271 x_57252 x_57253) nil_303)))
(assert (forall ((x_57254 B_40) (x_57255 list_271) (x_57256 B_40) (x_57257 list_271))
	(=> (diseqB_0 x_57254 x_57256) (diseqlist_271 (cons_271 x_57254 x_57255) (cons_271 x_57256 x_57257)))))
(assert (forall ((x_57254 B_40) (x_57255 list_271) (x_57256 B_40) (x_57257 list_271))
	(=> (diseqlist_271 x_57255 x_57257) (diseqlist_271 (cons_271 x_57254 x_57255) (cons_271 x_57256 x_57257)))))
(declare-datatypes ((list_272 0)) (((nil_304) (cons_272 (head_540 list_271) (tail_540 list_272)))))
(declare-fun diseqlist_272 (list_272 list_272) Bool)
(declare-fun head_546 (list_271 list_272) Bool)
(declare-fun tail_546 (list_272 list_272) Bool)
(declare-fun isnil_304 (list_272) Bool)
(declare-fun iscons_272 (list_272) Bool)
(assert (forall ((x_57259 list_271) (x_57260 list_272))
	(head_546 x_57259 (cons_272 x_57259 x_57260))))
(assert (forall ((x_57259 list_271) (x_57260 list_272))
	(tail_546 x_57260 (cons_272 x_57259 x_57260))))
(assert (isnil_304 nil_304))
(assert (forall ((x_57262 list_271) (x_57263 list_272))
	(iscons_272 (cons_272 x_57262 x_57263))))
(assert (forall ((x_57264 list_271) (x_57265 list_272))
	(diseqlist_272 nil_304 (cons_272 x_57264 x_57265))))
(assert (forall ((x_57266 list_271) (x_57267 list_272))
	(diseqlist_272 (cons_272 x_57266 x_57267) nil_304)))
(assert (forall ((x_57268 list_271) (x_57269 list_272) (x_57270 list_271) (x_57271 list_272))
	(=> (diseqlist_271 x_57268 x_57270) (diseqlist_272 (cons_272 x_57268 x_57269) (cons_272 x_57270 x_57271)))))
(assert (forall ((x_57268 list_271) (x_57269 list_272) (x_57270 list_271) (x_57271 list_272))
	(=> (diseqlist_272 x_57269 x_57271) (diseqlist_272 (cons_272 x_57268 x_57269) (cons_272 x_57270 x_57271)))))
(declare-datatypes ((pair_98 0)) (((pair_99 (projpair_194 list_271) (projpair_195 list_271)))))
(declare-fun diseqpair_49 (pair_98 pair_98) Bool)
(declare-fun projpair_198 (list_271 pair_98) Bool)
(declare-fun projpair_199 (list_271 pair_98) Bool)
(declare-fun ispair_49 (pair_98) Bool)
(assert (forall ((x_57272 list_271) (x_57273 list_271))
	(projpair_198 x_57272 (pair_99 x_57272 x_57273))))
(assert (forall ((x_57272 list_271) (x_57273 list_271))
	(projpair_199 x_57273 (pair_99 x_57272 x_57273))))
(assert (forall ((x_57275 list_271) (x_57276 list_271))
	(ispair_49 (pair_99 x_57275 x_57276))))
(assert (forall ((x_57277 list_271) (x_57278 list_271) (x_57279 list_271) (x_57280 list_271))
	(=> (diseqlist_271 x_57277 x_57279) (diseqpair_49 (pair_99 x_57277 x_57278) (pair_99 x_57279 x_57280)))))
(assert (forall ((x_57277 list_271) (x_57278 list_271) (x_57279 list_271) (x_57280 list_271))
	(=> (diseqlist_271 x_57278 x_57280) (diseqpair_49 (pair_99 x_57277 x_57278) (pair_99 x_57279 x_57280)))))
(declare-datatypes ((list_273 0)) (((nil_305) (cons_273 (head_541 pair_98) (tail_541 list_273)))))
(declare-fun diseqlist_273 (list_273 list_273) Bool)
(declare-fun head_547 (pair_98 list_273) Bool)
(declare-fun tail_547 (list_273 list_273) Bool)
(declare-fun isnil_305 (list_273) Bool)
(declare-fun iscons_273 (list_273) Bool)
(assert (forall ((x_57282 pair_98) (x_57283 list_273))
	(head_547 x_57282 (cons_273 x_57282 x_57283))))
(assert (forall ((x_57282 pair_98) (x_57283 list_273))
	(tail_547 x_57283 (cons_273 x_57282 x_57283))))
(assert (isnil_305 nil_305))
(assert (forall ((x_57285 pair_98) (x_57286 list_273))
	(iscons_273 (cons_273 x_57285 x_57286))))
(assert (forall ((x_57287 pair_98) (x_57288 list_273))
	(diseqlist_273 nil_305 (cons_273 x_57287 x_57288))))
(assert (forall ((x_57289 pair_98) (x_57290 list_273))
	(diseqlist_273 (cons_273 x_57289 x_57290) nil_305)))
(assert (forall ((x_57291 pair_98) (x_57292 list_273) (x_57293 pair_98) (x_57294 list_273))
	(=> (diseqpair_49 x_57291 x_57293) (diseqlist_273 (cons_273 x_57291 x_57292) (cons_273 x_57293 x_57294)))))
(assert (forall ((x_57291 pair_98) (x_57292 list_273) (x_57293 pair_98) (x_57294 list_273))
	(=> (diseqlist_273 x_57292 x_57294) (diseqlist_273 (cons_273 x_57291 x_57292) (cons_273 x_57293 x_57294)))))
(declare-fun primEnumFromTo_0 (list_269 Int Int) Bool)
(assert (forall ((x_56919 Int) (y_2419 Int))
	(=> (gt_371 x_56919 y_2419) (primEnumFromTo_0 nil_301 x_56919 y_2419))))
(assert (forall ((x_57120 Int) (x_56961 list_269) (x_56919 Int) (y_2419 Int))
	(=> (and (le_368 x_56919 y_2419) (primEnumFromTo_0 x_56961 x_57120 y_2419) (add_394 x_57120 (S_514 Z_2199) x_56919)) (primEnumFromTo_0 (cons_269 x_56919 x_56961) x_56919 y_2419))))
(declare-fun or_376 (Bool_368 list_268) Bool)
(assert (forall ((x_56962 Bool_368) (x_56963 Bool_368) (y_2420 Bool_368) (xs_703 list_268))
	(=> (and (or_376 x_56963 xs_703) (or_377 x_56962 y_2420 x_56963)) (or_376 x_56962 (cons_268 y_2420 xs_703)))))
(assert (or_376 false_368 nil_300))
(declare-fun maximummaximum_0 (Int Int list_270) Bool)
(assert (forall ((x_56965 Int) (y_2423 Int) (y_2422 Int) (yzs_0 list_270) (x_56921 Int))
	(=> (and (le_368 y_2422 y_2423) (le_368 x_56921 y_2423) (maximummaximum_0 x_56965 y_2423 yzs_0)) (maximummaximum_0 x_56965 x_56921 (cons_270 (pair_97 y_2422 y_2423) yzs_0)))))
(assert (forall ((x_56967 Int) (y_2423 Int) (y_2422 Int) (yzs_0 list_270) (x_56921 Int))
	(=> (and (le_368 y_2422 y_2423) (gt_371 x_56921 y_2423) (maximummaximum_0 x_56967 x_56921 yzs_0)) (maximummaximum_0 x_56967 x_56921 (cons_270 (pair_97 y_2422 y_2423) yzs_0)))))
(assert (forall ((x_56969 Int) (y_2422 Int) (z_2184 Int) (yzs_0 list_270) (x_56921 Int))
	(=> (and (gt_371 y_2422 z_2184) (le_368 x_56921 y_2422) (maximummaximum_0 x_56969 y_2422 yzs_0)) (maximummaximum_0 x_56969 x_56921 (cons_270 (pair_97 y_2422 z_2184) yzs_0)))))
(assert (forall ((x_56971 Int) (y_2422 Int) (z_2184 Int) (yzs_0 list_270) (x_56921 Int))
	(=> (and (gt_371 y_2422 z_2184) (gt_371 x_56921 y_2422) (maximummaximum_0 x_56971 x_56921 yzs_0)) (maximummaximum_0 x_56971 x_56921 (cons_270 (pair_97 y_2422 z_2184) yzs_0)))))
(assert (forall ((x_56921 Int))
	(maximummaximum_0 x_56921 x_56921 nil_302)))
(declare-fun length_54 (Int list_272) Bool)
(assert (forall ((x_56974 Int) (x_56975 Int) (y_2424 list_271) (l_44 list_272))
	(=> (and (length_54 x_56975 l_44) (add_394 x_56974 (S_514 Z_2199) x_56975)) (length_54 x_56974 (cons_272 y_2424 l_44)))))
(assert (length_54 Z_2199 nil_304))
(declare-fun last_8 (list_271 list_271 list_272) Bool)
(assert (forall ((x_56977 list_271) (z_2185 list_271) (ys_200 list_272) (x_56923 list_271))
	(=> (last_8 x_56977 z_2185 ys_200) (last_8 x_56977 x_56923 (cons_272 z_2185 ys_200)))))
(assert (forall ((x_56923 list_271))
	(last_8 x_56923 x_56923 nil_304)))
(declare-fun dodeca_0 (list_270 Int list_269) Bool)
(assert (forall ((x_57122 Int) (x_57123 Int) (x_57124 Int) (x_57125 Int) (x_57126 Int) (x_57127 Int) (x_57128 Int) (x_56981 list_270) (z_2186 Int) (x_56925 list_269) (x_56924 Int))
	(=> (and (dodeca_0 x_56981 x_56924 x_56925) (add_394 x_57122 x_56924 x_56924) (add_394 x_57123 x_57122 x_56924) (add_394 x_57124 x_57123 z_2186) (add_394 x_57125 x_56924 x_56924) (add_394 x_57126 x_57125 x_56924) (add_394 x_57127 (S_514 Z_2199) z_2186) (add_394 x_57128 x_57126 x_57127)) (dodeca_0 (cons_270 (pair_97 x_57124 x_57128) x_56981) x_56924 (cons_269 z_2186 x_56925)))))
(assert (forall ((x_56924 Int))
	(dodeca_0 nil_302 x_56924 nil_301)))
(declare-fun dodeca_1 (list_270 Int list_269) Bool)
(assert (forall ((x_57129 Int) (x_57130 Int) (x_57131 Int) (x_57132 Int) (x_57133 Int) (x_56984 list_270) (z_2187 Int) (x_56927 list_269) (x_56926 Int))
	(=> (and (dodeca_1 x_56984 x_56926 x_56927) (add_394 x_57129 x_56926 x_56926) (add_394 x_57130 x_57129 z_2187) (add_394 x_57131 x_56926 x_56926) (add_394 x_57132 x_57131 x_56926) (add_394 x_57133 x_57132 z_2187)) (dodeca_1 (cons_270 (pair_97 x_57130 x_57133) x_56984) x_56926 (cons_269 z_2187 x_56927)))))
(assert (forall ((x_56926 Int))
	(dodeca_1 nil_302 x_56926 nil_301)))
(declare-fun dodeca_2 (list_270 Int list_269) Bool)
(assert (forall ((x_57134 Int) (x_57135 Int) (x_57136 Int) (x_57137 Int) (x_56987 list_270) (z_2188 Int) (x_56929 list_269) (x_56928 Int))
	(=> (and (dodeca_2 x_56987 x_56928 x_56929) (add_394 x_57134 (S_514 Z_2199) z_2188) (add_394 x_57135 x_56928 x_57134) (add_394 x_57136 x_56928 x_56928) (add_394 x_57137 x_57136 z_2188)) (dodeca_2 (cons_270 (pair_97 x_57135 x_57137) x_56987) x_56928 (cons_269 z_2188 x_56929)))))
(assert (forall ((x_56928 Int))
	(dodeca_2 nil_302 x_56928 nil_301)))
(declare-fun dodeca_3 (list_270 Int list_269) Bool)
(assert (forall ((x_57138 Int) (x_57139 Int) (x_57140 Int) (x_56990 list_270) (z_2189 Int) (x_56931 list_269) (x_56930 Int))
	(=> (and (dodeca_3 x_56990 x_56930 x_56931) (add_394 x_57138 x_56930 z_2189) (add_394 x_57139 x_56930 x_56930) (add_394 x_57140 x_57139 z_2189)) (dodeca_3 (cons_270 (pair_97 x_57138 x_57140) x_56990) x_56930 (cons_269 z_2189 x_56931)))))
(assert (forall ((x_56930 Int))
	(dodeca_3 nil_302 x_56930 nil_301)))
(declare-fun dodeca_4 (list_270 Int list_269) Bool)
(assert (forall ((x_57141 Int) (x_56993 list_270) (z_2190 Int) (x_56933 list_269) (x_56932 Int))
	(=> (and (dodeca_4 x_56993 x_56932 x_56933) (add_394 x_57141 x_56932 z_2190)) (dodeca_4 (cons_270 (pair_97 z_2190 x_57141) x_56993) x_56932 (cons_269 z_2190 x_56933)))))
(assert (forall ((x_56932 Int))
	(dodeca_4 nil_302 x_56932 nil_301)))
(declare-fun dodeca_5 (list_270 list_269) Bool)
(assert (forall ((x_57142 Int) (x_56996 list_270) (y_2431 Int) (z_2191 list_269))
	(=> (and (dodeca_5 x_56996 z_2191) (add_394 x_57142 (S_514 Z_2199) y_2431)) (dodeca_5 (cons_270 (pair_97 y_2431 x_57142) x_56996) (cons_269 y_2431 z_2191)))))
(assert (dodeca_5 nil_302 nil_301))
(declare-fun bin_16 (list_271 Int) Bool)
(assert (bin_16 nil_303 Z_2199))
(assert (forall ((x_57144 Int) (x_57000 list_271) (x_56935 Int))
	(=> (and (distinct x_56935 Z_2199) (bin_16 x_57000 x_57144) (div_368 x_57144 x_56935 (S_514 (S_514 Z_2199))) (mod_370 Z_2199 x_56935 (S_514 (S_514 Z_2199)))) (bin_16 (cons_271 O_8 x_57000) x_56935))))
(assert (bin_16 nil_303 Z_2199))
(assert (forall ((x_57146 Int) (x_57145 Int) (x_57003 list_271) (x_56935 Int))
	(=> (and (distinct x_56935 Z_2199) (distinct x_57145 Z_2199) (bin_16 x_57003 x_57146) (div_368 x_57146 x_56935 (S_514 (S_514 Z_2199))) (mod_370 x_57145 x_56935 (S_514 (S_514 Z_2199)))) (bin_16 (cons_271 I_5 x_57003) x_56935))))
(declare-fun bgraph_0 (list_273 list_270) Bool)
(assert (forall ((x_57005 list_271) (x_57006 list_271) (x_57007 list_273) (u_0 Int) (v_0 Int) (z_2192 list_270))
	(=> (and (bin_16 x_57005 u_0) (bin_16 x_57006 v_0) (bgraph_0 x_57007 z_2192)) (bgraph_0 (cons_273 (pair_99 x_57005 x_57006) x_57007) (cons_270 (pair_97 u_0 v_0) z_2192)))))
(assert (bgraph_0 nil_305 nil_302))
(declare-fun beq_0 (Bool_368 list_271 list_271) Bool)
(assert (forall ((x_57009 Bool_368) (zs_70 list_271) (xs_704 list_271))
	(=> (beq_0 x_57009 xs_704 zs_70) (beq_0 x_57009 (cons_271 O_8 xs_704) (cons_271 O_8 zs_70)))))
(assert (forall ((zs_70 list_271) (xs_704 list_271))
	(beq_0 false_368 (cons_271 O_8 xs_704) (cons_271 I_5 zs_70))))
(assert (forall ((xs_704 list_271))
	(beq_0 false_368 (cons_271 O_8 xs_704) nil_303)))
(assert (forall ((ys_201 list_271) (xs_704 list_271))
	(beq_0 false_368 (cons_271 I_5 xs_704) (cons_271 O_8 ys_201))))
(assert (forall ((x_57014 Bool_368) (ys_201 list_271) (xs_704 list_271))
	(=> (beq_0 x_57014 xs_704 ys_201) (beq_0 x_57014 (cons_271 I_5 xs_704) (cons_271 I_5 ys_201)))))
(assert (forall ((xs_704 list_271))
	(beq_0 false_368 (cons_271 I_5 xs_704) nil_303)))
(assert (forall ((z_2193 B_40) (x_56941 list_271))
	(beq_0 false_368 nil_303 (cons_271 z_2193 x_56941))))
(assert (beq_0 true_368 nil_303 nil_303))
(declare-fun bpath_0 (list_268 list_271 list_271 list_273) Bool)
(assert (forall ((x_57109 Bool_368) (x_57110 Bool_368) (x_57111 Bool_368) (x_57020 Bool_368) (x_57021 Bool_368) (x_57022 Bool_368) (x_57023 Bool_368) (x_57024 list_268) (u_1 list_271) (v_1 list_271) (x_56944 list_273) (x_56942 list_271) (y_2434 list_271))
	(=> (and (beq_0 x_57020 u_1 x_56942) (beq_0 x_57021 v_1 y_2434) (beq_0 x_57022 u_1 y_2434) (beq_0 x_57023 v_1 x_56942) (bpath_0 x_57024 x_56942 y_2434 x_56944) (and_368 x_57109 x_57020 x_57021) (and_368 x_57110 x_57022 x_57023) (or_377 x_57111 x_57109 x_57110)) (bpath_0 (cons_268 x_57111 x_57024) x_56942 y_2434 (cons_273 (pair_99 u_1 v_1) x_56944)))))
(assert (forall ((x_56942 list_271) (y_2434 list_271))
	(bpath_0 nil_300 x_56942 y_2434 nil_305)))
(declare-fun bpath_1 (Bool_368 list_272 list_273) Bool)
(assert (forall ((x_57026 Bool_368) (x_57027 list_268) (x_57028 Bool_368) (x_57029 Bool_368) (y_2436 list_271) (xs_705 list_272) (z_2195 list_271) (y_2435 list_273))
	(=> (and (bpath_0 x_57027 z_2195 y_2436 y_2435) (or_376 x_57028 x_57027) (bpath_1 x_57029 (cons_272 y_2436 xs_705) y_2435) (and_368 x_57026 x_57028 x_57029)) (bpath_1 x_57026 (cons_272 z_2195 (cons_272 y_2436 xs_705)) y_2435))))
(assert (forall ((z_2195 list_271) (y_2435 list_273))
	(bpath_1 true_368 (cons_272 z_2195 nil_304) y_2435)))
(assert (forall ((y_2435 list_273))
	(bpath_1 true_368 nil_304 y_2435)))
(declare-fun belem_0 (list_268 list_271 list_272) Bool)
(assert (forall ((x_57033 Bool_368) (x_57034 list_268) (z_2196 list_271) (x_56948 list_272) (x_56947 list_271))
	(=> (and (beq_0 x_57033 x_56947 z_2196) (belem_0 x_57034 x_56947 x_56948)) (belem_0 (cons_268 x_57033 x_57034) x_56947 (cons_272 z_2196 x_56948)))))
(assert (forall ((x_56947 list_271))
	(belem_0 nil_300 x_56947 nil_304)))
(declare-fun belem_1 (Bool_368 list_271 list_272) Bool)
(assert (forall ((x_57036 Bool_368) (x_57037 list_268) (x_56949 list_271) (y_2438 list_272))
	(=> (and (belem_0 x_57037 x_56949 y_2438) (or_376 x_57036 x_57037)) (belem_1 x_57036 x_56949 y_2438))))
(declare-fun bunique_0 (Bool_368 list_272) Bool)
(assert (forall ((x_57113 Bool_368) (x_57039 Bool_368) (x_57040 Bool_368) (x_57041 Bool_368) (y_2439 list_271) (xs_706 list_272))
	(=> (and (belem_1 x_57040 y_2439 xs_706) (bunique_0 x_57041 xs_706) (not_373 x_57113 x_57040) (and_368 x_57039 x_57113 x_57041)) (bunique_0 x_57039 (cons_272 y_2439 xs_706)))))
(assert (bunique_0 true_368 nil_304))
(declare-fun btour_0 (Bool_368 list_272 list_270) Bool)
(assert (forall ((x_57147 Int) (x_57115 Bool_368) (x_57045 Bool_368) (x_57046 list_271) (x_57047 Bool_368) (x_57048 list_273) (x_57049 Bool_368) (x_57050 Bool_368) (x_57043 Int) (x_57044 Int) (u_2 Int) (v_2 Int) (vs_0 list_270) (x_56952 list_271) (x_56953 list_272))
	(=> (and (le_368 u_2 v_2) (last_8 x_57046 x_56952 x_56953) (beq_0 x_57047 x_56952 x_57046) (bgraph_0 x_57048 (cons_270 (pair_97 u_2 v_2) vs_0)) (bpath_1 x_57049 (cons_272 x_56952 x_56953) x_57048) (bunique_0 x_57050 x_56953) (length_54 x_57043 (cons_272 x_56952 x_56953)) (maximummaximum_0 x_57044 v_2 vs_0) (and_368 x_57115 x_57047 x_57049) (and_368 x_57045 x_57115 x_57050) (add_394 x_57147 (S_514 Z_2199) x_57044) (add_394 x_57043 (S_514 Z_2199) x_57147)) (btour_0 x_57045 (cons_272 x_56952 x_56953) (cons_270 (pair_97 u_2 v_2) vs_0)))))
(assert (forall ((x_57149 Int) (x_57150 Int) (x_57051 Int) (x_57052 Int) (u_2 Int) (v_2 Int) (vs_0 list_270) (x_56952 list_271) (x_56953 list_272))
	(=> (and (distinct x_57051 x_57150) (le_368 u_2 v_2) (length_54 x_57051 (cons_272 x_56952 x_56953)) (maximummaximum_0 x_57052 v_2 vs_0) (add_394 x_57149 (S_514 Z_2199) x_57052) (add_394 x_57150 (S_514 Z_2199) x_57149)) (btour_0 false_368 (cons_272 x_56952 x_56953) (cons_270 (pair_97 u_2 v_2) vs_0)))))
(assert (forall ((x_57151 Int) (x_57117 Bool_368) (x_57056 Bool_368) (x_57057 list_271) (x_57058 Bool_368) (x_57059 list_273) (x_57060 Bool_368) (x_57061 Bool_368) (x_57054 Int) (x_57055 Int) (u_2 Int) (v_2 Int) (vs_0 list_270) (x_56952 list_271) (x_56953 list_272))
	(=> (and (gt_371 u_2 v_2) (last_8 x_57057 x_56952 x_56953) (beq_0 x_57058 x_56952 x_57057) (bgraph_0 x_57059 (cons_270 (pair_97 u_2 v_2) vs_0)) (bpath_1 x_57060 (cons_272 x_56952 x_56953) x_57059) (bunique_0 x_57061 x_56953) (length_54 x_57054 (cons_272 x_56952 x_56953)) (maximummaximum_0 x_57055 u_2 vs_0) (and_368 x_57117 x_57058 x_57060) (and_368 x_57056 x_57117 x_57061) (add_394 x_57151 (S_514 Z_2199) x_57055) (add_394 x_57054 (S_514 Z_2199) x_57151)) (btour_0 x_57056 (cons_272 x_56952 x_56953) (cons_270 (pair_97 u_2 v_2) vs_0)))))
(assert (forall ((x_57153 Int) (x_57154 Int) (x_57062 Int) (x_57063 Int) (u_2 Int) (v_2 Int) (vs_0 list_270) (x_56952 list_271) (x_56953 list_272))
	(=> (and (distinct x_57062 x_57154) (gt_371 u_2 v_2) (length_54 x_57062 (cons_272 x_56952 x_56953)) (maximummaximum_0 x_57063 u_2 vs_0) (add_394 x_57153 (S_514 Z_2199) x_57063) (add_394 x_57154 (S_514 Z_2199) x_57153)) (btour_0 false_368 (cons_272 x_56952 x_56953) (cons_270 (pair_97 u_2 v_2) vs_0)))))
(assert (forall ((x_56952 list_271) (x_56953 list_272))
	(btour_0 false_368 (cons_272 x_56952 x_56953) nil_302)))
(assert (forall ((z_2197 pair_96) (x_56955 list_270))
	(btour_0 false_368 nil_304 (cons_270 z_2197 x_56955))))
(assert (btour_0 true_368 nil_304 nil_302))
(declare-fun x_56956 (list_270 list_270 list_270) Bool)
(assert (forall ((x_57069 list_270) (z_2198 pair_96) (xs_707 list_270) (y_2441 list_270))
	(=> (x_56956 x_57069 xs_707 y_2441) (x_56956 (cons_270 z_2198 x_57069) (cons_270 z_2198 xs_707) y_2441))))
(assert (forall ((x_57070 list_270))
	(x_56956 x_57070 nil_302 x_57070)))
(declare-fun dodeca_6 (list_270 Int) Bool)
(assert (dodeca_6 nil_302 Z_2199))
(assert (forall ((x_57167 Int) (x_57164 Int) (x_57165 Int) (x_57166 Int) (x_57158 Int) (x_57159 Int) (x_57160 Int) (x_57161 Int) (x_57162 Int) (x_57163 Int) (x_57157 Int) (x_57156 Int) (x_57155 Int) (x_57072 list_270) (x_57073 list_269) (x_57074 list_270) (x_57075 list_269) (x_57076 list_270) (x_57077 list_269) (x_57078 list_270) (x_57079 list_269) (x_57080 list_270) (x_57081 list_269) (x_57082 list_270) (x_57083 list_269) (x_57084 list_270) (x_57085 list_270) (x_57086 list_270) (x_57087 list_270) (x_57088 list_270) (x_56958 Int))
	(=> (and (distinct x_56958 Z_2199) (primEnumFromTo_0 x_57073 Z_2199 x_57155) (dodeca_5 x_57074 x_57073) (primEnumFromTo_0 x_57075 Z_2199 x_56958) (dodeca_4 x_57076 x_56958 x_57075) (primEnumFromTo_0 x_57077 Z_2199 x_56958) (dodeca_3 x_57078 x_56958 x_57077) (primEnumFromTo_0 x_57079 Z_2199 x_57156) (dodeca_2 x_57080 x_56958 x_57079) (primEnumFromTo_0 x_57081 Z_2199 x_56958) (dodeca_1 x_57082 x_56958 x_57081) (primEnumFromTo_0 x_57083 Z_2199 x_57157) (dodeca_0 x_57084 x_56958 x_57083) (x_56956 x_57085 x_57082 (cons_270 (pair_97 x_57161 x_57163) x_57084)) (x_56956 x_57086 (cons_270 (pair_97 x_56958 x_57166) x_57080) x_57085) (x_56956 x_57087 x_57078 x_57086) (x_56956 x_57088 x_57076 x_57087) (x_56956 x_57072 (cons_270 (pair_97 x_57167 Z_2199) x_57074) x_57088) (minus_389 x_57167 x_56958 (S_514 Z_2199)) (add_394 x_57164 x_56958 x_56958) (minus_389 x_57165 x_56958 (S_514 Z_2199)) (add_394 x_57166 x_57164 x_57165) (add_394 x_57158 x_56958 x_56958) (add_394 x_57159 x_57158 x_56958) (minus_389 x_57160 x_56958 (S_514 Z_2199)) (add_394 x_57161 x_57159 x_57160) (add_394 x_57162 x_56958 x_56958) (add_394 x_57163 x_57162 x_56958) (minus_389 x_57157 x_56958 (S_514 Z_2199)) (minus_389 x_57156 x_56958 (S_514 Z_2199)) (minus_389 x_57155 x_56958 (S_514 Z_2199))) (dodeca_6 x_57072 x_56958))))
(assert (forall ((x_57180 Int) (x_57177 Int) (x_57178 Int) (x_57179 Int) (x_57171 Int) (x_57172 Int) (x_57173 Int) (x_57174 Int) (x_57175 Int) (x_57176 Int) (x_57170 Int) (x_57169 Int) (x_57168 Int) (x_57090 list_269) (x_57091 list_270) (x_57092 list_269) (x_57093 list_270) (x_57094 list_269) (x_57095 list_270) (x_57096 list_269) (x_57097 list_270) (x_57098 list_269) (x_57099 list_270) (x_57100 list_269) (x_57101 list_270) (x_57102 list_270) (x_57103 list_270) (x_57104 list_270) (x_57105 list_270) (x_57106 list_270) (p_414 list_272))
	(=> (and true (primEnumFromTo_0 x_57090 Z_2199 x_57168) (dodeca_5 x_57091 x_57090) (primEnumFromTo_0 x_57092 Z_2199 (S_514 (S_514 (S_514 (S_514 Z_2199))))) (dodeca_4 x_57093 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57092) (primEnumFromTo_0 x_57094 Z_2199 (S_514 (S_514 (S_514 (S_514 Z_2199))))) (dodeca_3 x_57095 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57094) (primEnumFromTo_0 x_57096 Z_2199 x_57169) (dodeca_2 x_57097 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57096) (primEnumFromTo_0 x_57098 Z_2199 (S_514 (S_514 (S_514 (S_514 Z_2199))))) (dodeca_1 x_57099 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57098) (primEnumFromTo_0 x_57100 Z_2199 x_57170) (dodeca_0 x_57101 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57100) (x_56956 x_57102 x_57099 (cons_270 (pair_97 x_57174 x_57176) x_57101)) (x_56956 x_57103 (cons_270 (pair_97 (S_514 (S_514 (S_514 (S_514 Z_2199)))) x_57179) x_57097) x_57102) (x_56956 x_57104 x_57095 x_57103) (x_56956 x_57105 x_57093 x_57104) (x_56956 x_57106 (cons_270 (pair_97 x_57180 Z_2199) x_57091) x_57105) (btour_0 true_368 p_414 x_57106) (minus_389 x_57180 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199)) (add_394 x_57177 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 (S_514 (S_514 (S_514 Z_2199))))) (minus_389 x_57178 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199)) (add_394 x_57179 x_57177 x_57178) (add_394 x_57171 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 (S_514 (S_514 (S_514 Z_2199))))) (add_394 x_57172 x_57171 (S_514 (S_514 (S_514 (S_514 Z_2199))))) (minus_389 x_57173 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199)) (add_394 x_57174 x_57172 x_57173) (add_394 x_57175 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 (S_514 (S_514 (S_514 Z_2199))))) (add_394 x_57176 x_57175 (S_514 (S_514 (S_514 (S_514 Z_2199))))) (minus_389 x_57170 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199)) (minus_389 x_57169 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199)) (minus_389 x_57168 (S_514 (S_514 (S_514 (S_514 Z_2199)))) (S_514 Z_2199))) false)))
(check-sat)