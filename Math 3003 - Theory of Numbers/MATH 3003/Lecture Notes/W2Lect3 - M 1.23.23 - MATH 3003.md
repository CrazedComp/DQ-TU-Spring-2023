## [[W1Lect2 - F 1.20.23 - MATH 3003#Theorem - The Division Algorithm|Recall: The Division Algorithm]]

Let $a\in \mathbb{Z}$, $b\in \mathbb{N}$.
Then $\exists !~ q,r\in \mathbb{Z},$
$s.t.~a=bq+r,~0\leq r < b$.

---

$Proof:$ 
First we should show existence of such $q,r$. 
Let
$$S = \big\{  x\in \mathbb{N}\cup \{0\} ~\big|~ x=a-bk,~for~some~k\in \mathbb{Z}  \big\}.$$
Then $S \leq \mathbb{N} \cup \{0\}$.

Note that if $k < \dfrac{a}{b},$
then $a-bk>a-b\left( \dfrac{a}{b} \right) = a-a = 0$.

So $S \neq \emptyset$. Then by the [[W1Lect1 - W 1.18.23 - MATH 3003#Well-Ordering Principle (WOP)| Well Ordering Principle]],
$S$ has the least element. Say $r=min(S)$.

Then since $r\in S,~\exists~q\in\mathbb{Z},~s.t.~a-bq=r$.
Clearly, $a=bq+r.$ Now we only need to check that $0 \leq r <b$.

Now $0 \leq r$ since $r\in S$ (easy).
Now (the rest), we claim that $r<b$. To see it, BWOC, assume $r\geq b$.
Then $r-b \geq 0$.
But $r-b=(a-bq)-b=a-b(q+1),~q+1\in \mathbb{Z}.$
So $r-b\geq 0 \implies r-b \in S$.
But! $r-b<r$, this contradicts minimality of $r$ in $S$!
Hence, $0 \leq r <b$.

<br>

Now secondly, we should show uniqueness of such $q,r$.
We have to find $q,r \in \mathbb{Z}~s.t.~ a=bq+r,$ and $0 \leq r <b$.

Suppose also that $a=bs+t$ where $s,t \in \mathbb{Z}$ and $0 \leq t <b$.
Then 
$bs+t=a=bq+r$
$\implies r-t=bs-bq$
$\implies r-t=b(s-q),$ so $b~\big|~r-t$.

(Then $\exists ~y\in \mathbb{Z} ~s.t.~by=r-t$.)

But since $0\leq r <b$ and $0\leq t <b$,
$0-b \leq r-t < b-0$
$\iff -b\leq r-t < b$
$\iff -b\leq by < b$
$\iff -1 \leq y < 1$.

Note $-1 \leq y < 1$ and $y\in\mathbb{Z}$, so $y=0$.
Then, $r-t=0$, so $r=t$. 

Finally,
$bs+t=bq+r$
$bs+(r) = bq+r$
$\implies bs=bq$
$\implies bs-bq=0$
$\implies b(s-q)=0 \land b\neq 0$

Therefore, $s-q=0$. So $s=q$.
$q.e.d$


---
## Classifying integers according to remainder by a divisor
Let $b\in\mathbb{N}$. By the Division Algorithm, 
we can classify integers according to their remainder when dividing by $d$.

### E.g. If $d=3$...
Then every integer has one of the form
- $3q+0$
- $3q+1$
- $3q+2$

--- 
### $Def^ns$ of even and odd.
Let $n\in\mathbb{Z}$.
1. We say that $n$ is **even** if $\exists~q\in\mathbb{Z}~s.t.~n=2q$.
2. We say that $n$ is **odd* if $\exists~q\in\mathbb{Z}~s.t.~n=2q+1$.

--- 
## Some More Exercises
### E.g. 1: Let $n\in\mathbb{Z}$. Prove that $n^2-n$ is even.
The general procedure is: to divide $n$ by $2$ for parity cases. Similarly for other divisors $d$.

$Proof:$
By the Division Algorithm, we may write
$n=2q+r,$ where $q\in\mathbb{Z},~r\in\{0,1\}$.

Then $n^2-n=(2q+r)^2-(2q+r)$
$=4q^2+4qr+r^2-2q-r$
$=4q^2+4qr-2q+r^2-r$.

**Case I:**
If $r=0$, then $n^2-n = 4q^2-2q$
$=2(2q^2-q)$, and since $2q^2-q\in\mathbb{Z}$,
we have shown $n$ is even.

**Case II:**
If $r=1$, then $n^2-n = 4q^2+4q(1)-2q+(1)^2-(1)$
$=4q^2+4q-2q=4q^2+2q$
$=2(2q^2+q).$ So again $n$ is even.

In both cases $n^2-n$ is even. 
$q.e.d.$


---

## The Final Part of $\S$ 1.5: GCD

Let $a,b\in\mathbb{Z}\backslash \{0\}$.
And let $S = \{ x\in\mathbb{Z} : x|a \land x|b \}:=$ "the set of common divisors for a and b".

Note: $\pm1\in S$ (regardless of $a$ and $b$), so $s\neq \emptyset$.

Also note: If $k>max\Big(  \big\{ |a|,|b| \big\}  \Big)$, then $k$ divides neither $a$ not $b$. So $k\notin S$. Hence $S$ is finite. [^1]

Now, since $S$ is a finite subset of $\mathbb{Z}$, it has a maximum element.
We denote $max(S)$ by $gcd(a,)$.
- Read: "The Greatest Common Divisor"

<br>

That is: $gcd(a,b)$ is the largest integer that divides both a and b.

<br>

Notice: If $n\neq 0$, then we may define $gcd(n,0)$ the same way
In this case, $gcd(n,0)=|n|$.

Also notice: One case where this doesn't work...
We shall set, $gcd(0,0)=0$, by convention.[^2]

---
### T/F: $gcd(a,b)=gcd(b,a)$
$Proof:$ Of course!
Obviously, 
$$ \{ x\in\mathbb{Z} : x|a \land x|b \} = \{ x\in\mathbb{Z} : x|b \land x|a \}.$$
And the rest of the proof is trivial.
$q.e.d.$


### Find the $gcd(-14,21)$.
$Sol^n:$
Set of divisors of -14 := $A=\{ \pm1,\pm2, \pm7, \pm14 \}.$

Set of divisors of 21 := $B\{  \pm1,\pm3,\pm7,\pm21  \}$

And then 
$S=A\cap B= \{\pm1,\pm7\}.$
So of course, 
$gcd(-14,21)=max(S)=7.~~~\blacksquare$

### Find the $gcd(-24,84)$.
$Sol^n:$
Set of divisors of -24 := $A=\{ \pm1,\pm2,\pm3, \pm4,\pm6, \pm8, \pm12,\pm24 \}.$

Set of divisors of 84 := $B\{  \pm1,\pm2,\pm3,\pm4,\pm6,\pm7,\pm12,\pm14,\pm28,\pm42,\pm84 \}$

And then 
$S=A\cap B= \{\pm1,\pm2,\pm3,\pm4,\pm6,\pm12 \}.$
So of course, 
$gcd(-24,84)=max(S)=12.~~~\blacksquare$

---
Notice, this is all correct since it is off of the definition.
But not efficient at all. 
For that, we will eventually talk about Euclid's Algorithm.




[^1]: i.e. $5>2,3$, with both $5 \nmid 2 \land 5 \nmid 3$, no matter what. 
[^2]: This is so that Later, [[W2Lect4 - W 1.25.23 - MATH 3003#Bezout's Theorem (or Identity)|Bezut's Theorem]] works




