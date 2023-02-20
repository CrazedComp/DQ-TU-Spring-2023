# Section 1.1:   
## Exercises 1.1 - 1.3
![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=44]]

---
### Exercises 1.1. - We roll a fair die twice. Describe a sample space $\Omega$ and a probability measure $P$ to model this experiment. Let $A$ be the event that the second roll is larger than the first. Find the probability $P(A)$ that the event $A$ occurs.

$Sol^n:$ 

$\Omega = \{1,2,3,4,5,6\} \times \{1,2,3,4,5,6\}$
$= \{ (1,1), (1,2),...(1,6)$
$~~~~~~(2,1), (2,2),...(2,6)$
$~~~~~~\downarrow~ ~~~~~~~~~~...~~~~~~~~~\downarrow$
$~~~~~~(6,1), (2,2),...(6,6)\}$

An example of a probability measure is, 
$$P_1=P(~D1=2 \lor 3, D2=4 \lor 5~) = \frac{4}{|\mathcal{F}|} = \frac{4}{36} = \frac{1}{9}$$
Note $|\mathcal{F}| = 36$ since $6*6=36$ (and only 2 actions imples "$\land~ 2$", more rolls $\implies$ higher exponent).

Now first, $A=\left\{  \{1,2,3,4,5,6\}\times \{2,3,4,5,6\} ~\Big|~ D_2>D_1, ~\forall~ i\in D_1,j\in D_2 \right\}$
$P(A) = $