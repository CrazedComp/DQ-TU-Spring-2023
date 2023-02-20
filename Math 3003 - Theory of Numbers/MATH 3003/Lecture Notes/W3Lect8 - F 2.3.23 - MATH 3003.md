# $\S$ 3.3 - [[W3Lect7 - W 2.1.23 - MATH 3003#$ S 3.3 -$ Properties of GCD|Continued]]

## Theorem 3.7 - Let $a,b,c\in \mathbb{Z}.$ Then $gcd(a+bc,b)=gcd(a,b)$.

$Proof:$
This is immediate if $a=b=0$, so we shall assume $a$ and $b$ are not both zero for the rest of the proof.

Suppose that $e|a ~\land~ e|b$.
Then $\exists ~x,y\in \mathbb{Z}$ so that $ex=a$ and $ey=b$.
So $a+bc=ex+(ey)c=e(x+yc),$
so $e|a+bc$ (also $e|b$ from before).

<br>

Notice: If $S=\{m\in \mathbb{Z}: m|a ~\land~m|b\}$ 
and $T=\{n\in \mathbb{Z}: n|a+bc ~\land~n|b\}$
then we have just shown $S\subseteq T$.

<br>

Now conversely, let $n\in T$. 
Then $\exists~s,t\in \mathbb{Z}$ 
so that $us=b$ and $ut=a+bc$.

But, $a=(a+bc)-bc=ut-(us)c$
$a=u(t-sc)$, so $u|a$.

That is $u|a ~\land~ u|b$, so $T\subseteq S$. 

<br>

So we have shown S=T.
So $max(S)=max(T)$.
Therefore $gcd(a,b)=gcd(a+bc,b)$
$q.e.d.$

---
### Corollary
Let $a\in \mathbb{Z},~b \in \mathbb{N}$.

Recall, we write $a=bq+r,$ 
where $q\in \mathbb{Z}$, and $r\in \{0,1,2,...,b-1\}$
as per the [[W1Lect2 - F 1.20.23 - MATH 3003#Theorem - The Division Algorithm|Division Algorithm]]

- Then $gcd(a,b)=gcd(b,r)$.

This is because we can rewrite $a=bq+r \implies r=a-bq$. Then a similar argment occurs.

<br>

$Proof:$
Note that $r=a-bq=a+b(-q)$.
And by the [[W3Lect8 - F 2.3.23 - MATH 3003#Theorem - Let $a,b,c in mathbb{Z}.$ Then $gcd(a+bc,b)=gcd(a,b)$.|theorem]], 
$gcd(a,b)=gcd(a+b(-q),q)=gcd(r,b)=gcd(b,r).$

$q.e.d.$

---
### Key Insight for Later

This [[W3Lect8 - F 2.3.23 - MATH 3003#Theorem - Let $a,b,c in mathbb{Z}.$ Then $gcd(a+bc,b)=gcd(a,b)$.|theorem]] and its [[W3Lect8 - F 2.3.23 - MATH 3003#Corollary|corollary]], is the major key insight for the [[Euclidian Algorithm]].

Heres how the algorithm works, you may see some rough insight as of now, but no proof till later.

#### E.g. Find $gcd(35,14)$

Form: 
Step $a_1$:
$bigger~\#=smaller~\#*\boxed{you~find~largest~multiple}+\boxed{this~leftover~remainder}$

Step $a_{1}+n$
$last~divisor=last~remainder*\boxed{again}+\boxed{and again}$

$$
\begin{align*}
& 35=14*\boxed{2} + \boxed{7}\\
& 14=7*2+0
\end{align*}
$$

once you have 0 remainder, stop.
and $gcd(a,b)=last~largest~divisor$.

So in this case, $gcd(35,14)=7.~~~\blacksquare$

<br>

Also note the last part is true because $gcd(n,0)=|n|$.


---
### Exercise: Let $a\in \mathbb{Z}.$ Find $gcd(a^{2}+a,a).$
$Sol^n:$
$a^{2}+a=a(a+1)+0$,
by the Division Algorithm, $a|a^{2}+a$.
Therefore $gcd(a^{2}+a,a)=a.~~~\blacksquare$

---
## Proposition: Let $a,b\in \mathbb{Z}$. Define $d=gcd(a,b)$. Put $S=\{am+bn:m,n\in \mathbb{Z}\}$ and $T=\{k*d:k\in \mathbb{Z}\}$. Then $S=T$.

$Proofs:$
Note that $\exists~u,v\in \mathbb{Z}$ so that $du=a$ and $dv=b$.
Let $x=am+bn\in S$. 
Then $x=(du)m+(dv)n=d(um+vn),$
so $d|x$. That is $x\in T,~$and $S\subseteq T$.

(We basically worked out the property of GCD and linear combinations, which is analagous to the [[W1Lect2 - F 1.20.23 - MATH 3003#Properties of Divisibility| divisibility property]])

<br>

Conversely, let $y\in T$. Then $y=d*l$, for some $l\in \mathbb{Z}$.  

By [[W2Lect4 - W 1.25.23 - MATH 3003#Bézout's Theorem (or Identity)| Bézout's theorem,]] $\exists~s,t \in \mathbb{Z}$ so that $d=as+bt.$ 
Then $l*d=l(as+bt)=a(ls)+b(lt)\in S$.
So $T\subseteq S$. 

And we have $S=T.$
$q.e.d.$

<br>

### Corollary
$a$ and $b$ are coprime
if and only if
1 is a linear combination of $a$ and $b$.


---
## Euclid's Lemma 

Let $a,b\in \mathbb{Z}$ and $p$ be a prime number. 
Assume $p|ab$.
Then $p|a ~\lor~ p|b$.


**This Lemma is Important: even though Euclid though it was just another lemma which he utilzed to solve other problems. This will be used to solve/prove [[The Fundamental Theorem of Arithmetic (FTA)]].**


$Proof:$ We know that $p|a ~\lor~ p\nmid a$, logicaly. 
If $p|a$, we are done.

So we shall assume $p\nmid a$ and prove this holds for $p|b$.

Here, $p$ is prime. So the only positive integer dividing $p$ is $1$ and $p$ itself. 

So $p\nmid a \implies gcd(a,p)=1.$

So by [[W2Lect4 - W 1.25.23 - MATH 3003#Bézout's Theorem (or Identity)|Bézout's Theorem]], $\exists~u,v\in \mathbb{Z}$ so that $au+pv=1$.

We need to introduct $b$ somehow, so let's crudely multiply the whole equation. We then get,
$b(au+pv)=b(1)$
$\implies (ab)u+bpv=b$.

But $p|ab$, so $\exists ~x\in \mathbb{Z}$ so that $px=ab$.

Substituting we get 
$(ab)u+bpv=b$
$\implies (px)u+pbv=b$.

But then $p(xu+bv)=b,$ so $p|b$, as desired.
$q.e.d.$


---

## Lemma for Composite Numbers

The following lemma is similar to Euclid's Lemma, but for composite numbers. More restrictions must hold for it to apply for composite numbers.

Let $a,b\in \mathbb{Z}$ and $n\in \mathbb{N}$.
If $n|ab ~\land~ gcd(a,n)=1,$ then $a|b$. 

$Proof:$
Consider $x\in \mathbb{N} \backslash \{1\}$.

If $a,b\in \mathbb{Z}~\land~x|ab$, then $x|a ~\lor~x|b$.
Is it true that $x$ is prime?

Suppose $x=cd$ for some $cd\in \mathbb{Z}$.
$x*1=cd,$ so $x|cd$

By hypothesis, $x|c ~\lor~ x|d,$ WLOG assume $x|c$.

Then $xy=c$ for some $y\in \mathbb{N}.$
$x=cd=(xy)d$ so $x=xyd\implies yd=1$.
So $y=d=1.$ So $x$ is prime.
$q.e.d.$