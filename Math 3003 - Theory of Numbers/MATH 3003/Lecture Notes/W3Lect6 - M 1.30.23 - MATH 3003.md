# $\S 3.2$ - The Distribution of the Primes

## [[W2Lect5 - F 1.27.23 - MATH 3003#The Prime Counting Function|Recall: The Prime Counting Function]]

Recall: $\pi(x)=\#~of~primes~not~exceeding~x.$

### Legendre (1798)
He had found a very good approximation which was, 
$\pi (x)=\dfrac{x}{log(x)-1.08366}.$

### Gauss 
He considered a function $f(x)=\dfrac{x}{log(x)}$ 
and the [[logorithmic integral]] $$li(x)=\int_\limits{2}^{x} \frac{1}{log(t)}dt.$$
He ended up finding that
$\lim\limits_{x\to \infty} \dfrac{\pi(x)}{f(x)}$ and $\lim\limits_{x\to \infty} \dfrac{\pi(x)}{li(x)}$
both exist.

### Prime Number Theorem (PNT) (1896)

Later, mathmeticians found 
$\lim\limits_{x\to \infty} \dfrac{\pi(x)}{f(x)}=1$ (or equivalently $\lim\limits_{x\to \infty} \dfrac{\pi(x)}{li(x)}=1$)


### Pierre Dusart
He had found a squeeze theorem approximation. Where
for $x\geq 55,$
$$\frac{x}{log(x)+2}<\pi(x)<\frac{x}{log(x)-4}.$$


---
## The Riemann Zeta Function

Where did this stuff come from?[^1]

Let $s\in\mathbb{C},$ so that $s=a+bi$
where $a,b\in\mathbb{R}.~(i^2=1)$.
We use $Re(s)=a$ to mean the "real part" of $s$.

Proofs of the PNT rely on consideration of $\zeta (s),$ the Riemann Zeta Funtion. (check SPELLING)
This function is differentiable on $\mathbb{C}\backslash\{1\}$, i.e. it is holomorphic. And for $Re(s)>1$, we have $$\zeta (s)=\sum\limits_{n=1}^{\infty} \frac{1}{n^{s}}~~.$$

---
### Proposition

Let $s\in\mathbb{R},~s>1.$
Then $$\zeta(s)=\prod\limits_{p~prime}\left(\frac{1}{1-p^{-s}}\right).$$

<br>

$Proof:$
Lets consider 
$${\prod\limits_{p~prime}}_\limits{p\leq q} \left(\frac{1}{1-p^{-s}}\right)$$
and note that by the [[Geometric Series Formula (g.s.f.)]], since $|p^{-s}|<1,$
$${\prod\limits_{p~prime}}_\limits{p\leq q} \left(\frac{1}{1-p^{-s}}\right) = {\prod\limits_{p~prime}}_\limits{p\leq q}         
\left(\sum\limits_{j=0}^{\infty} (p^{-s})^j\right)$$
and from here we can rearrange this to get
$$={\prod\limits_{p~prime}}_\limits{p\leq q}         
\left(\sum\limits_{j=0}^{\infty} \frac{1}{(p^{s})^{j}}\right)$$
$$={\prod\limits_{p~prime}}_\limits{p\leq q}         
\left(\sum\limits_{j=0}^{\infty} \frac{1}{(p^{j})^{s}}\right)$$
which by the [[Fundamental Theorem of Arithmetic (FTA)]],
$$=\sum' \frac{1}{n^{s}}.$$

Where $\sum'$ means the sum is taken over these positive integers which have no prime factors $>q$.

For a quick example, (That I DONT UNDERSTAND)
$$\sum' \frac{1}{n^{s}}+ \frac{1}{2^{s}} + \frac{1}{3^{s}} + \frac{1}{6^{s}}$$  
$$+\frac{1}{15^{s}} + \frac{1}{42^{s}} + \cancel{\frac{1}{11^{s}}} + \cancel{\frac{1}{35^{s}}}+ \cancel{\frac{1}{17^{s}}}.$$

<br>

So now we can utilize the squeeze theorem. Setting it up we get,
$$\left|\zeta(s)-{\prod\limits_{p~prime}}_\limits{p\leq q} \left(\frac{1}{1-p^{-s}}\right)\right|$$

$$=\sum\limits_{n=1}^{\infty} \frac{1}{n^{s}} - \sum' \frac{1}{n^{s}} \leq \sum\limits_{n=q+1}^{\infty} \frac{1}{n^{s}}.$$

Then we get
$$\lim_{q\to\infty} \left| \zeta(s)-{\prod\limits_{p~prime}}_\limits{p\leq q} \left(\frac{1}{1-p^{-s}}\right)\right|< \lim_{q\to\infty} \left(\sum\limits_{n=q+1}^{\infty} \frac{1}{n^{s}}\right)=0.$$
Therefore,
$$\zeta (s) = \prod\limits_{p~prime} \left(\frac{1}{1-p^{-s}}\right).$$
$q.e.d.$

#### Corollary: Euler's Proof
This work was analagous to Euler's Proof on the fact that there are infinetely many primes.


---
## The Riemann Hypothesis

If $s\in\mathbb{C}$ is such that $\zeta(s)=0$ and $0<Re(s)<1,$
then $Re(s)=\frac{1}{2}$

```desmos-graph
left=-3; right=3;
top=10; bottom=-10;
---
0<=x<=1
x=.5|red|dashed
        (1,0)|blue|label:Re(s)=1
        (.5,-5)|open|label:Re(s)=1/2
```


### Theorem (1976 Lowell Schoenfeld)
The Riemann hypothesis (R.H.) is true iff and only if
$\forall x\geq 2657,$
$$|\pi(x)-li(x)|\leq \frac{\sqrt{x}*log(x)}{8\pi}.$$

---
## Theorem Let $n\in \mathbf{N}.$ Then there is a string of $n$ consecutive composite numbers.

$Proof:$

Notice, we *could* consider $n!+j$, since $\implies n!+1,n!+2,...n!+n$.
You can factor $n!+2$ and on in general (for example this term is divisble by 2), 
but unfortnuately the first term $n!+1$ is not something you can factor per se.

<br>

So, let's consider $(n+1)!+j$ for $j\in\{2,3,4,...,n-1\}$
This is clearly a list (or string) of $n$ consecutive numbers.

Also, for each $j$,
$$(n+1)!+j=\prod\limits_{i=1}^{n+1} i+j = j \left[\left(  {\prod\limits_{i=1}^{n+1}}\limits_{i\neq j} i \right)+1\right]. $$

$j\neq 1$ and $j\neq (n+1)!+j$, so we have shown $(n+1)!+j$ is composite.
$q.e.d.$


---
## $n$-tuples of primes

### Twin Primes
$Def^n:$
We say the ordered pair $(p,p+2)$ is a pair of "twin primes"
if both $p$ and $P+2$ are prime.

E.g.'s = $(5,7),(11,13),(17,19)$.

#### Question: Are there infinetely many twin primes? (Chen 1966)
Had showed there are infinitely many primes $p$ so that $p+2$ is either prime or has only 2 prime factors.

But the question is unsolved and still open, Terrence Tao is the most famous mathmetician working on this (also in generall) among many other problems.

### Prime Triplets
$Def^n:$
We say $(p,p+2,p+6)$ is a "prime triplet"
if $p,p+2,$ and $p+6$ are prime.

E.g.'s = $(11,13,17),(5,7,11),(41,43,47)$

#### Question: Why use $p+6$ and not $p+4$?
Just look and notice

that besides $(3,5,7)$,
- $(5,7,\boxed9)$
- $(41,43,\boxed{45})$
- $(17,19,\boxed{21})$ 
are all divisible by 3.


----
### Exercise: Show that $\forall n\in \mathbb{Z},~3| n \lor~3| n+2 \lor~3| n+4$.

Just to think about for next class. 



<br>

[^1]:Unfortunately, we can't make in depth arguments or proofs. As this would require much more math understanding and take a lot of time to consider.


