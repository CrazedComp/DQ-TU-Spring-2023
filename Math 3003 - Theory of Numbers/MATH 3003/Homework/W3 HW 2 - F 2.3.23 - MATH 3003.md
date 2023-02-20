## $\S$ 1.5 - 3, 8, 15, 16, 19, 20, 21, 36, 38.
Dean Quach

![[Kenneth H. Rosen - Elementary Number Theory-Pearson (2011).pdf#page=50]]


--- 
### Exercise 1.5.3 - Decide which of the following integers are divisible by 7.
#### (a) 0
$Sol^n:$
This is divisible by 7 since $\exists ~c\in\mathbb{Z},~s.t.~0=7*c$.
Namely, $c=0$, then $7*0=0$. Also $c\in\mathbb{Z}.~~~\blacksquare$

#### (b) 707
$Sol^n:$
This is divisible by 7 since $7*101=707$, and $101\in\mathbb{Z}.~~~\blacksquare$

#### (c) 1717
$Sol^n:$
$7\nmid 1717$ since $1717=7*245 +2$ and $0<2<7.~~~\blacksquare$ 

#### (d) 123,321
$Sol^n:$
$7\nmid 123321$ since $123321=7*17617+2$ and $0<2<7.~~~\blacksquare$

#### (e) -285,714
$Sol^n:$
$7\nmid -285714$ since $-285714=7*-40817+5$ and $0<5<7.~~~\blacksquare$

#### (f) -430,597
$7\nmid -430597$ since $-430597=7*-61514+1$ and $0<1<7.~~~~\blacksquare$


--- 
### Exercise 1.5.8 - Find these greatest common divisors by finding all positive integers that divide each integer in the pair and selecting the largest that divides both.
#### (a) gcd(8,12)
$Sol^n:$
The set of positive divisors for 8 $\coloneqq A= \{1,2,4,8\}$
and for 12 $\coloneqq B=\{1,2,3,4,6,12\}$.
Let $C=A\cap B =\{1,2,4\}$.
Then $gcd(8,12)=max(C)=4.~~~\blacksquare$

#### (b) gcd(7,9)
$Sol^n:$
The set of positive divisors for 7 $\coloneqq A=\{1,7\}$
and for 9 $\coloneqq B=\{1,3,9\}$.
Let $C=A\cap B = \{1\}$.
Then $gcd(7,9)=max(C)=1.~~~\blacksquare$

#### (c) gcd(15,25)
$Sol^n:$
The set of positive divisors for 15 $\coloneqq A=\{1,3,5,15\}$
and for 25 $\coloneqq B=\{1,5,25\}$.
Let $C=A\cap B = \{1,5\}$.
Then $gcd(15,25)=max(C)=5.~~~\blacksquare$

#### (d) gcd(16,27)
$Sol^n:$
The set of positive divisors for 16 $\coloneqq A=\{1,2,4,6,8,16\}$
and for 27 $\coloneqq B=\{1,3,9,27\}$.
Let $C=A\cap B = \{1\}$.
Then $gcd(16,27)=max(C)=1.~~~\blacksquare$



---
### Exercise 1.5.15 - Show that if $a,b,c,$ and $d$ are integers with $a$ and $c$ non zero, such that $a\mid b$ and $c\mid d$, then $ac\mid bd$.
$Proof:$
Let $a,b,c,d\in\mathbb{Z}$.
Suppose $a\mid b$ and $c\mid d$, with both $a\neq0,c\neq0$.
Then $\exists~n,m\in \mathbb{Z},~s.t.b=an \land d=cm.$
But then $b*d=an*cm=ac*(nm)$,
and since $nm\in\mathbb{Z}$, $bd$ is divisible by $ac$.

Therefore, $ac\mid bd.$
$q.e.d.$



---
### Exercise 1.5.16 - Are there integers $a,b,$ and $c$ such that $a\mid bc$, but $a \nmid b$ and $a \nmid c$?
$Sol^n:$
Of course. For example, let $a=10,b=2,c=15$.
Then $a\mid bc$ since $10\mid30~(since~30=10*3+0,~r=0)$.
But then $a\nmid b$ since $10\nmid 2 ~(since~10>2)$
and also $a\nmid c$ since $10\nmid 15~(since~15=10*1+5,~0<5<10).~~~\blacksquare$



---
### Exercise 1.5.19 - Show that if $a$ and $b$ are integers such that $a\mid b$, then $a^k\mid b^k$ for every positve integer $k$.
$Proof:$
Let $a,b\in\mathbb{Z}$ with $a\neq0$ and suppose $a\mid b$.
Then $\exists ~n\in\mathbb{Z},~s.t.~b=an$.
Notice $b^k=(an)^k=a^kn^k,$ and $n^{k}\in\mathbb{Z}$ 
by closure over multiplication. So $b^k$ is divisible by $a^k$.

Therefore $a^{k} \mid b^k.$
$q.e.d.$



---
### Exercise 1.5.20 - Show that the sum of two even or of two odd integers is even, wheras the sum of an odd and an even integer is odd.
$Proof:$ 
Let $a,b\in \mathbb{Z}$.

##### Case 1. Suppose $a,b$ are both even.
Then $a=2n$ and $b=2m$, for some $n,m\in \mathbb{Z}$.

Then notice that $a+b=(2n)+(2m)=2(n+m)$,
and since $n+m\in \mathbb{Z}$, then $2\nmid a+b$.
So $a+b$ is even. $~~~\blacksquare$

##### Case 2. Suppose $a,b$ are both odd.
Then $a=2n+1$ and $b=2m+1$, for some $n,m\in \mathbb{Z}$.

Then notice that $a+b=(2n+1)+(2m+1)=2n+2m+2=2(n+m+1)$,
and since $n+m+1\in \mathbb{Z}$, then $2\nmid a+b$.
So $a+b$ is even. $~~~\blacksquare$

##### Case 3. Suppose one of $a,b$ is even, and the other odd.
WLOG, say $a$ is even, and $b$ is odd.
Then $a=2n$ and $b=2m+1$, for some $n,m\in \mathbb{Z}$.

Then notice $a+b=(2n)+(2m+1) = 2(n+m)+1$,
and since $n+m\in \mathbb{Z}$, we know $2 \nmid a+b.$
So $a+b$ is odd. $~~~\blacksquare$




---
### Exercise 1.5.21 - Show that the product of two odd integers is odd, wheras the product of two integers is even if either of the integers is even.

$Proof:$ 
Let $a,b\in \mathbb{Z}$.

##### Case 1. Suppose $a,b$ are both odd.
Then $a=2n+1$ and $b=2m+1$, for some $n,m\in \mathbb{Z}$.
But then $ab=(2n+1)(2m+1)=2nm+2n+2m+1=2(nm+n+m)+1$,
and since $nm+n+m\in \mathbb{Z}$, we know $2\nmid ab$.
So $ab$ is odd. $~~~\blacksquare$

##### Case 2. Suppose $a,b$ are both even.
Then $a=2n$ and $b=2m$, for some $n,m\in \mathbb{Z}$.
But then $ab=(2n)(2m)=4nm=2(2nm)$,
and since $2nm\in \mathbb{Z}$, we know $2\mid ab$.
So $ab$ is even. $~~~\blacksquare$

##### Case 3. Suppose one of $a,b$ is even, and the other odd.
WLOG, say $a$ is even, and $b$ is odd.
Then $a=2n$ and $b=2m+1$, for some $n,m\in \mathbb{Z}$.
But then $ab=(2n)(2m+1)=4nm+2n=2(2nm+n)$,
and since $2nm+n\in \mathbb{Z}$, we know $2\mid ab$.
So $ab$ is even. $~~~\blacksquare$

---
### Exercise 1.5.36 - Show that if $a$ is an integer, then $3$ divides $a^3-a$.
$Proof:$
Let $a \in \mathbb{Z}$.
If we consider $3|a$, by the [[W1Lect2 - F 1.20.23 - MATH 3003#Theorem - The Division Algorithm|Division Algorithm]], we know $a$ will be either
- $a=3k$
- $a=3k+1$
- $a=3k+2$

for some $k\in \mathbb{Z}.$

##### Say $a=3k$.
Then $a^3-a=(3k)^3-(3k)=3^3k^3-3k=3(3^2k^3-k)$
And since $3^{2}k^{3}-k\in \mathbb{Z},$ we know $3\mid a^{3}-a$.

##### Say $a=3k+1$
Then $a^{3}-a=a(a^2-1)=a(a+1)(a-1)$
$=(3k+1)\big[(3k+1)+1\big]\big[(3k+1)-1\big]=(3k+1)(3k+2)(\boxed{3k})$
$=3\big[ (3k+1)(3k+2)k \big].~~~$ So $3 \mid a^3-a.~~~\blacksquare$

##### Say $a=3k+2$
Then $a^{3}-a=a(a^2-1)=a(a+1)(a-1)$
$=(3k+2)\big[(3k+2)+1\big]\big[(3k+2)-1\big]=(3k+2)\boxed{(3k+3)}(3k+1)$
$=(3k+2)*\big[\boxed3(k+1)\big](3k+1) = 3\big[ (3k+2)(k+1)(3k+1) \big].~~~$ So $3 \mid a^3-a.~~~\blacksquare$

##### Therefore, $3 \mid a^{3}-a,~\forall a\in \mathbb{Z}$.
$q.e.d.$

---
### Exercise 1.5.38 - Show that the square of every odd integer is of the form $8k+1$.

$Proof:$
Let $a\in \mathbb{Z}$, and say $a$ is odd.
Then $a=2n+1$ *for some* $n\in \mathbb{Z}$.

Then $a^{2}=(2n+1)^{2}=4n^{2}+4n+1$

##### Say $n$ is an odd integer
Then $n=2m+1,~m\in \mathbb{Z}$.
And then 
$a^{2}=4n^{2}+4n+1=4(2m+1)^{2}+4(2m+1)+1$
$=4(4m^{2}+4m+1)+(8m+4)+1=(16m^{2}+24m+8)+1$
$=8(8m^{2}+3m+1)+1,$ where $8m^{2}+3m+1\coloneqq k\in \mathbb{Z}.$
So $a^{2} = 8k+1$.

##### Say $n$ is an even integer
Then $n=2m,~m\in \mathbb{Z}$.
And then 
$a^{2}=4n^{2}+4n+1=4(2m)^{2}+4(2m)+1$
$=8m^{2}+8m+1=8(m^{2}+m)+1,$
where $m^{2}+m\coloneqq k\in \mathbb{Z}.$
So $a^{2} = 8k+1$.

##### So therefore, $\forall n\in \mathbb{Z},$ an odd number $a$ can be written in the form $a^2=8k+1,~$ for some integer $k.~~~\blacksquare$  




---
## Mersenne Number Proof
### Recall, for a positive integer $n$, the $n$th Mersenne number $M_n$ is given by the formula $M_n=2^n-1$. Prove that if the $n$th Mersenne number is prime, then $n$ itself is prime.

$Proof~by~Contrapositive:$ 
Let $n$ be a composite integer.
Then $n=ab$, for some $a,b\in \mathbb{Z},~a,b\geq 0$.

(WNTS $M_{n}=2^{n}-1$ is not prime as well)
Then
$M_{n}=2^{n}-1 = 2^{ab}-1 = (2^a-1)(2^{a(b-1)}+2^{a(b-2)}+\cdots+1),$ which are the product of two positive integers. Hence $M_n$ is composite if $n$ is composite.

So if $M_{n}$ is prime, then $n$ is also prime.
$q.e.d.$






