(benchmark FMI_SMT_formula.smt
	:source {
		blablabla  by Martin Neururer
	}
	:status unsat
	:difficulty { 0 }
	:category { crafted }
	:logic QF_UFLIA

	:extrafuns ((N Int) (K Int))
	:extrafuns ((result Int) (node Int) (next Int) (i Int))
	:extrafuns ((u1 Int) (u2 Int) (u3 Int))
	
	:assumption (= N 5)
	:assumption (= K 3)

	:extrafuns ((G Int Int Int))

	:assumption (= (G 0 0) 0)
	:assumption (= (G 0 1) 1)
	:assumption (= (G 0 2) 0)
	:assumption (= (G 0 3) 0)
	:assumption (= (G 0 4) 1)
	
	:assumption (= (G 1 0) 0)
	:assumption (= (G 1 1) 0)
	:assumption (= (G 1 2) 1)
	:assumption (= (G 1 3) 0)
	:assumption (= (G 1 4) 0)
	
	:assumption (= (G 2 0) 0)
	:assumption (= (G 2 1) 1)
	:assumption (= (G 2 2) 0)
	:assumption (= (G 2 3) 1)
	:assumption (= (G 2 4) 0)
	
	:assumption (= (G 3 0) 1)
	:assumption (= (G 3 1) 0)
	:assumption (= (G 3 2) 0)
	:assumption (= (G 3 3) 0)
	:assumption (= (G 3 4) 0)

	:assumption (= (G 4 0) 0)
	:assumption (= (G 4 1) 0)
	:assumption (= (G 4 2) 0)
	:assumption (= (G 4 3) 0)
	:assumption (= (G 4 4) 1)

	:assumption (= result 1)
	:assumption (= node 0)
	:assumption (= next 0)
	:assumption (= i 0)

	:assumption
	(ite (< i K)
		(distinct
			(= next u1)
			;;(= result (and result (G i next)))
			(ite (and (= result 1) (= (G i next) 1)) (= result 1) (= result 0))
			(= node next)
			(= i (+ i 1)) ; i=1
		)
		(ite (< i K)
			(distinct
				(= next u2)
				;;(= result (and result (G i next)))
				(ite (and (= result 1) (= (G i next) 1)) (= result 1) (= result 0))
				(= node next)
				(= i (+ i 1)) ; i=2
			)
			(ite (< i K)
				(distinct
					(= next u3)
					;;(= result (and result (G i next)))
					(ite (and (= result 1) (= (G i next) 1)) (= result 1) (= result 0))
					(= node next)
					(= i (+ i 1)) ; i=3
					;;(assert (not (< i K)))
				)
				(ite (and (= result 1) (= node 0) (> K 0)) (= result 1) (= result 0))
			)
		)
	)

	:formula (and (not (= result 1)) (not (< i K)))

)

