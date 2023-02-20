# $\S$ 3.1 - Prime Numbers [[W2Lect4 - W 1.25.23 - MATH 3003#$ S$ 3.1 - Prime Numbers|Continued]]

### Recall (Primitivity):
We say the integer $p\in\mathbb{N} \backslash \{1\}$ is **prime** if its only positive divisors are $1$ and $p$ itself.

We showed that $\forall~n\in\mathbb{N}\backslash \{1\},$
$n$ is either prime itself or a product of primes.

---
## Theorem (Euclid): There are infinitely many prime numbers.

$Proof:$ 
Certainly, prime numbers exist, since for instance 2 is prime.

Let $P=\{x\in\mathbb{N} ~|~ x~is~prime\}$.
Let $T=\{p_1,p_2,p_3,...,p_n\}$ be a non-empty finite subset of $P$.
We will show that $P=T$.

To this end, let $Q_n=(p_1 ~p_2 ~p_3\cdots p_n)+1$.
Clearly, $Q_n$ is an integer greater than $1$.
So $Q_n$ has at least one prime factor. 
Let $q$ be a prime so that $q~|~Q_n$.

Suppose BWOC, that $q=p_i,~for~some~i=\{1,2,...,n\}$.

Then $q~|~Q_n \land q~|~p_1~p_2\cdots p_n$.
It follows by divisibility properties of linear combinations, that $q~|~Q_n - p_1~p_2\cdots p_n$.
This means $q~|~1$, but this is impossible since $q$ is prime $\implies q>1$. So $s\in P\backslash T$.
And so $P\neq T$.

$P$ is not equal to any of its finite subsets, so $P$ must be infinite.
$q.e.d.$


---
## The Prime Counting Function

### Notation
Let  $\pi$ be a function such that,
$\pi:\mathbb{R}^+ \longrightarrow \mathbb{N}\cup\{0\}$, with 
$x \longmapsto \big| \{n\in(0,x]:n~is~a~prime~number\} \big|$.

So basically, $\pi (x)$ is just the count of how many primes are $\leq x$.

#### E.g. 
$\pi (10)=4$ since the primes not exceeding $10$ are $2,3,5,7$.

But listing all primes untill I hit $n$ and then counting all of them is not efficient. 
For instance, we don't have to always consider $n-1$ or $n-2$, e.g. for $\pi (23)$, we don't need to check 22 and 21, and similarly we dont need to check even numbers. When should we stop checking though...

---
### Thm: If $n$ is composite, then at least one of the prime factors of $n$ is $\leq n$.

$Proof:$ Let $n$ be a composite number.
Then $\exists~a,b\in\mathbb{Z}$ so that 
$2\leq a\leq b<n$ and $n=ab$.

*We cannot have $a>\sqrt{n}$*, since then also $b>\sqrt{n}$
and $ab>\sqrt{n}\sqrt{n}=n$, contrary to the fact that $n=ab$.

Let $a\in\mathbb{N} \backslash \{1\}$, 
so $a$ has at least one prime factor, say $p$.

Now, $p|a \land a|n$, so $p|n$ (transitivity).
Also $p\leq a\leq n$. So $p$ is one prime divisor of $n$ which is $\leq n$
$q.e.d.$


---
## The Sieve of Eratosthenes
### E.g. For $\pi (50)$

Now we know the theorem. So for $\pi (50)$,
notice that $7<\sqrt{50}<8$.

- Now list out all numbers 1-50,
$\begin{bmatrix} 1&2&3&4&5&6&7&8&9&10\\ 11&12&13&14&15&16&17&18&19&20\\21&22&23&24&25&26&27&28&29&30\\31&32&33&34&35&36&37&38&39&40\\41&42&43&44&45&46&47&48&49&50\end{bmatrix}$

- cross out 1 since it is neither prime nor composite,
$\begin{bmatrix} \xcancel{1}&2&3&4&5&6&7&8&9&10\\ 11&12&13&14&15&16&17&18&19&20\\21&22&23&24&25&26&27&28&29&30\\31&32&33&34&35&36&37&38&39&40\\41&42&43&44&45&46&47&48&49&50\end{bmatrix}$

- circle/box the *first* prime (2), and then cross our all multiples of the *first* prime
$\begin{bmatrix} \xcancel{1}&\boxed{2}&3&\cancel{4}&5&\cancel{6}&7&\cancel{8}&9&\cancel{10}\\ 11&\cancel{12}&13&\cancel{14}&15&\cancel{16}&17&\cancel{18}&19&\cancel{20}\\21&\cancel{22}&23&\cancel{24}&25&\cancel{26}&27&\cancel{28}&29&\cancel{30}\\31&\cancel{32}&33&\cancel{34}&35&\cancel{36}&37&\cancel{38}&39&\cancel{40}\\41&\cancel{42}&43&\cancel{44}&45&\cancel{46}&47&\cancel{48}&49&\cancel{50}\end{bmatrix}$

- repeat this process for the $n$th prime. In this case, the $2nd~prime=3$, count every third number and cross it out. (notice those that are divisible by previous prime divisors are already crossed out obviously.) $+\begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&4&5&\cancel{6}&7&8&\cancel{9}&10\\ 11&\cancel{12}&13&14&\cancel{15}&16&17&\cancel{18}&19&20\\\cancel{21}&22&23&\cancel{24}&25&26&\cancel{27}&28&29&\cancel{30}\\31&32&\cancel{33}&34&35&\cancel{36}&37&38&\cancel{39}&40\\41&\cancel{42}&43&44&\cancel{45}&46&47&\cancel{48}&49&50\end{bmatrix}$ $\implies \begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&\xcancel{4}&5&\xcancel{6}&7&\xcancel{8}&\xcancel{9}&\xcancel{10}\\ 11&\xcancel{12}&13&\xcancel{14}&\xcancel{15}&\xcancel{16}&17&\xcancel{18}&19&\xcancel{20}\\ \xcancel{21}&\xcancel{22}&23&\xcancel{24}&25&\xcancel{26}&\xcancel{27}&\xcancel{28}&29&\xcancel{30}\\31&\xcancel{32}&\xcancel{33}&\xcancel{34}&35&\xcancel{36}&37&\xcancel{38}&\xcancel{39}&\xcancel{40}\\41&\xcancel{42}&43&\xcancel{44}&\xcancel{45}&\xcancel{46}&47&\xcancel{48}&49&\xcancel{50}\end{bmatrix}$



- Similarly, the $3rd~prime=5$, $+\begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&4&\boxed{5}&6&7&8&9&\cancel{10}\\ 11&12&13&14&\cancel{15}&16&17&18&19&\cancel{20}\\21&22&23&24&\cancel{25}&26&27&28&29&\cancel{30}\\31&32&33&34&\cancel{35}&36&37&38&39&\cancel{40}\\41&42&43&44&\cancel{45}&46&47&48&49&\cancel{50}\end{bmatrix}$ $\implies \begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&\xcancel{4}&\boxed{5}&\xcancel{6}&7&\xcancel{8}&\xcancel{9}&\xcancel{10}\\11&\xcancel{12}&13&\xcancel{14}&\xcancel{15}&\xcancel{16}&17&\xcancel{18}&19&\xcancel{20}\\\xcancel{21}&\xcancel{22}&23&\xcancel{24}&\xcancel{25}&\xcancel{26}&\xcancel{27}&\xcancel{28}&29&\xcancel{30}\\31&\xcancel{32}&\xcancel{33}&\xcancel{34}&\xcancel{35}&\xcancel{36}&37&\xcancel{38}&\xcancel{39}&\xcancel{40}\\41&\xcancel{42}&43&\xcancel{44}&\xcancel{45}&\xcancel{46}&47&\xcancel{48}&49&\xcancel{50}\end{bmatrix}$


- and since we know the **theorem**, STOP! after doing the *prime* $\leq$ *lower bound* of the theorem. So in this case we know $7<\sqrt{50}<8$. So we need to stop when we get to the largest $p$ such that $p\leq 7$. In this case after we do $4th~prime=7$, we'll stop. $+\begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&4&\boxed{5}&6&\boxed{7}&8&9&10\\ 11&12&13&\cancel{14}&15&16&17&18&19&20\\\cancel{21}&22&23&24&25&26&27&\cancel{28}&29&30\\31&32&33&34&\cancel{35}&36&37&38&39&40\\41&\cancel{42}&43&44&45&46&47&48&\cancel{49}&50\end{bmatrix}$ $\implies \begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&\xcancel{4}&\boxed{5}&\xcancel{6}&\boxed{7}&\xcancel{8}&\xcancel{9}&\xcancel{10}\\11&\xcancel{12}&13&\xcancel{14}&\xcancel{15}&\xcancel{16}&17&\xcancel{18}&19&\xcancel{20}\\\xcancel{21}&\xcancel{22}&23&\xcancel{24}&\xcancel{25}&\xcancel{26}&\xcancel{27}&\xcancel{28}&29&\xcancel{30}\\31&\xcancel{32}&\xcancel{33}&\xcancel{34}&\xcancel{35}&\xcancel{36}&37&\xcancel{38}&\xcancel{39}&\xcancel{40}\\41&\xcancel{42}&43&\xcancel{44}&\xcancel{45}&\xcancel{46}&47&\xcancel{48}&\xcancel{49}&\xcancel{50}\end{bmatrix}$

- and by our **theorem**, the rest of the uncrossed numbers are prime numbers and shall be circled/boxed. $\implies \begin{bmatrix} \xcancel{1}&\boxed{2}&\boxed{3}&\xcancel{4}&\boxed{5}&\xcancel{6}&\boxed{7}&\xcancel{8}&\xcancel{9}&\xcancel{10}\\\boxed{11}&\xcancel{12}&\boxed{13}&\xcancel{14}&\xcancel{15}&\xcancel{16}&\boxed{17}&\xcancel{18}&\boxed{19}&\xcancel{20}\\\xcancel{21}&\xcancel{22}&\boxed{23}&\xcancel{24}&\xcancel{25}&\xcancel{26}&\xcancel{27}&\xcancel{28}&\boxed{29}&\xcancel{30}\\\boxed{31}&\xcancel{32}&\xcancel{33}&\xcancel{34}&\xcancel{35}&\xcancel{36}&\boxed{37}&\xcancel{38}&\xcancel{39}&\xcancel{40}\\\boxed{41}&\xcancel{42}&\boxed{43}&\xcancel{44}&\xcancel{45}&\xcancel{46}&\boxed{47}&\xcancel{48}&\xcancel{49}&\xcancel{50}\end{bmatrix}$

Now we should probably count the boxed prime numbers and finish this problem.
$P = \{2,3,5,7,11,13,17,19,23,29,31,37,41,43,47\}$

And so $\pi (50) = |P|=15~.~~~\blacksquare$


---

## Dirichlet's Theorem on Primes in Arithmetic Progression

Let $a,b,\in\mathbb{Z}$ and suppose that $gcd(a,b)=1$.
Then the sequence $\{an+b\}_{n=1} ^\infty$, includes infinity many primes.

#### E.g. 
If $a=4,~b=1$ our terms are 
$\boxed{5},9,\boxed{13},\boxed{17},21,25,...$
where $5,13,17$ are primes, and there are infinitely many. 

Unfortunately, there is no proof (for now) since [[Analysis]] is needed to make it simple enough, without it would be extremely complicated to make an argument for.

### Excercise: Show that there are infinitly many primes where the last three digits are "117".[^1]

Note that $gcd(1000,117)=1$.
This holds since the only prime factors are 2 and 5,
but $2 \nmid 117 \land 5\nmid 117$.

Now, every number in the sequence 
$\{1000n+117\}_{n+1}^{\infty}$ ends in "117".

And by Dirichlet's Theorem (DT), 
there are infinitely many primes in this sequence.
$q.e.d.$


---
## Mersenne Primes
$Def^n:$ Let $n\in\mathbb{N}$, then we say
the $n$-th Mersenne Number (or Prime) 
is the prime number of the form $2^n-1$.

As of 2018, the largest known prime was 
$2^{82589933}-1$. (and notice, that $n=82589933$ is itself prime...)

### Homework Question to think about...
#### Exercise: Let $n\in\mathbb{N}.$ Show that if $M_n$ is prime, then $n$ itself is prime.

Hints: 
- Use $Proof~by~Contrapositive$.
- A useful factorization, $(2-1)(2^{n-1}+2^{n-2}+\cdots+1)$.





[^1]: By technicality, "117" is to be read as a string in the decimal system which is base 10.



