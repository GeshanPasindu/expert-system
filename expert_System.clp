

(defrule recommend-computer-for-school-child-1
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 1) (eq ?form 1)))
    =>
    (assert (recommended-computer "Chromebook"))
    (printout t "Recommended computer: Chromebook" crlf))

(defrule recommend-computer-for-school-child-2
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 2) (eq ?form 1)))
    =>
    (assert (recommended-computer "acer aspire 3"))
    (printout t "Recommended computer: acer aspire 3" crlf))

(defrule recommend-computer-for-school-child-3
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 3) (eq ?form 1)))
    =>
    (assert (recommended-computer "MacBook air"))
    (printout t "Recommended computer: MacBook air" crlf))

    
    (defrule recommend-computer-for-school-child-4
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 1) (eq ?form 1)))
    =>
    (assert (recommended-computer "Dell dualcore"))
    (printout t "Recommended computer: dell dual core" crlf))

(defrule recommend-computer-for-school-child-5
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 2) (eq ?form 1)))
    =>
    (assert (recommended-computer "acer aspire 5"))
    (printout t "Recommended computer: acer aspire 5" crlf))

(defrule recommend-computer-for-school-child-6
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 3) (eq ?form 1)))
    =>
    (assert (recommended-computer "MacBook Pro"))
    (printout t "Recommended computer: MacBook pro" crlf))

(defrule recommend-computer-for-school-child-7
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 1) (eq ?form 2)))
    =>
    (assert (recommended-computer "Budget pC"))
    (printout t "Recommended computer: i3 Budget PC" crlf))

(defrule recommend-computer-for-school-child-8
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 2) (eq ?form 2)))
    =>
    (assert (recommended-computer "All-in-one computer"))
    (printout t "Recommended computer: core i5 All-in-one computer" crlf))

(defrule recommend-computer-for-school-child-9
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 13) (<= ?age 18) (eq ?budget 3) (eq ?form 2)))
    =>
    (assert (recommended-computer "High-performance PC"))
    (printout t "Recommended computer: High-performance PC" crlf))


    (defrule recommend-computer-for-school-child-10
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 1) (eq ?form 2)))
    =>
    (assert (recommended-computer "PC with educational software"))
    (printout t "Recommended computer: Dual core budget PC" crlf))

(defrule recommend-computer-for-school-child-11
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 2) (eq ?form 2)))
    =>
    (assert (recommended-computer "All-in-one computer"))
    (printout t "Recommended computer: core i3 All-in-one computer" crlf))

(defrule recommend-computer-for-school-child-12
    (age ?age)
    (budget ?budget)
    (form-factor ?form)
    (test (and (>= ?age 6) (<= ?age 12) (eq ?budget 3) (eq ?form 2)))
    =>
    (assert (recommended-computer "High-performance desktop"))
    (printout t "Recommended computer: High-performance desktop But Recommend a lower price point for the age" crlf))

    (defrule prompt-for-facts
    =>
    (printout t "Enter age: ")
    (bind ?age (read))
    (printout t "Enter budget (<200000(1)/200000-350000(2)/>350000(3)): ")
    (bind ?budget (read))
    (printout t "Enter form factor (laptop(1)/desktop(2)): ")
    (bind ?form-factor (read))
    (assert (age ?age) (budget ?budget) (form-factor ?form-factor))
    (run))

(defrule exit-program
    (declare (salience -10))
    (not (age ?))
    (not (budget ?))
    (not (form-factor ?))
    =>
    (printout t "Exiting the program..." crlf)
    (exit))

(defrule main-loop
    =>
    (do-for-all-facts ((?f age)) TRUE
        (run))
    (assert (age 0) (budget 0) (form-factor 0))
    (run))

(defmodule MAIN (export ?ALL))

    
