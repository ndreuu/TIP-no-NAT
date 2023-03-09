(set-logic HORN)
(declare-datatypes ((Bool_74 0)) (((false_74 ) (true_74 ))))
(declare-fun diseqBool_31 (Bool_74 Bool_74) Bool)
(declare-fun isfalse_31 (Bool_74) Bool)
(declare-fun istrue_31 (Bool_74) Bool)
(assert (isfalse_31 false_74))
(assert (istrue_31 true_74))
(assert (diseqBool_31 false_74 true_74))
(assert (diseqBool_31 true_74 false_74))
(declare-fun and_74 (Bool_74 Bool_74 Bool_74) Bool)
(declare-fun or_74 (Bool_74 Bool_74 Bool_74) Bool)
(declare-fun hence_74 (Bool_74 Bool_74 Bool_74) Bool)
(declare-fun not_74 (Bool_74 Bool_74) Bool)
(assert (and_74 false_74 false_74 false_74))
(assert (and_74 false_74 true_74 false_74))
(assert (and_74 false_74 false_74 true_74))
(assert (and_74 true_74 true_74 true_74))
(assert (or_74 false_74 false_74 false_74))
(assert (or_74 true_74 true_74 false_74))
(assert (or_74 true_74 false_74 true_74))
(assert (or_74 true_74 true_74 true_74))
(assert (hence_74 true_74 false_74 false_74))
(assert (hence_74 false_74 true_74 false_74))
(assert (hence_74 true_74 false_74 true_74))
(assert (hence_74 true_74 true_74 true_74))
(assert (not_74 true_74 false_74))
(assert (not_74 false_74 true_74))
(declare-datatypes ((Nat_143 0)) (((Z_403 ) (S_143 (projS_138 Nat_143)))))
(declare-fun diseqNat_143 (Nat_143 Nat_143) Bool)
(declare-fun projS_139 (Nat_143 Nat_143) Bool)
(declare-fun isZ_143 (Nat_143) Bool)
(declare-fun isS_143 (Nat_143) Bool)
(assert (forall ((x_3921 Nat_143))
	(projS_139 x_3921 (S_143 x_3921))))
(assert (isZ_143 Z_403))
(assert (forall ((x_3923 Nat_143))
	(isS_143 (S_143 x_3923))))
(assert (forall ((x_3924 Nat_143))
	(diseqNat_143 Z_403 (S_143 x_3924))))
(assert (forall ((x_3925 Nat_143))
	(diseqNat_143 (S_143 x_3925) Z_403)))
(assert (forall ((x_3926 Nat_143) (x_3927 Nat_143))
	(=> (diseqNat_143 x_3926 x_3927)
	    (diseqNat_143 (S_143 x_3926) (S_143 x_3927)))))
(declare-datatypes ((list_63 0)) (((nil_63 ) (cons_63 (head_126 Nat_143) (tail_126 list_63)))))
(declare-fun diseqlist_63 (list_63 list_63) Bool)
(declare-fun head_127 (Nat_143 list_63) Bool)
(declare-fun tail_127 (list_63 list_63) Bool)
(declare-fun isnil_63 (list_63) Bool)
(declare-fun iscons_63 (list_63) Bool)
(assert (forall ((x_3929 Nat_143) (x_3930 list_63))
	(head_127 x_3929 (cons_63 x_3929 x_3930))))
(assert (forall ((x_3929 Nat_143) (x_3930 list_63))
	(tail_127 x_3930 (cons_63 x_3929 x_3930))))
(assert (isnil_63 nil_63))
(assert (forall ((x_3932 Nat_143) (x_3933 list_63))
	(iscons_63 (cons_63 x_3932 x_3933))))
(assert (forall ((x_3934 Nat_143) (x_3935 list_63))
	(diseqlist_63 nil_63 (cons_63 x_3934 x_3935))))
(assert (forall ((x_3936 Nat_143) (x_3937 list_63))
	(diseqlist_63 (cons_63 x_3936 x_3937) nil_63)))
(assert (forall ((x_3938 Nat_143) (x_3939 list_63) (x_3940 Nat_143) (x_3941 list_63))
	(=> (diseqNat_143 x_3938 x_3940)
	    (diseqlist_63 (cons_63 x_3938 x_3939) (cons_63 x_3940 x_3941)))))
(assert (forall ((x_3938 Nat_143) (x_3939 list_63) (x_3940 Nat_143) (x_3941 list_63))
	(=> (diseqlist_63 x_3939 x_3941)
	    (diseqlist_63 (cons_63 x_3938 x_3939) (cons_63 x_3940 x_3941)))))
(declare-fun len_12 (Nat_143 list_63) Bool)
(assert (forall ((x_3898 Nat_143) (y_318 Nat_143) (xs_117 list_63))
	(=> (len_12 x_3898 xs_117)
	    (len_12 (S_143 x_3898) (cons_63 y_318 xs_117)))))
(assert (len_12 Z_403 nil_63))
(declare-fun last_7 (Nat_143 list_63) Bool)
(assert (forall ((x_3900 Nat_143) (x_3889 Nat_143) (x_3890 list_63) (y_319 Nat_143))
	(=> (last_7 x_3900 (cons_63 x_3889 x_3890))
	    (last_7 x_3900 (cons_63 y_319 (cons_63 x_3889 x_3890))))))
(assert (forall ((x_3902 Nat_143))
	(last_7 x_3902 (cons_63 x_3902 nil_63))))
(assert (last_7 Z_403 nil_63))
(declare-fun drop_14 (list_63 Nat_143 list_63) Bool)
(assert (forall ((x_3904 list_63) (x_3892 Nat_143) (x_3893 list_63) (z_405 Nat_143))
	(=> (drop_14 x_3904 z_405 x_3893)
	    (drop_14 x_3904 (S_143 z_405) (cons_63 x_3892 x_3893)))))
(assert (forall ((z_405 Nat_143))
	(drop_14 nil_63 (S_143 z_405) nil_63)))
(assert (forall ((x_3907 list_63))
	(drop_14 x_3907 Z_403 x_3907)))
(declare-fun x_3894 (Bool_74 Nat_143 Nat_143) Bool)
(assert (forall ((x_3908 Bool_74) (x_3896 Nat_143) (z_406 Nat_143))
	(=> (x_3894 x_3908 x_3896 z_406)
	    (x_3894 x_3908 (S_143 x_3896) (S_143 z_406)))))
(assert (forall ((z_406 Nat_143))
	(x_3894 true_74 Z_403 (S_143 z_406))))
(assert (forall ((x_3895 Nat_143))
	(x_3894 false_74 x_3895 Z_403)))
(assert (forall ((x_3915 Nat_143) (x_3912 list_63) (x_3913 Nat_143) (x_3914 Nat_143) (n_30 Nat_143) (xs_118 list_63))
	(=>	(and true
			(diseqNat_143 x_3913 x_3914)
			(len_12 x_3915 xs_118)
			(x_3894 true_74 n_30 x_3915)
			(drop_14 x_3912 n_30 xs_118)
			(last_7 x_3913 x_3912)
			(last_7 x_3914 xs_118))
		false)))
(check-sat)