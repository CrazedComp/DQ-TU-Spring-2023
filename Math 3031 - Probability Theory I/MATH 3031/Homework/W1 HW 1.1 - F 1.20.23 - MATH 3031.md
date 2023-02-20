## Exercises 1.1 - 1.3
Dean Quach
![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=44]]

---
### Exercise 1.1. - We roll a fair die twice. Describe a sample space $\Omega$ and a probability measure $P$ to model this experiment. Let $A$ be the event that the second roll is larger than the first. Find the probability $P(A)$ that the event $A$ occurs.

^0771fb

$Sol^n:$ 

Our sample space will be
$$\Omega = \{1,2,3,4,5,6\} \times \{1,2,3,4,5,6\}$$
$$= \{ (1,1), (1,2),...(1,6)$$
$$~~~~~~(2,1), (2,2),...(2,6)$$
$$~~~~~~\downarrow~ ~~~~~~~~~~~~~~...~~~~~\downarrow$$
$$~~~~~~(6,1), (2,2),...(6,6)\}$$
since orders matters. 

Quickly note that $|\Omega|=6^2=36$.

Since we want all outcomes to be equally likely, our probability measure should be set to set to

$$P(\omega_i)= \frac{1}{|\Omega|} = \frac{1}{36},~\forall i=1,...,36.$$

Note our event space is the same as the sample space, i.e. $\mathcal{F} = \Omega$.

Now first, the event $A=\left\{  \{1,2,3,4,5,6\}\times \{2,3,4,5,6\} ~\Big|~ D_2>D_1, ~\forall~ i\in D_1,j\in D_2 \right\}$
which written out
$$A=\big\{  (1,2), (1,3), (1,4), (1,5), (1,6),  $$
$$ (2,3), (2,4), (2,5), (2,6), $$
$$ (3,4), (3,5), (3,6), $$
$$ (4,5), (4,6), $$
$$ (5,6), \big\}$$

and the probability that the event $A$ occurs is
$$P(A) = \frac{|A|}{|\mathcal{F}|=|\Omega|} = \frac{15}{36} = \frac{5}{12}.~~~~~\blacksquare$$

<br>


<br>

Another quicker solution is 
$Sol^n~2:$

Let our sample space be
$$\Omega = \big\{ (i,j) ~\big|~ i,j \in \{1,2,3,4,5,6\} \big\}.$$

Note, our event space $\mathcal{F}=\Omega$

and let our event 
$$A = \big\{ (i,j) ~\big|~ i,j \in \{1,2,3,4,5,6\},~i<j \big\}.$$

Then
$$ |\Omega|=6^2=36$$
and
$$ |A|=\sum\limits_{i=1}^5 (6-i)=5+4+3+2+1=15 $$
since for each roll on the first roll $D_i,~i\in {1,2,3,4,5}$, the second roll $D_2$ only has $6-i$ posibilities.

And finally, our probability measure of A is
$$P(A) = \frac{|A|}{|\mathcal{F}|=|\Omega|} = \frac{15}{36} = \frac{5}{12}.~~~~~\blacksquare$$

--- 

### Exercise 1.2. - For breakfast Bob has three options: cereal, eggs or fruit. He has to choose exactly two items out of the three available. 
#### (a) Describe the sample space of this experiment. Hint. What are the different possible outcomes for Bob’s breakfast? 

$Sol^n:$
Notice, Bob has to choose two doesn't imply theres an order (or cartesian product), its just the events have two elements. 

So the sample space is, 
$$\Omega = \big\{ \{cereal,~eggs\}, \{cereal,~fruit\}, \{eggs,~fruit\}  \big\}.~~~~~\blacksquare$$

#### (b) Let $A$ be the event that Bob’s breakfast includes cereal. Express A as a subset of the sample space.

$Sol^n:$
Note again, $\mathcal{F}=\Omega$, since the events that can happen is only one of the three.
So the event $A \in\mathcal{F}$ is, 
$$A=\big\{ \{cereal,~eggs\}, \{cereal,~fruit\}  \big\}$$
and note, 
$$A= \Omega \backslash \{eggs,~fruit\}.$$
so clearly 
$$ A\subseteq \Omega.~~~~~\blacksquare$$

--- 

### Exercise 1.3.
#### (a) You flip a coin and roll a die. Describe the sample space of this experiment. 
$Sol^n:$
The sample space is
$$\Omega = \{H,T\} \times \{ 1,2,3,4,5,6 \} = \big\{  (i,j) ~\big|~ i\in\{H,T\},~ j\in\{1,2,3,4,5,6\}  \big\}~.$$
(written out...)
$$\Omega = \Big\{  (H,1), (H,2), (H,3), (H,4), (H,5), (H,6),$$
$$  (T,1), (T,2), (T,3), (T,4), (T,5), (T,6), \Big\}~.~~~~~\blacksquare$$

#### (b) Now each of 10 people flips a coin and rolls a die. Describe the sample space of this experiment. How many elements are in the sample space? 
$Sol^n:$
Now the sample space is the same but $\land {10}$. So one way to write it is

Let $c_i \in C = \{H,T\}$ and $d_i \in D = \{1,2,3,4,5,6\}$, for some $i=1,2,3,...,10$.
Then 
$$ \Omega = (C \times D)^{10} = \big(  \{H,T\} \times \{1,2,3,4,5,6\}  \big)^{10}$$
$$ =\big\{  (c_1,d_1,c_2,d_2,...,c_{10},d_{10}) ~\big|~ c_i \in C,~d_i\in D  \big\}$$
$$ =\big\{  (c_i,d_i)_{1<i<10} ~\big|~ c_i \in C,~d_i\in D  \big\}~.   $$
Also 
$$|\Omega|=2^{10} * 6^{10}=12^{10}=61917364224. ~~~~~\blacksquare$$

#### (c) In the experiment of part (b), how many outcomes are in the event where nobody rolled a five? How many outcomes are in the event where at least one person rolled a five?
$Sol^n~(i):$
This just asked for "how many outcomes". So I'm going to be lazy.

Similar defined sets $C,D$, but this time $D' \implies D \backslash \{5\}$ which now has only 5 elements.
S0
$$\Omega = 2^{10}*5^{10}=10^{10}=10000000000. ~~~~~\blacksquare$$

$Sol^n~(ii):$
From part (b), all events is $12^{10}$
and from $(i)$ we know no one rolls a five $\implies 10^{10}$.

So ONE person rolling is 
$$12^{10}-10^{10}. ~~~~~\blacksquare$$


