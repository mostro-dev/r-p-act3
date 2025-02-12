(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d2 d4 d5 d6 d7 d8 - depth
  )
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
  ;; current depth is d0
  (current_depth d0)
  ;; connectivity graph
  (connected p1 p0)
  (connected p1 p2)
  (connected p2 p3)
  (connected p4 p3)
  (connected p4 p10)
  (connected p5 p4)
  (connected p5 p6)
  (connected p5 p9)
  (connected p6 p8)
  (connected p7 p8)
  (connected p9 p8)
  (connected p9 p10)
  (connected p11 p3)
  (connected p11 p10)
  (connected p11 p12)
  (connected p12 p2)
  (connected p13 p1)
  (connected p13 p12)
  (connected p0 p1)
  (connected p2 p1)
  (connected p3 p2)
  (connected p3 p4)
  (connected p10 p4)
  (connected p4 p5)
  (connected p6 p5)
  (connected p9 p5)
  (connected p8 p6)
  (connected p8 p7)
  (connected p8 p9)
  (connected p10 p9)
  (connected p3 p11)
  (connected p10 p11)
  (connected p12 p11)
  (connected p2 p12)
  (connected p1 p13)
  (connected p12 p13)
  ;; depths
  (next_depth d0 d2)
  (next_depth d2 d4)
  (next_depth d4 d5)
  (next_depth d5 d6)
  (next_depth d6 d7)
  (next_depth d7 d8)
  ;; listing required cnots
  (rcnot l2 l1 d2)
  (rcnot l0 l1 d4)
  (rcnot l2 l0 d5)
  (rcnot l2 l1 d6)
  (rcnot l2 l0 d7)
  (rcnot l0 l1 d8)
)
(:goal
  (and
  ;; depth 0, initial mapping
  (occupied_lqubit l0)
  (occupied_lqubit l1)
  (occupied_lqubit l2)
  ;; listing negated required cnots
 (not (rcnot l2 l1 d2))
 (not (rcnot l0 l1 d4))
 (not (rcnot l2 l0 d5))
 (not (rcnot l2 l1 d6))
 (not (rcnot l2 l0 d7))
 (not (rcnot l0 l1 d8))
  )
)
)