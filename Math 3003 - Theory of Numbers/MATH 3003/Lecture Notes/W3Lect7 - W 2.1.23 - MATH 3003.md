We left off at the following [[W3Lect6 - M 1.30.23 - MATH 3003#Exercise: Show that $ forall n in mathbb{Z},~3 n lor~3 n+2 lor~3 n+4$.|proposition]].

### Proposition: Let $n\in \mathbb{Z}$. Then at least one of the numbers $n,n+2,~or~n+4$ is divisible by $3$.

$Proof:$ By the [[W1Lect2 - F 1.20.23 - MATH 3003#Theorem - The Division Algorithm|Division Algotirhm]], we may write
$n=3q+R$ where $q\in \mathbb{Z},~r\in\{0,1,2\}$.

If $r=0$, then $n=3q$, so $3|n$.

If instead $e=1$, then $n+2=(3q+1)+2$
$3q+3=3(q+1)$, so $3|n+2$.

Finally if $r=2$, then $n+4=(3q+2)+4$
$=3q+6 =3(q+2)$, and then $3|n+4$.

So one of $n,n+2,n+4$ is a multiple of $3,~\forall n\in\mathbb{Z}.$ 



---

## The Goldback Conjecture (G.C.)

"Every even number greater than 2 is the sum of 3 prime numbers."
As of 2023, it is still unsolved along with its [[W3Lect7 - W 2.1.23 - MATH 3003#Weak Goldback Conjecture|weaker version]].

E.g.'s
- 4=2+2
- 6=3+3
- 8=3+5
- 10=3+7=5+5
- 12=5+7
- etc.

### Proposition
The following is an attempt to understand/simplify, but not create a complete proof.

**Claim:** The Goldback Conjecture holds $\iff$ Ever integer $\geq6$, is the sum of $3$ primes.

$Proof:~~$ "$\implies$"

Assume G.C. is true. Let $n\in \mathbb{Z}, ~n \geq 6$.
If $n$ is even, then $n-2$ is also even. 
Since $n-2\geq 4$, then by G.C.
$n-2=p+q$ for some primes $p$ and $q$.
Then $n=2+p+q$ for some primes $p$ and $q$.

If instead $n$ is odd, then note $n\geq 7$ and consider $n-3$.
We have $n-3~even ~\land~ n-3\geq 4$.
Then by G.C., $\exists~primes~s,t,$ so that $n-3=s+t$.
So $n=3+s+t,$ also the sum of 3 primes, as desired.

"$\impliedby$"
Conversely, suppose every integer $\geq 6$ is the sum of $3$ primes.
Let $m$ be an even number with $m\geq 4.$

Consider $m+2$. $m+2\geq 6$.
By hypothesis, $m+2=p+q+r$ for some primes $p,q,r$.

We cannot have $p,q,r$ all odd, since then $m+2$ would be odd. 
This is impossible, since $m$ and $2$ are even.

So at least one of $p,q,r$ is both prime and even. 

WLOG, assume $r$ is even and prime. Then $r=2$.
Then
$m+2=p+q+2$
$\implies m=p+q$, implying G.C. is true.
$q.e.d.$
 
YAY!!! We solved the Goldback Conjecture 
(not really, but you can get a feel for how its like)



---

## Weak Goldback Conjecture

Every odd integer $\geq 9$ is the sum of $3$ odd primes.

This problem as well, has not been solved as of 2023. But we believe we are very close to brute forcing the rest. This is because of a mathmatician named,

### Vinogradov (1930's)
Which proved...

Every "sufficiently large" off number is the sum of $3$ odd primes.

i.e. $\exists~ c\in \mathbb{Z},~s.t.~n~odd~\land~n\geq c \implies n$ is the sum of $3$ odd primes.

In class, I had not noted it down, but it was of the magnitude of $n\geq 10^{100,000,000}$
As of 2002, it has been reduced to $n\geq 10^{1346}$. And were on the edge of solving this since we can just be testing the rest of the primes until the question is solved, as of now we have tested primes up to $10^20$.

### Exercise: Show that every integer $\geq 12$ is the sum of 2 composite numbers.

$Proof:$ 
Let $n$ be even, and assume $n\geq 12$.
Then $n-4$ is also even, and $n-4\geq 8$, so $n-4>2$. 

Thus $n-4$ is composite. Also $4=2^{2}$, so $4$.

Put $g=n-4,~h=4$,
then $n=g+h$, the sum of $2$ composites.

<br>

If instead $n$ is odd, then $n\geq 13$. 
Then $n-9$ is even and $n-9>2$, 
so $n$ is composite.

Clearly $9=3^2$ is composite. Put $c=9,~d=9$, then $n=c+d$, also the sum of 2 composites. $~~~\blacksquare$

---
# $\S 3.3 -$ Properties of GCD

$Recall:$ Let $a,b,\in \mathbb{Z}$.

$gcd(a,b)= largest~integer~which~divides~both~a~and~b.$
(unless $a=b=0$, in which case we say $gcd(0,0)=0$)

## Theorem. Let $a,b\in \mathbb{Z},$ not both $0$. Let $d=gcd(a,b)$. Then $gcd\left(\frac{a}{d} , \frac{b}{d}\right)=1$.

$Proof:$ 
Let $e\in \mathbb{N}$ be such that $e \bigg| \dfrac{a}{d} ~\land~ e \bigg| \dfrac{a}{d}$.
Then $\exists k,l \in \mathbb{Z}$, so that $ek= \dfrac{a}{d} ~\land~ el= \dfrac{b}{d}$. 

Then $(de)k=a$ and $(de)l=b$
so $de|a ~\land~ de|b$. 

But $d$ is the **greatest** common divisors of $a$ and $b$ by hypothesis. 

Then $de\leq d$, so that $e\leq 1$.
But $e\in \mathbb{N}$, so we must have $e=1$.

Since the only positive integers dividing both $\dfrac{a}{b}$ and $\dfrac{b}{d}$ is $1$, we have $gcd\left(\dfrac{a}{d} , \dfrac{b}{d}\right)=1.$

$q.e.d.$



### Corollary. Let $a,b\in \mathbb{Z},~b\neq 0$. Then $\exists p,q \in \mathbb{Z}$ so that $\dfrac{a}{b}=\dfrac{p}{q}$ and $gcd(p,q)=1$.

$Proof:$
Let $d=gcd(a,b).$ 
Put $p= \frac{a}{d},~q= \frac{b}{d}$, then we use the previous [[W3Lect7 - W 2.1.23 - MATH 3003#Theorem. Let $a,b in mathbb{Z},$ not both $0$. Let $d=gcd(a,b)$. Then $gcd left( frac{a}{d} , frac{b}{d} right)=1$.|Theorem]].