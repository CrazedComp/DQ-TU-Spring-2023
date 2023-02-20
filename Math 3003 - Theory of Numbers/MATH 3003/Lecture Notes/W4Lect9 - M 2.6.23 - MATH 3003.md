## Homework Questions
### Show that if $M_{n}$ is prime, then so is $n$ itself.

The main problem is we forgot to show that $M_{n}$ is prime completely (since you don't want to factor $p=p*1=p*1*1*1$, which is trivial.) We also forgot to check 1, and other small details. 

$Proof:$ It suffices to prove that if $n$ is **not** prime, then neither is $M_n$. (i.e. a proof by contrapositive).

If $n$ is not prime, then $n=1 ~\lor~n~is~composite.$
If $n=1$, then $M_n=M_{1}=2^{1}-1=1$, which is not prime. 

If instead $n$ is composite, then we may write $n=ab$, where $a,b\in \{2,3,4,...,n-1\}$

Then $2^{n}-1=2^{ab}-1=(2^{a})^{b}-1$
$=(2^{a}-1)(1+2^{a}+2^{{a}^{2}}+2^{{a}^{3}}+\cdots +2^{{a}^{b-1}}),$ since it is a geometric series.

By closure, it's clear that $2^{n}-1 \in \mathbb{Z},$ and $1+2^{a}+2^{{a}^{2}}+2^{{a}^{3}}+\cdots +2^{{a}^{b-1}} \in \mathbb{Z}.$

But $a\geq 2,$ so $2^{a}-1\geq 3$ 
and $1+2^{a}+2^{{a}^{2}}+2^{{a}^{3}}+\cdots +2^{{a}^{b-1}} \geq 1+2^2=5$

Neither factor is $1$, so we have shown $m_{n}$ is composite.


# $\S$ 3.3 - Continued

## Theorem
Let $a,b\in \mathbb{Z}$, not both $0$. Let $d\in \mathbb{N}$.

In this case, we have

$d=gcd(a,b) \iff$
1. $d|a~\land~d|b$
2. If $(c|a ~\land~c|b),$ then $c|d$.

<br>

$Proof:$ 
**First** suppose $\boxed{1}$ and $\boxed{2}$ hold. 
$\boxed1$ tells us $d$ is a common divisor of $a$ and $b$.

Let $c$ be any common divisor of $a$ and $b$.
Then by $\boxed2,~c|d$. This means $\exists k\in \mathbb{Z}$ so that $ck=d$. 
$d\neq 0,$ so $k\neq 0$.

But now $|k| \geq 1$, so $|d|=|c|*|k|\geq |c|$.
But also $d>0,$ so $d\geq |c|\geq c$. Then $d$ is the *greatest* common divisor of $a$ and $b$, i.e. $d=gcd(a,b)$.

**Conversely**, assume $d=gcd(a,b)$. Then $\boxed1$ is clear from the definition. 
To prove $\boxed2$, note that by [[W2Lect4 - W 1.25.23 - MATH 3003#Bézout's Theorem (or Identity)|Bézout's Theorem]], 
$\exists~m,n\in \mathbb{Z}$ so that $d=am+bn$.

Let $c\in \mathbb{Z}$ be such that $c|a ~\land~ c|b$. Then $\exists~x,y\in \mathbb{Z}$ so that $cx=a$ and $cy=b$.

Then $d=am+bn$
$=(cx)m+(cy)b$
$=c(xn_yb)$, so $c|d$, and $\boxed2$ holds. 
$q.e.d.$

<br>

From this theorem, we know every common divisor of $a$ and $b$ must also divide $gcd(a,b)$.

---
### Exercise 1 - Let $a\in \mathbb{Z}$. Show that $gcd(a,a+3)=\{1,3\}$.

$Proof:$
First, note that $(a+3)(1)+a(-1)=3$ (using Bezout's thm.)

Then $gcd(a,a+3) \mid 3$
(since $gcd(a,b) \mid any ~lin~comb.~of~a,b$)

Then the only positive integer factors of $3$ are $1$ and $3$.
So $gcd(a,a+3)\in\{1,3\}$.
$q.e.d.$

---
### Exercise 2 - Let $a,b\in \mathbb{Z}$, and assume $gcd(a,b)=1$. What are the possible values of $gcd(a^{2}+b^{2},a+b)$.

Hints:
1. $gcd(cx,cy)=|c|*gcd(x,y)$ by Exercise 9.
2. $2a^{2}$ is a linear combination of $a^{2}+b^{2}$ and $a+b$, wonder what the coefficient's are?

$Sol^n:$
Notice $(a^{2}+b^{2})(1)+(a+b)(a-b)=2a^{2}$,
so $gcd(a^{2}+b^{2},a+b)\mid 2a^{2}$.

Also $(a^{2}+b^{2})(1)+(b+a)(b-a)=2b^{2}$,
so $gcd(a^{2}+b^{2},a+b)\mid 2b^{2}$.

Then $gcd(a^{2}+b^{2},a+b)\mid gcd(2a^{2},2b^{2})$.
Which implies $gcd(a^{2}+b^{2},a+b)\mid 2*gcd(a^{2},b^{2})$.

<br>

So now, what is $gcd(a^{2}+b^{2})$? 
Claim: Since $gcd(a,b)=1$ (in the quesion this is given),
implies $gcd(a^{2},b^{2})=1$.

Suppose, BWOC, that $gcd(a^{2},b^{2})=d=\geq 1$.
Let $p$ be any prime factor of $d$. (since any number $\geq 1$ has prime factors).

Then $p|d ~\land~ d|a^{2}$, so $p|a^{2}$.

(This is going to look silly, but)
But then $p|a*a$, so by Euclid's Lemma, $p|a ~\lor~ p|a.$
That is, $p|a$.

Similarly, $p|b$.

But $p|a ~\land~ p|b \implies p=gcd(a,b)$.
Contradicting the fact that $gcd(a,b)=1$!

So $gcd(a^{2},b^{2})=1$.

<br>

Since $gcd(a^{2}+b^{2},a+b) \mid 2*gcd(a^{2},b^{2})~~~~~~~$ (from earlier)
and $gcd(a^{2},b^{2})=1$, 

Then $gcd(a^{2}+b^{2},a+b)\mid 2$
so therefore $gcd(a^{2}+b^{2},a+b)\in \{1,2\}.~~~\blacksquare$

---
