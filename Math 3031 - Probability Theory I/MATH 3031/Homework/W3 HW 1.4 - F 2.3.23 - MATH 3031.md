## Exercises 1.12-1.15
Dean Quach

![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=46]]

---
### Exercise 1.12. - We roll a fair die repeatedly until we see the number four appear and then we stop. 
#### (a) What is the probability that we need at most 3 rolls? 
$Sol^n:$

Recall [[W2 HW 1.3 - F 1.27.23 - MATH 3031#Exercise 1.10. - We roll a fair die repeatedly until we see the number four appear and then we stop. The outcome of the experiment is the number of rolls.|Exercise 1.10]]
$P(k) = \dfrac{5^{k-1}*1}{6^k}=\left( \dfrac{5}{6} \right)^{k-1}\dfrac{1}{6}$

So, 
$$\begin{align*}
& P(need~at~most~3~rolls)\\
&= P(1) + P(2) + P(3)\\
&= \left( \dfrac{5}{6} \right)^{(1)-1}\dfrac{1}{6} + \left( \dfrac{5}{6} \right)^{(2)-1}\dfrac{1}{6} + \left( \dfrac{5}{6} \right)^{(3)-1}\dfrac{1}{6}\\
&= \frac{1}{6} \left(1 + \frac{5}{6} + \left(\frac{5}{6}\right)^{2}\right)\\
&= \frac{1}{6} \left(\frac{\cancelto{66}{11}}{\cancelto{36}{6}} + \frac{25}{36}\right) = \frac{1}{6}\left(\frac{91}{36}\right) = \frac{91}{216}. ~~~\blacksquare
\end{align*}
$$

#### (b) What is the probability that we needed an even number of die rolls?
$Sol^n:$

$$\begin{align*}
& P(need~even~number~of~rolls)\\
&= P(2) + P(4) + \cdots + P(2b),~for~some~b\in \mathbb{N}\\
&= \sum\limits_{b=1}^{\infty} P(2b) \\
&= \sum\limits_{b=1}^{\infty} \frac{1}{6} \left(\frac{5}{6}\right)^{(2b)-1} \\
&= \frac{1}{\cancel{6}} \sum\limits_{b=1}^{\infty} \left(\frac{25}{36}\right)^{b} \left(\frac{\cancel{6}}{5}\right)\\
&= \frac{1}{5} \sum\limits_{b=1}^{\infty} \left(\frac{25}{36}\right)^b\\
&= \frac{1}{5} * \frac{\frac{25}{36}}{1-\frac{25}{36}}= \frac{1}{\cancelto{1}{5}}* \frac{\cancelto{5}{25}}{\cancel{36}} \frac{\cancel{36}}{11} = \frac{5}{11}.~~~\blacksquare
\end{align*}
$$


---

### Exercise 1.13. - At a certain school, 25% of the students wear a watch and 30% wear a bracelet. 60% of the students wear neither a watch nor a bracelet. 

#### (a) One of the students is chosen at random. What is the probability that this student is wearing a watch or a bracelet? 
$Sol^n:$
Note: 
- $P(Watch)=0.25$
- $P(Bracelet)=0.3$
- $P(Neither)=0.6$

$P(Watch ~\cup~ Bracelet)$
$=1-P((Watch ~\cup~ Bracelet)^C)$
$=1-P(Neither)$
$=1-0.6=\boxed{0.4}.$

#### (b) What is the probability that this student is wearing both a watch and a bracelet?
$Sol^n:$

$P(Both) = P(Watch ~\cap~ Bracelet)$
$= P(Watch) + P(Bracelet) - P(Watch ~\cup~ Bracelet)$
$= P(Watch) + P(Bracelet) - 0.4~~~$ (from part (a))
$=0.25+0.3-0.4=0.25-0.1=\boxed{0.15}.$

---
### Exercise 1.14. - Assume that $P(A) = 0.4$ and $P(B) = 0.7$. Making no further assumptions on $A$ and $B$, show that $P(AB)$ satisfies $0.1 ≤ P(AB) ≤ 0.4$. 
$Proof:$
We know,
- $P(A)=0.4$
- $P(B)=0.7$

We can find $P(A \cup B)$.

By the inclusion-exclusion principle, we know
$P(A \cup B)=P(A)+P(B) - P(AB)$
$\implies P(AB)= P(A) + P(B) - P(A \cup B)$
$\implies P(AB)=0.4+0.7 - P(A \cup B)$
$\implies P(AB)=1.1 - P(A \cup B)$

Now, by definition, a disjoint union of subsets in $\Omega$ cannot exceed $\Omega$. 
And in the case of probability where we set the measure $P(\Omega)=1$, we know that $P(A \cup B) \leq 1.$

This implies $P(AB) =1.1-P(A \cup B) \geq 1.1 -1=0.1$
$\iff P(AB)\geq 0.1.$

Now note that $P(B)\geq P(A)$.
Both $A\subset A \cup B,~B\subset A \cup B$.
Consider $P(B)=0.7$, then notice that $P(A \cup B) \geq P(B)$.

Then $P(AB)=1.1-P(A\cup B) \leq 1.1 - 0.7 = 0.4$.
$\iff P(AB)\leq 0.4$.

Therefore, $0.1 \leq P(AB) \leq 0.4$.
$q.e.d.$


---
### Exercise 1.15. An urn contains 4 balls: 1 white, 1 green and 2 red. We draw 3 balls with replacement. Find the probability that we did not see all three colors. Use two different calculations, as specified by (a) and (b) below. 

#### (a) Define the event $W = \{white ~ball ~did ~not ~appear\}$ and similarly for $G$ and $R$. Use inclusion-exclusion. 
$Sol^n:$ 
Set 
- White ball did not appear $:= W$
- Green ball did not appear $:= G$
- Red ball did not appear $:= R$

We need to find $P(W \cap G\cap R)$
Recall: 
$P(A_{1} \cap A_{n}) = \sum P(Singletons) - \sum P(Pairs)+\sum P(Triples) \mp \cdots$

So in this case we need to find

$$\begin{align*}
P(W\cap G\cap R)\\
&= P(W)+P(G)+P(R)\\
& ~~~-P(WG)-P(WR)-P(GR)\\
& ~~~~~~+P(WGR)
\end{align*}
$$

<br>

*An urn contains 4 balls: 1 white, 1 green, and 2 red. With replacement.*

The sum of the singletons: 
$P(W) + P(G) + P(R)$
$= P(you~get~a~green~or~red) + P(~~~~~~~~~~) + P(~~~~~~~~~)$

$= \dfrac{3*3*3}{4*4*4} + \dfrac{3*3*3}{4*4*4} + \dfrac{2*2*2}{4*4*4}$

$= 2\left(\dfrac{3^3}{4^3}\right) + \dfrac{2^3}{4^3}=\dfrac{2*3^{3}+2^{3}}{4^{3}}$

The sum of the doubles: 
$-P(WG)-P(WR)-P(GR)$
$=-P(you~get~a~red)-P(~~~~~~~~)-P(~~~~~~~~)$

$= -\dfrac{2*2*2}{4*4*4}- \dfrac{1*1*1}{4*4*4} - \dfrac{1*1*1}{4*4*4}$

$=-\dfrac{2^{3}-2}{4^3}$

and $P(WGR)=0$ since it is impossible to have none of the colors.

<br>

Finally,
$$P(W\cup G \cup R) = \dfrac{2*3^{3}+2^{3}}{4^{3}} -\dfrac{2^{3}-2}{4^3} +0$$
$$=\frac{2*3^3-2}{4^3}=\frac{52}{64}=\frac{26}{32}=\frac{13}{16}.~~~\blacksquare$$


#### (b) Compute the probability by considering the complement of the event that we did not see all three colors.

$Sol^n:$
Notice
$P((W\cap G\cap R)^{C})\implies$ We see all three colors

*An urn contains 4 balls: 1 white, 1 green, and 2 red. With replacement.*
$P((W\cap G\cap R)^{C})=\dfrac{2*1*1*6!}{4*4*4}=\dfrac{12}{64}=\dfrac{3}{16}$ .

So we now have 
$P(W\cap G\cap R)=1-P((W\cap G\cap R)^{C})$

$=1- \dfrac{3}{16} = \dfrac{13}{16}.~~~\blacksquare$