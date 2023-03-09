(set-logic HORN)
(declare-datatypes ((Nat_707 0)) (((S_627 (projS_250 Nat_707)) (Z_2725 ))))
(declare-fun diseqNat_707 (Nat_707 Nat_707) Bool)
(declare-fun projS_251 (Nat_707 Nat_707) Bool)
(declare-fun isS_563 (Nat_707) Bool)
(declare-fun isZ_563 (Nat_707) Bool)
(assert (forall ((x_125942 Nat_707))
	(projS_251 x_125942 (S_627 x_125942))))
(assert (forall ((x_125945 Nat_707))
	(isS_563 (S_627 x_125945))))
(assert (isZ_563 Z_2725))
(assert (forall ((x_125946 Nat_707))
	(diseqNat_707 (S_627 x_125946) Z_2725)))
(assert (forall ((x_125947 Nat_707))
	(diseqNat_707 Z_2725 (S_627 x_125947))))
(assert (forall ((x_125948 Nat_707) (x_125949 Nat_707))
	(=> (diseqNat_707 x_125948 x_125949)
	    (diseqNat_707 (S_627 x_125948) (S_627 x_125949)))))
(declare-datatypes ((list_395 0)) (((nil_454 ) (cons_389 (head_778 Nat_707) (tail_784 list_395)))))
(declare-fun diseqlist_389 (list_395 list_395) Bool)
(declare-fun head_779 (Nat_707 list_395) Bool)
(declare-fun tail_785 (list_395 list_395) Bool)
(declare-fun isnil_454 (list_395) Bool)
(declare-fun iscons_389 (list_395) Bool)
(assert (forall ((x_125951 Nat_707) (x_125952 list_395))
	(head_779 x_125951 (cons_389 x_125951 x_125952))))
(assert (forall ((x_125951 Nat_707) (x_125952 list_395))
	(tail_785 x_125952 (cons_389 x_125951 x_125952))))
(assert (isnil_454 nil_454))
(assert (forall ((x_125954 Nat_707) (x_125955 list_395))
	(iscons_389 (cons_389 x_125954 x_125955))))
(assert (forall ((x_125956 Nat_707) (x_125957 list_395))
	(diseqlist_389 nil_454 (cons_389 x_125956 x_125957))))
(assert (forall ((x_125958 Nat_707) (x_125959 list_395))
	(diseqlist_389 (cons_389 x_125958 x_125959) nil_454)))
(assert (forall ((x_125960 Nat_707) (x_125961 list_395) (x_125962 Nat_707) (x_125963 list_395))
	(=> (diseqNat_707 x_125960 x_125962)
	    (diseqlist_389 (cons_389 x_125960 x_125961) (cons_389 x_125962 x_125963)))))
(assert (forall ((x_125960 Nat_707) (x_125961 list_395) (x_125962 Nat_707) (x_125963 list_395))
	(=> (diseqlist_389 x_125961 x_125963)
	    (diseqlist_389 (cons_389 x_125960 x_125961) (cons_389 x_125962 x_125963)))))
(declare-fun x_125924 (list_395 list_395 list_395) Bool)
(assert (forall ((x_125930 list_395) (z_2726 Nat_707) (xs_888 list_395) (y_3188 list_395))
	(=> (x_125924 x_125930 xs_888 y_3188)
	    (x_125924 (cons_389 z_2726 x_125930) (cons_389 z_2726 xs_888) y_3188))))
(assert (forall ((x_125931 list_395))
	(x_125924 x_125931 nil_454 x_125931)))
(declare-fun rotate_12 (list_395 Nat_707 list_395) Bool)
(assert (forall ((x_125932 list_395))
	(rotate_12 x_125932 Z_2725 x_125932)))
(assert (forall ((x_125933 list_395) (x_125934 list_395) (x_125927 Nat_707) (x_125928 list_395) (z_2727 Nat_707))
	(=>	(and (x_125924 x_125934 x_125928 (cons_389 x_125927 nil_454))
			(rotate_12 x_125933 z_2727 x_125934))
		(rotate_12 x_125933 (S_627 z_2727) (cons_389 x_125927 x_125928)))))
(assert (forall ((z_2727 Nat_707))
	(rotate_12 nil_454 (S_627 z_2727) nil_454)))
(assert (forall ((x_125937 list_395) (x_125938 list_395) (x_125939 list_395) (x_125940 list_395) (n_116 Nat_707) (m_97 Nat_707) (xs_889 list_395))
	(=>	(and true
			(diseqlist_389 x_125938 x_125940)
			(rotate_12 x_125937 m_97 xs_889)
			(rotate_12 x_125938 n_116 x_125937)
			(rotate_12 x_125939 n_116 xs_889)
			(rotate_12 x_125940 m_97 x_125939))
		false)))
(check-sat)
