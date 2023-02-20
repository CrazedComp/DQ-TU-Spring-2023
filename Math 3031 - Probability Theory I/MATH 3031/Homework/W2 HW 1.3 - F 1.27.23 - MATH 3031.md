## Exercises 1.9-1.11
Dean Quach

![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=45]]

---

### Exercise 1.9. - We break a stick at a uniformly chosen random location. Find the probability that the shorter piece is less than 1/5th of the original.
$Sol^n:$ 
The stick is uniformly random. 
Let $\Omega=[0,b]$, where $b$ is the length of the stick.
Then the event can be put as $A=\left\{\omega \in \Omega ~|~ \omega \leq \dfrac{b}{5} \lor \omega \geq\dfrac{4b}{5}\right\}$.

Then $P(A) = P\left(\left\{\omega \in \Omega ~|~ \omega \leq \dfrac{b}{5} \lor \omega \geq\dfrac{4b}{5}\right\}\right)$

$= P\left(\left\{\omega \in \Omega ~|~ \omega \leq \dfrac{b}{5} \right\}\right) + P\left(\left\{\omega \in \Omega ~|~  \omega \geq\dfrac{4b}{5}\right\}\right)$

$=\dfrac{b/5}{b}+\dfrac{b/5}{b}=\dfrac{2}{5}.~~~\blacksquare$



---
### Exercise 1.10. - We roll a fair die repeatedly until we see the number four appear and then we stop. The outcome of the experiment is the number of rolls.
#### (a) Following Example 1.16 describe a sample space $\Omega$ and a probability measure $P$ to model this situation.
$Sol^n~by~Recalling:$
$\Omega = \{1,2,3,4,...\} \cup \{\infty\}$.

Let $k\in \Omega,~k\geq 1,~s.t.$ the number four is obtained.
Then $P(k) \implies P(k)=P\{(k-1)+1\}$,
where $k-1 \implies$ you haven't gotten the number four. And $1 \implies$ the one event you do get a 4.

Note, for the "$k-1 \implies$ you haven't gotten the number four", that is when you have gotten 5 out of the 6 times.
And for the "$1 \implies$ the one event you do get a 4", this is 1 out of the 6 times.

So $P(k) = \dfrac{5^{k-1}*1}{6^k}=\left( \dfrac{5}{6} \right)^{k-1}\dfrac{1}{6},~for~some~k\in \Omega.~~~\blacksquare$


#### (b) Calculate the probability that the number four never appears. 
$Sol^n:$
Recall $P(k) = \dfrac{5^{k-1}*1}{6^k}=\left( \dfrac{5}{6} \right)^{k-1}\dfrac{1}{6},~for~some~k\in \Omega,$ is the probability you get a 4.

So to get the probability you don't,s
$$P(\infty)=1-\sum\limits_{k=1}^{\infty} P(k) = 1- \sum\limits_{k=1}^{\infty} \left( \dfrac{5}{6} \right)^{k-1}\dfrac{1}{6}$$
$$ = 1- \sum\limits_{k=1}^{\infty} \left( \dfrac{5}{6} \right)^{k-1}\dfrac{1}{6}.$$

Let $a=\dfrac{1}{6}$ and $r=\dfrac{5}{6}$.
Then
$$1-\frac{a}{1-r} = 1-\frac{\frac{1}{6}}{1-\frac{5}{6}}$$
$$ = 1-\frac{\frac{1}{6}}{\frac{1}{6}} = 1-1 = 0.$$

So,
$$P(\infty) = 0.~~~\blacksquare$$



--- 
### Exercise 1.11. - We throw a dart at a square shaped board of side length 20 inches. Assume that the dart hits the board at a uniformly chosen random point. Find the probability that the dart is within 2 inches of the center of the board.
$Sol^n:$
The sample space $\Omega$ is the area of the square board, $Area_{Board} = 20^2=400$.

The event, I'll denote $A$, is the area around the center of the board, $Area_{Center}=\pi (2)^2$.
Where we can say $A\subseteq \Omega$, and
$A=\{x ~:~ |x|\leq 2\}$.

So therefore,
$$P(A)=\frac{|A|}{|\Omega|} = \frac{Area_{Board}}{Area_{Center}}$$
$$=\frac{4\pi}{400}=\frac{\pi}{100}.~~~\blacksquare$$


