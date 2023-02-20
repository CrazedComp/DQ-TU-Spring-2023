Logistical Notes: Midterm 1 - F 2/24/23
There will be a review
5 questions $\implies$ 10 minutes each.

---
# $\S$ 3.3 - Continued/Final Part
We will lastly be talking about gcd of multiple numbers...

$Def^n:$ Let $\{a_{1},a_{2},a_{3},...,a_{n}\}\subseteq \mathbb{Z},$ and assume $\{a_{1},a_{2},a_{3},...a_{n}\}$ is neither $\emptyset$ nor $\{0\}$.

We denote by $gcd(a_{1},a_{2},a_{3},...,a_{n})$
the largest integer which divides $a_{i},$ for all $i=\{1,2,3,...,n\}$.

### E.g.'s
1. $gcd(4,8,12)=4$
2. $gcd(30,40,50,60)=10$

The main thing we want to find is how to compute large lists of large numbers, what about producing a procedure to convert 
$gcd(a_{1},a_{2},...,a_{n})\rightarrow compute~n*\{gcd(x_{i},y_{j}\}.$

---
## Lemma: Reducing, gcd of a sequence
If $\{a_{1},a_{2},...,a_{n}\} \subseteq \mathbb{Z}$ (and is not $\{0\}$).
Then $gcd(a_{1},a_{2},a_{3},...,a_{n-2},a_{n-1},a_{n})$
$=gcd(a_{1},a_{2},a_{3},...,a_{n-2},gcd(a_{n-1},a_{n}))$

(which takes any two numbers from the original equence, and reduces it to one number (which is the gcd of the two))

$Proof:$ (Supprisingly similar to [[W3Lect8 - F 2.3.23 - MATH 3003#Theorem 3.7 - Let $a,b,c in mathbb{Z}.$ Then $gcd(a+bc,b)=gcd(a,b)$.|thm. 3.7]])

Suppose $c|a$ for $i=1,2,...,n-1,n$.
Then since $c|a_{n-1} ~\land~c|a_{n}~,$
we have $c|gcd(a_{n-1},a_{n}).$

That is, $c|a_{i}$ for $i=1,2,...,n-2$ and $c|gcd(aa_{n-1},a_{n}).$

Conversely (this is fairly simply by definitions), 
suppose $c|a_{i}$ for $i=1,2,3,...,n-2$
and $c|gcd(a_{n-1},a_{n}).$ Since divisibility is transitive,
$c|gcd(a_{n-1},a_{n})\implies c|a_{n-1} ~\land~ c|a_{n}.$

But then $c|a_{i}$ for $i=1,2,...,n$.
$q.e.d.$

---

### E.g. 1 - $gcd(6,10,15)$

$Sol^n:$
According to the lemma, $gcd(6,10,15)$
$=gcd(6,gcd(10,15))=gcd(6,5)=1.~~~\blacksquare$

Also since gcd is commutative, $gcd(6,10,15)$
$=gcd(gcd(6,10),15)=gcd(2,15)=1.~~~\blacksquare$


### E.g. 2 - $gcd(8,12,16,116)$
$Sol^n:$
$gcd(\boxed{8,12},16,116)$
$=gcd(gcd(8,12),16,116)$
$=gcd(\boxed{4,16},116)$
$=gcd(gcd(4,16),116)$
$=gcd(4,116)=4.~~~\blacksquare$


---
## Mutually vs. Pairwise, Relatively Prime.

### 1. Mutually Relatively Prime (MRP)
$Def^n:$ We say the numbers $a_{1},a_{2},a_{3},...,a_{n}$
are "mutually relatively prime" (or coprime) if $gcd(a_{1},a_{2},...,a_{n})=1.$

### 2. Pairwise Relatively Prime (PRP)
$Def^n:$ We say the numbers $a_{1},a_{2},a_{3},...,a_{n}$
are "pairwise relatively prime" if $gcd(a_{i},a_{j})=1$ where $i\neq j.$

We can observe
$PRP\implies MRP$
but 
$MRP\cancel\implies PRP$


---

# $\S$ 3.4 - The Euclidian Algorithm
## Lemma
Let $x,y\in \mathbb{N}~~~$ (Assume $x\geq y$).
Let $q$ be the quotient when $x$ is divided by $y,$
and let $r$ be the remainder.
(so $x=yq+r,~q,r\in \mathbb{Z},~0\leq r < y$).

Then $gcd(x,y)=gcd(y,r).$

$Proof:~~~$ $r=x-yq,$ so by [[W3Lect8 - F 2.3.23 - MATH 3003#Theorem 3.7 - Let $a,b,c in mathbb{Z}.$ Then $gcd(a+bc,b)=gcd(a,b)$.|thm. 3.7,]]
$gcd(x,y)=gcd(x-yq,y)=gcd(r,y)=gcd(y,r)$
$q.e.d.$


---
## Theorem (Euclidian Algorithm)
Let $a,b \in \mathbb{N}$ with $a\geq b.$
Put $r_{0}$ and $r_{1}=b.$

For $j\geq 0,$ let $r_{j+2}$ be the remainder when $r_{j}$ is
divided by $r_{j+1}.~~~$ (So $r_{j}=r_{j+1}q_{j+1}+r_{j+2},~0\leq r_{j+2}<r_{j+1}$)

Assume $r_{j+2}\neq 0$ for $j=0,1,2,3,...,n-2,$
but then $r_{j+1}=0.$ Then $gcd(a,b)=r_{n}.$ 
(i.e. $gcd(a,b)$ is the last common divisor after reapplying this over and over, $r_{n}$).

---
### E.g. 1 - $gcd(143,29)$
$Sol^n:$
$143=29(~~~~~)+~~~~~?$
$143=29(4)+27?$

Now
$143=\boxed{29}(4)+\boxed{27}?$
and shift it over as such
$\boxed{29}=\boxed{27}(~~~~~)+~~~~~?$

Now repeat,
$29=27(1)+2$
$27=2(13)+1$
$2=\boxed{1}(2)+0$
Last divisor is gcd of a,b.
$\therefore gcd(143,29)=1$

<br>

### E.g. 2 - $gcd(132,36)$
$Sol^n:$
$132=26(3)+24$
$36=24(1)+12$
$24=12(2)+0$
$\therefore gcd(132,36)=12.~~~\blacksquare$

<br>

### E.g. 3 - $gcd(60,20)$
$Sol^n:$
$60=20*3+0$ done...
$\therefore gcd(60,20)=20$

![[Euclid Alg Diagram.pdf]]

---
## How to compute large GCD's with Euclidean Algorithm
Each step in the Euclidean Algorithm, may be difficult if the numbers are large. To compute these with a calculator more efficiently, we may use the following claim:

Let $a,b\in \mathbb{N}.$
By the Division Algorithm, write

$a=bq+r,~q\in \mathbb{Zr\in \{0,1,2,...,n-1\}},$

Claim: $q=\left\lfloor \dfrac{a}{b} \right\rfloor$

$Justification:$
Let $q\in \mathbb{Z}.$
$q=\dfrac{q-r}{b}\leq \dfrac{a}{b} + \left(\dfrac{-r}{b}+1\right)= \dfrac{a}{b}+ \dfrac{b-r}{b} >\dfrac{a}{b}$
since $b-r>0.$

Also
$q\leq \dfrac{a}{b} <q+1$

But since $q\in \mathbb{Z} ~\land~ q\leq \dfrac{a}{b} <q+1$
$\implies q= \left\lfloor \dfrac{a}{b} \right\rfloor$

---
## Bezout Coefficients
We will talk next time, 

By Bezout's thm, if $a,b\in \mathbb{Z},$ and $d=gcd(a,b)$
then $\exists~m,n\in \mathbb{Z},~s.t.~d=am+bn.$

Such $m$ & $n$ are dubbed "a Bezout Coefficients for $a$ and $b$". 