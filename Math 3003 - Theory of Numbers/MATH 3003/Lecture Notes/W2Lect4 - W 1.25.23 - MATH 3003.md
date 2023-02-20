## Recall: [[W2Lect3 - M 1.23.23 - MATH 3003#The Final Part of $\S$ 1.5: GCD | The Final Part]] of $\S$ 1.5: GCD

Let $a,b \in \mathbb{Z}$.
If $a$ and $b$ are both not zero,
then $gcd(a,b)$ is the largest integer
which divides both $a$ and $b$.

We define $gcd(0,0)=0$.

---
## Realatively Prime/Coprime
Another $def^n:$
Let $a,b\in\mathbb{Z}.$ 
We say that $a$ and $b$ are **relatively prime** (or **coprime**) 
if $gcd(a,b)=1$.


### E.g. 5 and 8 are coprime.
To see $gcd(5,8)=1$, note that the only positive integer divisors of $5$ are $1$ and $5$, but $5 \nmid 8$. 

### E.g. 12 and 13 are coprime.
Similarly, $gcd(12,13)=1$. So 12 & 13 are relatively prime.

---
## Bézout's Theorem (or Identity)
Let $a,b\in \mathbb{Z}$. Put $d=gcd(a,b)$.
Then $\exists~m,n\in\mathbb{Z}~s.t.~am+bn=d$.

---

$Proof:$
Quickly, the vacuous cases first:

First, suppose $a\neq 0$ but $b=0$.
Then $gcd(a,0)=|a|$.

So if $a>0$, then $d=a(1)+b(\mathbf{702})$, (since $b=0$, any number works). 
While if $a<0$, then $d=-a=a(-1)+b(\mathbf{23482\pi})$.

A similar argument succeeds if $a=0$ and $b\neq 0$.
Also if $a=b=0$, then $a(\mathbf{2358e^{-1}}) + b(\mathbf{116395!!})=0=:gcd(0,0)$.

<br>

Now for the rest of the proof, we assume $ab\neq 0$
(i.e. $a\neq 0 \land b\neq 0$)

Define $S=\{ x\in\mathbb{N} ~:~ \exists~u,v\in\mathbb{Z},~s.t.~x=au+bv \}$.
Certainly, $S\subseteq \mathbb{N}$.

Also $a(a)+b(b)=a^2+b^2\in\mathbb{N}$, since $a^2 >0$ and $b^2 >0$.

So $S\neq \emptyset$. Then by the [[W1Lect1 - W 1.18.23 - MATH 3003#Well-Ordering Principle (WOP)|Well Ordering Principle]], $S$ has a least element. Let $c=min(S)$.

(We claim $c=gcd(a,b)$.)

<br>

By the [[W2Lect3 - M 1.23.23 - MATH 3003#TU Spring 2023/MATH 3003/Lecture Notes/Lecture 2. F 1-20-23 Theorem - The Division Algorithm Recall: The Division Algorithm| Division Algorithm]], we may write $a=cq+r$ for some $q,r\in\mathbb{Z}$, with $0\leq r <c$. 

**WNTS $r=0$.**

Note, $r=a-cq$, and since $c\in S$,
$\implies\exists~s.t.\in\mathbb{Z}~s.t.~c=as+bt$.

$r=a-(as+bt)q$
$a-(asq-btq)=a(1-qs)+b(-qt)$

So $r=a(1-qs)+b(-qt),$ but then $r\in S$.
BUT! $r<c$, contradiction! $(c\neq min(S))$

<br>

If $r>0,$ then $r=a(1-qs)+b(-qt)$
$\implies r\in S$. This is impossible since 
$r<c=min(S)$. So $r=0$ and $c|a$.

<br>

Similarly, $c|b$.

Finally, let $y\in\mathbb{Z}$ be $s.t.~y|z \land y|b$.
Then $\exists~\alpha,\beta \in \mathbb{Z}~s.t.~$\
$a=y\alpha$ and $b=y\beta$.

Now $c=as+bt=(y\alpha)s + (y\beta)t$
$y(as+bt),$ so $y|c$.

$y|c \land c>0$, so $y\leq c$. 

Hence $c=gcd(a,b)$ as desired.
$q.e.d.$

--- 

# $\S$ 3.1 - Prime Numbers

$Def^n:$ 
Let $p\in\mathbb{N} \backslash \{1\}$.
We say that $p$ is **prime** if the only positive integers that divide $p$ are $1$ and $p$ itself.

### E.g.
$2,3,5,7,11,13,17,19$ are prime

On the other hand (OTOH),
$4=2*2,$ so $4$ is not prime.
$12=3*4,$ so $12$ is not prime.
$30=5*6,$ so $30$ is not prime.

---
Related is 
$Def^n:$
Let $n\in\mathbb{N} \backslash \{1\}$.
We say that $n$ is **composite** if $n$ is *not prime*.

Observation:
If $n$ is composite, then $\exists~a,b\in\{2,3,4,...,n-1\},~s.t.~n=ab.$

---
### Lemma: Every integer >1 is a product* of primes.
(this is excluding the single digit primes, and yeah.)

$Proof:$ We proceed by [[(strong)]] [[induction]].

**Base Case:** Let $n=2$.
$2$ is prime, so $2$ serves as its own prime factorization.

**Inductive Hypothesis (IH):**
Suppose $2,3,4,...,m$ are products of primes.

**Inductive Step (Step):**
WNTS: $m+1$ is a product of primes.

If $m+1$ is prime, then it is its own prime factorization, and we are done.

Assume $m+1$ is composite.
Then $m+1=ab$ where $a,b\in \{ 1,2,...,m \}$.

But by our IH, we can write 
$a=p_1p_1\cdots p_n=\prod\limits_{i=1}^n p_i$
and
$b=q_1q_1\cdots q_s=\prod\limits_{j=1}^s q_j$,
where each $p_i$ and $q_j$ is prime.

Then $m+1=(p_1p_2\cdots p_n)(q_1q_2\cdots q_s)$, which is a product of primes.

So by induction, each integer $\geq 2$ is a product of primes.
$q.e.d.$

---
Q. How many prime numbers exists?
$Ans:~\infty$ many...

