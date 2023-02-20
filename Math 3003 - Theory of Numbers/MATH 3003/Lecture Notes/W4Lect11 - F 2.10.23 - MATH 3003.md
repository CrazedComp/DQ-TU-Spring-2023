# $\S$ 3.4 - The Euclidian Algorithm cont.

## More on Computing Bezout Coefficients

Understand through some examples, 

First 
### E.g. 1 (a) - Find $gcd(120,23).$
$Sol^n:$
$120=23()+$
$120=23(5)+5$
$23=5()+$
$23=5(4)+3$
$5=3()+$
$5=3(1)+2$
$3=2()+$
$3=2(1)+1$
$2=1()+$
$2=\boxed{1}(2)+0$

$\therefore gcd(120,23)=1$

### E.g. 1 (b) - Write $gcd(120,23)$ as a linear combination of 120 and 23.

This is the thing we're learning. So we have 
Line (1) $~~~~~120=23(5)+5$
Line (2) $~~~~~23=5(4)+3$
Line (3) $~~~~~5=3(1)+2$
Line (4) $~~~~~3=2(1)+1$
Line (5) $~~~~~2=\boxed{1}(2)+0$

We shall start with the line above the last line. I.e. the line with the **gcd as the remainder.** (keep gcd=ax+by)

$Sol^n:$

By line (4), $~~~3=2(1)+1\implies1=3-2(1)$
Now by line (3), $~~~5=3(1)+2 \implies 2=5-3(1)$. 
Sub in line (3) remainder into line (4)...We get,
$1=3-2(1)=3-(5-3(1))(1).$
Group like coefficients, 
$1=3(2)-5.$

By line (2), $~~~23=5(4)+3\implies 3=23-5(4)$
Sub into new line (3), we get
$1=\boxed3(2)-5$
$1=(23-5(4))(2)-5$, (and grouping we get)
$1=23(2)-5(9)$

By line (1), $~~~5=120+23(5),$ so
$1=23(2)-[120-23(5)]9$
$\implies 1=23(47)-120(9)$

And we are done.
$q.e.d.$


---
### Exercise
#### (a) Find the $gcd(286, 40)$
We will go through both parts more quickly now.

$Sol^n:$
$$\begin{align*}
&286=40(7)+6\\
&40=6(6)+4\\
&6= 4(1)+2 \\
&4=2(2)+0 
\end{align*}
$$
$\therefore gcd(296,40)=2$
$q.e.d.$

#### (b) then express as a linear combination of 286 & 40.
$Sol^n:$
$$ \begin{align*}
&2= 6-4(1),~~~4=40-6(6)\\
&2=6-(40-6(6))1\\
&2=7(6)-40(1),~~~6=286-40(7) \\
&2= 7(286-40(7))-40(1)\\\\
&\therefore2= 7(286)-50(40)
\end{align*}$$
$q.e.d.$

---
### Express $gcd(15,35,91)$ as a linear combination of 15, 35, 91. 

We can incorporate what we know about $gcd(x_i)$ here as well.

$Sol^n:$

$gcd(15,35,91)=gcd(gcd(15,35),91)$

By Euclidian Algorithm,
$35=15(2)+5$
$15=5(3)+0$
$\therefore gcd(15,35)=5$

Now, $gcd(gcd(15,35),91)=gcd(5,91)$
$91=5*18+1$
$5=1*5+0$
$\therefore gcd(5,91)=1$.

Now we know 
$1=91(1)+5(-18)$
and we can plug in from other previous inner gcd steps,
$35=15(2)+5\implies 5=35(1)-15(-2)$
so $1=91(1)+5(-18)$
$\implies 1=91(1)+(35(1)+15(-2))(-18)$
$1=1(91)-18(35)+36(15)$
$q.e.d.$

---
## An Interesting Result of the Euclidian Algorithm
Consider the Fibonnaci Sequence. 
$$1,1,2,3,5,8,13,21,34,55,...$$

Lets find the $gcd$ of the last two numbers listed, $34,55$.

$Sol^n:$
$gcd(34,55)\implies$
$55=34(1)+21$
$34=21(1)+13$
$21=13(1)+8$
$13=8(1)+5$
$5=3(1)+2$
$3=2(1)+1$
$2=1(2)+0$


---
# $\S$ 3.5 - The Fundamental Theorem of Arithmetic

$$\begin{align*}
& FTA:~\text{Let }n \in \mathbb{N}\backslash \{1\}.\\
& \text{Then $n$ may be written as a product of prime numbers.}\\
& \text{This prime factorization is unique up to}\\
& \text{the order in which the prime factors are multiplied.}
\end{align*}
$$

### E.g.'s
$225=3*5*3*5=3^{2}*5^{2}$
$51=3*17=3^{1}*17^{1}$
$180=(2*3)*5(2*3)=2^{2}*3^{2}*5$


---
## Proving This Less Formally
### Lemma 1
Let $a,b,c\in \mathbb{N}.$ 
Suppose that $c|ab$ and $gcd(a,c)=1,$ then $c|b.$

Reference this proof.
[[W3Lect8 - F 2.3.23 - MATH 3003#Lemma for Composite Numbers|Lemma for Composite Numbers]].

### Lemma 2
Let $p$ be a prime and let $a_{1},a_{2},a_{3},...,a_{n}\in \mathbb{N}.$

Assume $p|(a_{1}a_{2}a_{3}\cdots a_{n})$. Then $p|a_{i}$ for some $o\in \{1,2,3,...,n\}$

$Justification:$
Inductive step:

$$\prod\limits_{i=1}^{n} a_{i} = \left[ \prod\limits_{i=1}^{n-1} a_{j} \right]a_{n}=x*a_{n}$$

So $x=\left[ \prod\limits_{i=1}^{n-1} a_{j} \right]$.

Now for our quick proof.
For now, say $n=p_{1}p_{2}p_{3}\cdots p_{s}=q_{1}q_{2}q_{3}\cdots q_{t},$
where each $p_{i}$ and each $q_{j}$ is prime.

WLOG, assume $s\leq t,$
$p_{1}(p_{2}p_{3}\cdots p_s)=q_{1}q_{2}q_{3}\cdots q_{t}$
$\implies p_{1}|q_{1}q_{2}q_{3}\cdots q_{t}$

by Euclid's Lemma (Lemma 2),
$p_{1}|q_{j}$ for some $j$.

By reordering the $q$'s if needed, we may assume $p_{1}|q_{1}.$

<br>

But then $p_{1}=q_{1}$
$p_{2}p_{3}p_{4}\cdots p_{s}=q_{2}q_{3}q_{4}\cdots q_{t}$
$\implies p_{2}|q_{2}q_{3}\cdots q_{t}$

Again by Euclid's Lemma, $\implies p_{2}|q_{j}$ for some $j\in \{2,3,...,t\}$.
After reordering the $q$'s, we get $p|q_{2}$. 
So $p_{2}=q_{2}$.


