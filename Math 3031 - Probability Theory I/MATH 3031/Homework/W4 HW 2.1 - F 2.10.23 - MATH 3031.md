## Exercises 2.1 - 2.8
Dean Quach

![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=87]]

---
### Exercise 2.1 - We roll two dice. Find the conditional probability that at least one of the numbers is even, given that the sum is 8.

$Sol^n:$
Let $\Omega=\big\{(x_{1},x_{2}):x_{i}\in \{1,2,...,6\}\big\}$.
Let $A=$ the event that at least one of the numbers is even,
and $B=$ the event that the sum is 8. 

Then $P(A|B)=\frac{P(AB)}{P(B)}$.

Notice that $B=\big\{ (2,6),(3,5),(4,4),(5,3),(6,2) \big\},$ 

so then $P(B)=\dfrac{\#B}{\#\Omega} = \dfrac{5}{6^{2}}=\dfrac{5}{32}.$

Also note $AB=\big\{ (2,6),(4,4),(6,2) \big\},$

so $P(AB)=\dfrac{\#AB}{\#\Omega}=\dfrac{3}{36}= \dfrac{1}{12}.$

Finally, $$P(A|B)=\frac{P(AB)}{P(B)}= \dfrac{\frac{1}{12}}{\frac{5}{36}}=\frac{1}{12} \frac{36}{5}=\frac{3}{5}.~~~\blacksquare$$


---
### Exercise 2.2 - A fair coin is flipped three times. What is the probability that the second flip is tails, given that there is at most one tails among the three flips?

$Sol^n:$
$\Omega = \big\{ (x_{1},x_{2},x_{3})~:~x_{i\in}\{H,T\},~i=\{1,2,3\} \big\}$.
Let $A=$ the event that the second flip is tails, i.e. $x_{2}=T$.
Let $B=$ the event that there is **at most** one tails among the three flips. 

Then notice $B=\big\{  (H,H,T),(H,T,H),(T,H,H)(H,H,H)  \big\}$
and $\#\Omega = 2^{3}=8$.

So $P(B)=\dfrac{\#B}{\#\Omega}=\dfrac{4}{8}=\dfrac{1}{2}.$

Also notice $AB=\big\{(H,T,H)\big\},$

so $P(AB) = \dfrac{\#AB}{\#\Omega}=\dfrac{1}{8}.$

Finally, we know that $P(A|B)= \dfrac{P(AB)}{P(B)}= \dfrac{\frac{1}{8}}{\frac{1}{2}}=\dfrac{2}{8}=\dfrac{1}{4}.~~~\blacksquare$



---
### Exercise 2.3 - What is the probability that a randomly chosen number between 1 and 100 is divisible by 3, given that the number has at least one digit equal to 5?
$Sol^n:$ 
Let $A=$ the event a randomly chosen number between 1 and 100 is divisibile by 3
Let $B=$ the event that a number has one digit equal to 5. 

Notice, $B=\{5,15,25,35,45,55,65,75,85,95,50,51,52,53,54,56,57,58,59\}$
and $AB=\{15,45,75,51,54,57\}$

So now $P(A|B)=\dfrac{P(AB)}{P(B)}=\dfrac{\frac{\#AB}{\#\Omega}}{\frac{\#B}{\#\Omega}}=\dfrac{\#AB}{\#B} = \dfrac{6}{19}.~~~\blacksquare$


---
### Exercise 2.4 - We have two urns. The first urn contains two balls labelled 1 and 2. The second urn contains three balls labeled 3, 4, and 5. We choose one of the urns at random (with equal probability) and then sample one ball (uniformly at random) from the chosen urn. What is the probability that we piked the ball labeled 5?

$Sol^n:$
Let $A=$ the event we pick a 5.
Also let $B=$ the event we draw from the first urn.
Then $B^{C}=$ the event we draw from the second urn, (not the first urn).

Note $P(B)=P(B^{C})=1/2$, since they're equally likely. 

Now $P(A|B)=P(we~get~5~|~1st~urn)=0$
and $P(A|B^{C})=P(we~get~5~|~2nd~urn)=\dfrac{1}{3}$.

We can use the multiplication rule, 
recall 
$$P(A|B)=\dfrac{P(AB)}{P(B)} \implies P(AB)=P(B)P(A|B).$$

But in this case, $P(AB)=P(A)$, since the probability you get a 5 and chose the 1st urn is the same as if you chose 5.
But we need to actually add up two probabilities.
$$P(A)= P(B)P(A|B) + P(B^{C})P(A|B^{C})=\frac{1}{2}\cdot0 + \frac{1}{2} \cdot \frac{1}{3} = \frac{1}{6}.~~~\blacksquare$$


---
### Exercise 2.5 - We have two urns. The first urn contains three balls labeled 1, 2, and 3. The second urn contains four balls labeled 2, 3, 4, and 5. We choose one of the urns randomly, so that the probability of choosing the first one is 1/5 and the probability of choosing the second is 4/5. Then we sample one ball (uniformly at random) from the chosen urn. What is the probability that we picked a ball labeled 2?

$Sol^n:$
Let $A=$ the event we pick a 2.
Let $B=$ the event we pick urn \#1.
Then of course $B^{C}=$ the event we pick urn \#2.

Now, $P(B)=\dfrac{1}{5}$ and $P(B^{C})=\dfrac{4}{5}.$
And now $P(A|B)=\dfrac{1}{3}$ and $P(A|B^{C})=\dfrac{1}{4}.$

And finally, $P(A)=P(A|B)P(B)+P(A|B^{C})P(B^{C})$

$=\dfrac{1}{3} \cdot \dfrac{1}{5} + \dfrac{1}{4}* \dfrac{4}{5} =\dfrac{1}{15}+ \dfrac{\cancelto{3}{1}}{\cancelto{15}{5}}=\dfrac{4}{15}.~~~\blacksquare$


---

### Exercise 2.6 - When Alice spends the day with the babysitter, there is a 0.6 probability that she turns on the TV and watches a show. Her little sister Betty cannot turn the TV on by herself. But once the TV is on, Betty watches with probability 0.8. Tommorow the girls spend the day with the babysitter.

#### (a) What is the probability that both Alice and Betty watch TV tomorrow?
$Sol^n:$
Let $A=$ the event Alice watches
and $B=$ the event Betty watches

Then $P(AB)=P(A)P(B|A)=0.6*0.8=0.48~~~\blacksquare$

#### (b) What is the probability that Betty watch TV tomorrow?
$Sol^n:$
Betty cannot turn on the TV, so there is a probability of 0 if the TV is off. So the only possible way whe can watch TV is if it was already on, and therefore "only if Alice was already watching".

So $P(B|A^C)=0$.
And also $P(B)=P(B|A)P(A)=0.8*0.6 = 0.48~~~\blacksquare$

#### (c) What is the probability that only Alice watches TV tomorrow?
$Sol^n:$
$P(AB^{C})=P(A)-P(AB)= 0.6-0.48=0.12~~~\blacksquare$

---
### Exercise 2.7
#### (a) Use the definition of conditional probability and additivity of probability to show that $P(A^{C}|B)=1-P(A|B)$.

$Proof:$
$P(A^{C}|B)=\dfrac{P(A^{C}B)}{P(B)}$
We need to get to $A|B$, so we need to include AB somehow. 
Notice $A^{C}B \cup AB=B$, also note that it is a disjoint union. 
This implies $P(A^{C}B) + P(AB)=P(B).$
Which can be rearranged as $P(A^{C}B)=P(B)-P(AB)$.

Now, notice 
$\dfrac{P(A^{C}B)}{P(B)}=\dfrac{P(B)-P(AB)}{P(B)}=1-\dfrac{P(AB)}{P(B)}=1-P(A|B)$.

Therefore 
$P(A^{C}|B)=1-P(A|B).$
$q.e.d.$

#### (b) Suppose $P(A|B)=0.6$ and $P(B)=0.5.$ Find $P(A^{C}B)$.
$Sol^n:$

By part (a), we know
$P(A^{C}|B)=1-P(A|B)=1-0.6=0.4.$
And now
$P(A^{C}|B)=\dfrac{P(A^{C}B)}{P(B)}$
$\implies =P(A^{C}B)$, which is the mutiplication rule.
So then 
$P(A^{C}B)=P(B)P(A^{C}|B)=0.5*0.4=0.2.~~~\blacksquare$



---
### Exercise 2.8 - We shuffle a deck of cards and deal three cards (without replacement). Find the probability that the first card is a queen, the second is a king, and the third is an ace.

$Sol^n:$
Let 
- $A=$ the event the first card is a queen
- $B=$ the event the second is a king
- $C=$ the event the third is an ace

Then $P(ABC)=P(BA)P(C|BA)=P(A)P(B|A)*P(C|BA)$

$=\dfrac{4}{52}* \dfrac{4}{51}* \dfrac{4}{50}=\dfrac{1}{13} * \dfrac{4}{51} * \dfrac{2}{25}.~~~\blacksquare$
