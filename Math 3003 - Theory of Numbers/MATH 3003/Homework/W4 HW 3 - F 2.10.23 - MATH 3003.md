## $\S$ 3.1 - 2, 3, 8, 10, 15, 18, 29
Dean Quach

![[Kenneth H. Rosen - Elementary Number Theory-Pearson (2011).pdf#page=86]]


--- 
### Exercise 3.1.2 - Determine which of the following integers are primes.
#### (a) 201

$201=3(67)$
which is the product of 2 integers.
So $201$ is not prime.

#### (b) 203
$203=7(29)$
So $203$ is not prime.

#### (c) 207
$207=9(23)$
So $207$ is not prime.

#### (d) 211
WNTS, that 211 is not divisible by primes less than $\sqrt{211}$. Meaning, not divisible by $\{2,3,5,7,11,13\}$.

After calculation, all do not divide211. 
So 211 is prime.

#### (e) 213 
$213=2(71)$
So 213 is not prime.

#### (f) 221
$221=13*17$
So 221 is not prime.

--- 
### Exercise 3.1.3 -
$Sol^n:$

$\pi(150)$
Note: $11<\sqrt{150}<12$
![[Sieve of Eratosthenes.jpg]]
(note, i forgot to cross out multiples of 11, which the only ones not crossed out are 121, 143)

So
the set of primes less than 150 is
$S=\{2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,$
$53,59,61,67,71,73,79,83,89,97,101,103,$
$107,109,113,127,131,137,139,149\}$

And of course, 
$\pi (150)=|S|=35.~~~\blacksquare$


--- 
### Exercise 3.1.8 - Show that the integer $Q_{n}=n!+1$ where $n$ is a positive integer, has a prime divisor greater than $n$. Conclude that there are infinitely many primes.
$Proof:$
Let $Q_{n}=n!+1,~n\in \mathbb{Z}_{>0}$ . 
Then $Q_{n}>1$, it follows that it has a prime divisor $p\mid Q_{n}$.

BWOC, say $p\leq n$,
then $p\mid n!$ and then $p$ divides any
linear combination of $Q_{n}$ and $n!$.
So then $p\mid Q_{n}-n!$. Contradiction!
Since $Q_{n}-n!=1$ and no number divides 1.
Therefore, $p\geq n$.

Notice, if $p$ is a prime divisor of $Q_{1}$,
then $p_{1}$ is a prime divisor of $Q_{2}$.
So then let $p_{n}$ be a prime divisor of $Q_{n-1}$. 
Then $p_{1}<p_{2}<\cdots <p_{n} <\cdots,$
and there are infinitely many primes.



--- 
### Exercise 3.1.10 - Using Euclid's proof that there are infinitely many primes, show that the $n$th prime $p_n$ does not exceed $2^{2^{n-1}}$ whenever $n$ is a positive integer. Conclude that when $n$ is a positive integer, there are at least $n+1$ primes less than $2^{2^{n}}$.

$Proof:$ 
Using induction, notice for $n=1,$
$p_{1}=2\leq 2^{2^{1-1}}=2$. 
So the base case holds. 

Assume for $k<n,$ that $p_{k}\leq 2^{2^{k-1}}$,
for $2\leq k \leq n-1,~k\in \mathbb{Z}$.

Then for $k=n,~\exists~q$ prime, such that
$q|Q_{n}$, where $q\neq p_{1},p_{2},...,p_{n}$.

Then $p_{n}<q\leq Q_{n}=(p_{1}p_{2}\cdots p_{n})+1\leq 2^{2^{0}}\cdot2^{2^{1}}\cdots 2^{2^{n-1}}$ 

$=2^{2^{0}+2^{1}+2^{2}+\cdots+2^{n-1}}=2^{2^{n-1}-1}+1$.

So, $p_{n}<2^{2^{n-1}-1}+1$. 
But since we know $p_{n}\in \mathbb{Z}$
$p_{n}\leq 2^{2^{n-1}-1}\leq 2^{2^{n-1}}$
$q.e.d.$

Now, since $p_{n}\leq 2^{2^{n-1}}$
that implies $p_{n+1}\leq 2^{2^{n}}.$
But $2^{2^{n}}$ is not prime for $n>0$, so we have at least $n+1$ primes less than $2^{2^{n}}.~~~\blacksquare$

--- 
### Exercise 3.1.15 - Find the smallest prime in the arithmetic progression $an+b$, for these values of $a$ and $b$:

#### (a) $a=3,~b=1$
#### (b) $a=5,~b=4$
#### (c) $a=11,~b=16$




--- 
### Exercise 3.1.18 - Use Dirichlet's theorem to show that there are infinetely many primes whose decimal expansion ends with the two digits 23.





--- 
### Exercise 3.1.29 - Show that if $f(x)=a_{n}x^{n} + a_{n-1}x^{n-1}+\cdots+a_{1}x+a_{0}$, where $n\geq 1$ and the coefficients are integers, then there is a positive integer $y$ such that $f(y)$ is composite. 
(*Hint:* Assume that $f(y)=p$ is prime, and show that $p$ divides $f(x+kp)$ for all integers $k$. Conclude that there is an integer $y$ such that $f(y)$ is composite from the fact thjat a poynomial of degree $n,~n>1,$ takes on each value at most $n$ times.)



---
---

## $\S$ 3.2 - 1, 2, 3, 10, 11, 14. 
![[Kenneth H. Rosen - Elementary Number Theory-Pearson (2011).pdf#page=100]]

---
### Exercise 3.2.1 - Find the smallest five consecutive composite integers. 



---
### Exercise 3.2.2 - Find one million consecutive composite integers.



---
### Exercise 3.2.3 - Show that there are no "prime triplets," that is, primes $p,~p+2,~$and $p+4,$ other than $3,5,$ and $7$.



---
### Exercise 3.2.10 - Show that there are infinitely many primes that are not one of the primes in a pair of twin primes. 
(*Hint:* Apply Dirichlet's theorem.)
$Sol^n:$
If $p$ is of the form $15k+8$, then $p-2=15k+8-2=3(5k+2)$ and $p+2=15k+8+2=5(3k+2)$.
And since both are composite integers, $p$ cannot be one of the primes in a pair of twin primes.

And by Dirivhlet's theorem, and since $gcd(15,8)=1$, the arithmetic progression $15k+8$ has infinitely many primes with the property.


---
### Exercise 3.2.11 - Show that there are infinitely many primes that are not part of a prime triple of the form $p,~p+2,~p+6$.
(*Hint:* Apply Dirichlet's theorem.)

$Proof:$
Let $p\in \mathbb{Z}_{>0}$ be of the form $105n+97$, then since $gcd(105,97)=1$,
by Dirichlet's theorem, there are infinitely many primes of this form.

But then 
- $p+2=105n+99=3(35n+33)$, which is not prime.
- $p-2=105n-95=5(21n+19)$, which is not prime.
- $p-6=105n+91=7(15n+13)$, which is not prime.

So there are infinitely many primes $p$ of the form $105n+97$ such that they are not part of the prime triple of the form $p,~p+2,~p+6$.
$q.e.d.$

---
### Exercise 3.2.14 - Show that every integer greater than 11 is the sum of two composite integers.


