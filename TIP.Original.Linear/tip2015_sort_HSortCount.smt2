(set-logic HORN)
(declare-datatypes ((Nat_228 0)) (((Z_715 ) (S_208 (unS_252 Nat_228)))))
(declare-fun diseqNat_228 (Nat_228 Nat_228) Bool)
(declare-fun unS_253 (Nat_228 Nat_228) Bool)
(declare-fun isZ_199 (Nat_228) Bool)
(declare-fun isS_199 (Nat_228) Bool)
(assert (forall ((x_18313 Nat_228))
	(unS_253 x_18313 (S_208 x_18313))))
(assert (isZ_199 Z_715))
(assert (forall ((x_18315 Nat_228))
	(isS_199 (S_208 x_18315))))
(assert (forall ((x_18316 Nat_228))
	(diseqNat_228 Z_715 (S_208 x_18316))))
(assert (forall ((x_18317 Nat_228))
	(diseqNat_228 (S_208 x_18317) Z_715)))
(assert (forall ((x_18318 Nat_228) (x_18319 Nat_228))
	(=> (diseqNat_228 x_18318 x_18319)
	    (diseqNat_228 (S_208 x_18318) (S_208 x_18319)))))
(declare-fun add_131 (Nat_228 Nat_228 Nat_228) Bool)
(declare-fun minus_129 (Nat_228 Nat_228 Nat_228) Bool)
(declare-fun le_126 (Nat_228 Nat_228) Bool)
(declare-fun ge_126 (Nat_228 Nat_228) Bool)
(declare-fun lt_130 (Nat_228 Nat_228) Bool)
(declare-fun gt_127 (Nat_228 Nat_228) Bool)
(declare-fun mult_126 (Nat_228 Nat_228 Nat_228) Bool)
(declare-fun div_126 (Nat_228 Nat_228 Nat_228) Bool)
(declare-fun mod_126 (Nat_228 Nat_228 Nat_228) Bool)
(assert (forall ((y_702 Nat_228))
	(add_131 y_702 Z_715 y_702)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228) (r_147 Nat_228))
	(=> (add_131 r_147 x_18310 y_702)
	    (add_131 (S_208 r_147) (S_208 x_18310) y_702))))
(assert (forall ((y_702 Nat_228))
	(minus_129 Z_715 Z_715 y_702)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228) (r_147 Nat_228))
	(=> (minus_129 r_147 x_18310 y_702)
	    (minus_129 (S_208 r_147) (S_208 x_18310) y_702))))
(assert (forall ((y_702 Nat_228))
	(le_126 Z_715 y_702)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (le_126 x_18310 y_702)
	    (le_126 (S_208 x_18310) (S_208 y_702)))))
(assert (forall ((y_702 Nat_228))
	(ge_126 y_702 Z_715)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (ge_126 x_18310 y_702)
	    (ge_126 (S_208 x_18310) (S_208 y_702)))))
(assert (forall ((y_702 Nat_228))
	(lt_130 Z_715 (S_208 y_702))))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (lt_130 x_18310 y_702)
	    (lt_130 (S_208 x_18310) (S_208 y_702)))))
(assert (forall ((y_702 Nat_228))
	(gt_127 (S_208 y_702) Z_715)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (gt_127 x_18310 y_702)
	    (gt_127 (S_208 x_18310) (S_208 y_702)))))
(assert (forall ((y_702 Nat_228))
	(mult_126 Z_715 Z_715 y_702)))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228) (r_147 Nat_228) (z_716 Nat_228))
	(=>	(and (mult_126 r_147 x_18310 y_702)
			(add_131 z_716 r_147 y_702))
		(mult_126 z_716 (S_208 x_18310) y_702))))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (lt_130 x_18310 y_702)
	    (div_126 Z_715 x_18310 y_702))))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228) (r_147 Nat_228) (z_716 Nat_228))
	(=>	(and (ge_126 x_18310 y_702)
			(minus_129 z_716 x_18310 y_702)
			(div_126 r_147 z_716 y_702))
		(div_126 (S_208 r_147) x_18310 y_702))))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228))
	(=> (lt_130 x_18310 y_702)
	    (mod_126 x_18310 x_18310 y_702))))
(assert (forall ((x_18310 Nat_228) (y_702 Nat_228) (r_147 Nat_228) (z_716 Nat_228))
	(=>	(and (ge_126 x_18310 y_702)
			(minus_129 z_716 x_18310 y_702)
			(mod_126 r_147 z_716 y_702))
		(mod_126 r_147 x_18310 y_702))))
(declare-datatypes ((list_94 0)) (((nil_101 ) (cons_94 (head_188 Nat_228) (tail_188 list_94)))))
(declare-fun diseqlist_94 (list_94 list_94) Bool)
(declare-fun head_190 (Nat_228 list_94) Bool)
(declare-fun tail_190 (list_94 list_94) Bool)
(declare-fun isnil_101 (list_94) Bool)
(declare-fun iscons_94 (list_94) Bool)
(assert (forall ((x_18321 Nat_228) (x_18322 list_94))
	(head_190 x_18321 (cons_94 x_18321 x_18322))))
(assert (forall ((x_18321 Nat_228) (x_18322 list_94))
	(tail_190 x_18322 (cons_94 x_18321 x_18322))))
(assert (isnil_101 nil_101))
(assert (forall ((x_18324 Nat_228) (x_18325 list_94))
	(iscons_94 (cons_94 x_18324 x_18325))))
(assert (forall ((x_18326 Nat_228) (x_18327 list_94))
	(diseqlist_94 nil_101 (cons_94 x_18326 x_18327))))
(assert (forall ((x_18328 Nat_228) (x_18329 list_94))
	(diseqlist_94 (cons_94 x_18328 x_18329) nil_101)))
(assert (forall ((x_18330 Nat_228) (x_18331 list_94) (x_18332 Nat_228) (x_18333 list_94))
	(=> (diseqNat_228 x_18330 x_18332)
	    (diseqlist_94 (cons_94 x_18330 x_18331) (cons_94 x_18332 x_18333)))))
(assert (forall ((x_18330 Nat_228) (x_18331 list_94) (x_18332 Nat_228) (x_18333 list_94))
	(=> (diseqlist_94 x_18331 x_18333)
	    (diseqlist_94 (cons_94 x_18330 x_18331) (cons_94 x_18332 x_18333)))))
(declare-datatypes ((Heap_2 0)) (((Node_3 (projNode_18 Heap_2) (projNode_19 Nat_228) (projNode_20 Heap_2)) (Nil_102 ))))
(declare-fun diseqHeap_2 (Heap_2 Heap_2) Bool)
(declare-fun projNode_21 (Heap_2 Heap_2) Bool)
(declare-fun projNode_22 (Nat_228 Heap_2) Bool)
(declare-fun projNode_23 (Heap_2 Heap_2) Bool)
(declare-fun isNode_3 (Heap_2) Bool)
(declare-fun isNil_102 (Heap_2) Bool)
(assert (forall ((x_18334 Heap_2) (x_18335 Nat_228) (x_18336 Heap_2))
	(projNode_21 x_18334 (Node_3 x_18334 x_18335 x_18336))))
(assert (forall ((x_18334 Heap_2) (x_18335 Nat_228) (x_18336 Heap_2))
	(projNode_22 x_18335 (Node_3 x_18334 x_18335 x_18336))))
(assert (forall ((x_18334 Heap_2) (x_18335 Nat_228) (x_18336 Heap_2))
	(projNode_23 x_18336 (Node_3 x_18334 x_18335 x_18336))))
(assert (forall ((x_18339 Heap_2) (x_18340 Nat_228) (x_18341 Heap_2))
	(isNode_3 (Node_3 x_18339 x_18340 x_18341))))
(assert (isNil_102 Nil_102))
(assert (forall ((x_18342 Heap_2) (x_18343 Nat_228) (x_18344 Heap_2))
	(diseqHeap_2 (Node_3 x_18342 x_18343 x_18344) Nil_102)))
(assert (forall ((x_18345 Heap_2) (x_18346 Nat_228) (x_18347 Heap_2))
	(diseqHeap_2 Nil_102 (Node_3 x_18345 x_18346 x_18347))))
(assert (forall ((x_18348 Heap_2) (x_18349 Nat_228) (x_18350 Heap_2) (x_18351 Heap_2) (x_18352 Nat_228) (x_18353 Heap_2))
	(=> (diseqHeap_2 x_18348 x_18351)
	    (diseqHeap_2 (Node_3 x_18348 x_18349 x_18350) (Node_3 x_18351 x_18352 x_18353)))))
(assert (forall ((x_18348 Heap_2) (x_18349 Nat_228) (x_18350 Heap_2) (x_18351 Heap_2) (x_18352 Nat_228) (x_18353 Heap_2))
	(=> (diseqNat_228 x_18349 x_18352)
	    (diseqHeap_2 (Node_3 x_18348 x_18349 x_18350) (Node_3 x_18351 x_18352 x_18353)))))
(assert (forall ((x_18348 Heap_2) (x_18349 Nat_228) (x_18350 Heap_2) (x_18351 Heap_2) (x_18352 Nat_228) (x_18353 Heap_2))
	(=> (diseqHeap_2 x_18350 x_18353)
	    (diseqHeap_2 (Node_3 x_18348 x_18349 x_18350) (Node_3 x_18351 x_18352 x_18353)))))
(declare-datatypes ((list_95 0)) (((nil_103 ) (cons_95 (head_189 Heap_2) (tail_189 list_95)))))
(declare-fun diseqlist_95 (list_95 list_95) Bool)
(declare-fun head_191 (Heap_2 list_95) Bool)
(declare-fun tail_191 (list_95 list_95) Bool)
(declare-fun isnil_103 (list_95) Bool)
(declare-fun iscons_95 (list_95) Bool)
(assert (forall ((x_18355 Heap_2) (x_18356 list_95))
	(head_191 x_18355 (cons_95 x_18355 x_18356))))
(assert (forall ((x_18355 Heap_2) (x_18356 list_95))
	(tail_191 x_18356 (cons_95 x_18355 x_18356))))
(assert (isnil_103 nil_103))
(assert (forall ((x_18358 Heap_2) (x_18359 list_95))
	(iscons_95 (cons_95 x_18358 x_18359))))
(assert (forall ((x_18360 Heap_2) (x_18361 list_95))
	(diseqlist_95 nil_103 (cons_95 x_18360 x_18361))))
(assert (forall ((x_18362 Heap_2) (x_18363 list_95))
	(diseqlist_95 (cons_95 x_18362 x_18363) nil_103)))
(assert (forall ((x_18364 Heap_2) (x_18365 list_95) (x_18366 Heap_2) (x_18367 list_95))
	(=> (diseqHeap_2 x_18364 x_18366)
	    (diseqlist_95 (cons_95 x_18364 x_18365) (cons_95 x_18366 x_18367)))))
(assert (forall ((x_18364 Heap_2) (x_18365 list_95) (x_18366 Heap_2) (x_18367 list_95))
	(=> (diseqlist_95 x_18365 x_18367)
	    (diseqlist_95 (cons_95 x_18364 x_18365) (cons_95 x_18366 x_18367)))))
(declare-fun toHeap_2 (list_95 list_94) Bool)
(assert (forall ((x_18274 list_95) (y_696 Nat_228) (z_711 list_94))
	(=> (toHeap_2 x_18274 z_711)
	    (toHeap_2 (cons_95 (Node_3 Nil_102 y_696 Nil_102) x_18274) (cons_94 y_696 z_711)))))
(assert (toHeap_2 nil_103 nil_101))
(declare-fun hmerge_2 (Heap_2 Heap_2 Heap_2) Bool)
(assert (forall ((x_18276 Heap_2))
	(hmerge_2 x_18276 Nil_102 x_18276)))
(assert (forall ((z_712 Heap_2) (x_18260 Nat_228) (x_18261 Heap_2))
	(hmerge_2 (Node_3 z_712 x_18260 x_18261) (Node_3 z_712 x_18260 x_18261) Nil_102)))
(assert (forall ((x_18279 Heap_2) (x_18262 Heap_2) (x_18263 Nat_228) (x_18264 Heap_2) (z_712 Heap_2) (x_18260 Nat_228) (x_18261 Heap_2))
	(=>	(and (le_126 x_18260 x_18263)
			(hmerge_2 x_18279 x_18261 (Node_3 x_18262 x_18263 x_18264)))
		(hmerge_2 (Node_3 x_18279 x_18260 z_712) (Node_3 z_712 x_18260 x_18261) (Node_3 x_18262 x_18263 x_18264)))))
(assert (forall ((x_18281 Heap_2) (x_18262 Heap_2) (x_18263 Nat_228) (x_18264 Heap_2) (z_712 Heap_2) (x_18260 Nat_228) (x_18261 Heap_2))
	(=>	(and (gt_127 x_18260 x_18263)
			(hmerge_2 x_18281 (Node_3 z_712 x_18260 x_18261) x_18264))
		(hmerge_2 (Node_3 x_18281 x_18263 x_18262) (Node_3 z_712 x_18260 x_18261) (Node_3 x_18262 x_18263 x_18264)))))
(declare-fun hpairwise_0 (list_95 list_95) Bool)
(assert (forall ((x_18283 Heap_2) (x_18284 list_95) (q_28 Heap_2) (qs_0 list_95) (p_81 Heap_2))
	(=>	(and (hmerge_2 x_18283 p_81 q_28)
			(hpairwise_0 x_18284 qs_0))
		(hpairwise_0 (cons_95 x_18283 x_18284) (cons_95 p_81 (cons_95 q_28 qs_0))))))
(assert (forall ((p_81 Heap_2))
	(hpairwise_0 (cons_95 p_81 nil_103) (cons_95 p_81 nil_103))))
(assert (hpairwise_0 nil_103 nil_103))
(declare-fun hmerging_0 (Heap_2 list_95) Bool)
(assert (forall ((x_18287 Heap_2) (x_18288 list_95) (z_713 Heap_2) (x_18267 list_95) (p_82 Heap_2))
	(=>	(and (hpairwise_0 x_18288 (cons_95 p_82 (cons_95 z_713 x_18267)))
			(hmerging_0 x_18287 x_18288))
		(hmerging_0 x_18287 (cons_95 p_82 (cons_95 z_713 x_18267))))))
(assert (forall ((p_82 Heap_2))
	(hmerging_0 p_82 (cons_95 p_82 nil_103))))
(assert (hmerging_0 Nil_102 nil_103))
(declare-fun toHeap_3 (Heap_2 list_94) Bool)
(assert (forall ((x_18292 Heap_2) (x_18293 list_95) (x_18268 list_94))
	(=>	(and (toHeap_2 x_18293 x_18268)
			(hmerging_0 x_18292 x_18293))
		(toHeap_3 x_18292 x_18268))))
(declare-fun toList_2 (list_94 Heap_2) Bool)
(assert (toList_2 nil_101 Nil_102))
(assert (forall ((x_18297 Heap_2) (x_18298 list_94) (p_83 Heap_2) (y_700 Nat_228) (q_29 Heap_2))
	(=>	(and (hmerge_2 x_18297 p_83 q_29)
			(toList_2 x_18298 x_18297))
		(toList_2 (cons_94 y_700 x_18298) (Node_3 p_83 y_700 q_29)))))
(declare-fun hsort_2 (list_94 list_94) Bool)
(assert (forall ((x_18299 list_94) (x_18300 Heap_2) (x_18270 list_94))
	(=>	(and (toHeap_3 x_18300 x_18270)
			(toList_2 x_18299 x_18300))
		(hsort_2 x_18299 x_18270))))
(declare-fun count_15 (Nat_228 Nat_228 list_94) Bool)
(assert (forall ((x_18302 Nat_228) (x_18303 Nat_228) (ys_58 list_94) (x_18271 Nat_228))
	(=>	(and (count_15 x_18303 x_18271 ys_58)
			(add_131 x_18302 (S_208 Z_715) x_18303))
		(count_15 x_18302 x_18271 (cons_94 x_18271 ys_58)))))
(assert (forall ((x_18304 Nat_228) (z_714 Nat_228) (ys_58 list_94) (x_18271 Nat_228))
	(=>	(and (diseqNat_228 x_18271 z_714)
			(count_15 x_18304 x_18271 ys_58))
		(count_15 x_18304 x_18271 (cons_94 z_714 ys_58)))))
(assert (forall ((x_18271 Nat_228))
	(count_15 Z_715 x_18271 nil_101)))
(assert (forall ((x_18307 list_94) (x_18308 Nat_228) (x_18309 Nat_228) (x_18272 Nat_228) (xs_222 list_94))
	(=>	(and true
			(diseqNat_228 x_18308 x_18309)
			(hsort_2 x_18307 xs_222)
			(count_15 x_18308 x_18272 x_18307)
			(count_15 x_18309 x_18272 xs_222))
		false)))
(check-sat)
