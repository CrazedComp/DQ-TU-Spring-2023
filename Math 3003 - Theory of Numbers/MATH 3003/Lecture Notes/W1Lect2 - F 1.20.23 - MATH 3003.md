### Theorem $\sqrt{2} \notin \mathbb{Q}$ [[W1Lect1 - W 1.18.23 - MATH 3003#Theorem $ sqrt{2} notin mathbb{Q}$| continued]].
$Proof:$ 

---
First we have two claims being the [[W1Lect1 - W 1.18.23 - MATH 3003#Questions (for Friday) | questions from last time.]]

- **Claim 1:  If $x\in S$, then $x\sqrt{2}\in S$.**

$x\in S \implies x\in\mathbb{N}$ and $\exists~y\in \mathbb{N},$
$s.t.~x=y\sqrt{2}$.

Then $x\sqrt{2}=(y\sqrt{2})\sqrt{2}=2y\in \mathbb{N}$, 
by closure (since we are assuming $\sqrt{2}$ is an integer, as well as by our $def^n$ of $\sqrt{2}^2=2$.

But then $x\in \mathbb{N}$, so $x\sqrt{2} \in S$.




- **Claim 2: If $x,y\in S,~x>y,$ then $x-y\in S$. **

Let $x,y \in S$, assume $x>y$.

Note $\exists~u,v \in \mathbb{N}~s.t.$
$x=u\sqrt{2}$ and $y=v\sqrt{2}$.

Also $x,y,\in \mathbb{N}$, so $x-y=u\sqrt{2}-v\sqrt{2}=(u-v)\sqrt{2}.$
$u,v\in \mathbb{Z},$ so $u-v\in \mathbb{Z}$ by closure.

Set $x-y>0$ and $x-y \in \mathbb{Z}$, then clearly $x-y \in \mathbb{N}$.

Since $\sqrt{2}$ and $x-y>0$, then $u-v>0$ as well.
So $u-v\in \mathbb{N}$ and then $x+y\in S$

---
$(The~rest~of~the)~Proof:$ 

We know that $1<\sqrt{2}<2$ by our observation with IVT.

So consider $q\sqrt{2} - q$.
By **Claim 1 & 2**, $q\sqrt{2}-q\in S$. 
But also $q(\sqrt{2} -1)<q$ since $\sqrt{2}-1<1$. 

Contradiction! Since $q\neq min(S)$.

So $\therefore \sqrt{2} \in \mathbb{Q}$.
$q.e.d.$


--- 
## The Floor Function
$Def^n:$ Let $x\in \mathbb{R}$.

$\lfloor x \rfloor$ is the largest integer which is less than or equal to $x$.
- Read: "The floor of x".

In other words:
$\lfloor x \rfloor$ is the unique integer 
$s.t.~\lfloor x \rfloor \leq x < \lfloor x \rfloor +1$,
(we will use this property/definition more).

### E.g.'s
- $\lfloor -8 \rfloor = -8$ 
- $\lfloor 14 \rfloor = 14$ 
- $\lfloor e \rfloor = 2$ 
- $\lfloor \pi \rfloor = 3$ 
- $\lfloor \frac{3}{4} \rfloor = 0$ 
- $\lfloor 41.2 \rfloor = 41$ 
- $\lfloor \sqrt{2} \rfloor = 1$ 
- $\lfloor -e \rfloor = -3$ 
- $\lfloor -41.2 \rfloor = -42$ 
- $\lfloor -\pi \rfloor = -4$ 

--- 
### $Prop^n:$ Let $y\in \mathbb{R},~n\in \mathbb{Z}$. Then $\lfloor y+n \rfloor = \lfloor y \rfloor +n$ .

$Proof:$ We know, 
$\lfloor y \rfloor \leq y < \lfloor y \rfloor +1$,
and that $\lfloor y \rfloor \in \mathbb{Z}$.

Adding $n$ to each section we obtain,
$\lfloor y \rfloor +n \leq y+n < \lfloor y \rfloor +n+1$.

Now let $q = \lfloor y \rfloor +n$, then $q\in \mathbb{Z}$ by closure,
and then $q\leq y+n <q+1$. But! the only integer solution to this is $\lfloor y+n \rfloor$.

So $\lfloor y \rfloor +n = q = \lfloor y+n \rfloor$.

$q.e.d.$

--- 
### Other quick notes... 
Notation that is common given this context, but won't be used much in this course, is 
$$\{x\} = x-\lfloor x \rfloor:= \text{"The Decimal Part of a Real Number"}.$$

e.g. $\{ \pi \}= 0.1415926535897932384626433832795028841971...$
<br>
### The Ceilng function
This isn't used much, and wasn't talked about by Osborne, so I assume we won't use it much in this course. But the companion to the Floor function is
$Def^n:$ Let $x\in \mathbb{R}$.

$\lceil x \rceil$ is the *smallest* integer which is *greater* than or equal to $x$.
- Read: "The ceiling of x".

In other words:
$\lceil x \rceil$ is the unique integer 
$s.t.~\lceil x \rceil -1 < x \leq \lceil x \rceil$.


---
# $\S$ 1.5: Divisibility
$Def^n:$ Let $a,b=\mathbb{Z}$ and assume $a\neq 0$.

We write $a|b$ is $\exists c\in \mathbb{Z}~s.t.~ac=b$.
- Read: "a divides b".

This can be extended so that $0|0$.

### E.g.'s
- $17|51$ since $\exists c \in mathbb{z}~s.t.~17*c=51.$ Namely, $c=17$. So $17*3=51$.
- $-8|48$ since $-8*(-6)=48$
- $25|100$ since $25*(4)=100$
- $7|21$ since $7*(-3)=-21$
Noting that in all cases, $3, -6, 4, -3 \in \mathbb{Z}$.

But (for example), $13 \nmid 10$ since $13*0=0\neq 10$
and if $k\in \mathbb{Z} \backslash \{0\},$ then
$|13*k|=13|k| \geq 13*1=13$
so $13k\neq 10$.

In general, if $|a|>|b|$ and $b\neq 0$, 
then $a \nmid b$.

--- 
## Properties of Divisibility
Let $a,b,c \in \mathbb{Z}$,
1. Divisibility is preserved w/ lin. comb.'s: If $c|a \land c|b$, then $\forall x,y \in \mathbb{Z},~c|(ax+by)$ 
2. Transitivity: If $a|b, ~b|c$, then $a|c$ 

### Proof of Property 1
Suppose $\exists ~u,v\in \mathbb{Z}~s.t.$
$cu=a$ and $cv=b$.

Let $x,y \in \mathbb{Z}$.
Then $ax+by=(cu)x+(cv)y=c(ux+vy)$.
By closure $ux+vy \in \mathbb{Z}$.
So we have shown $c|ax+by. ~~~\blacksquare$

### Proof Property 2
Let $a|b \land b|c$.
Then $\exists u,v\in \mathbb{Z}~s.t.$
$b=au, c=bv$. 

Then $c=(au)v=a(uv)$.
$uv\in \mathbb{Z}$ by closure.
$\therefore a|c.~~~\blacksquare$

---

## Theorem - The Division Algorithm

Let $a\in \mathbb{Z}$ and $b\in \mathbb{N}$.
Then there is a unique pair of integers, $q$ and $r$, $s.t.$ $a=bq+r$ with $0\leq r <b$.

Small note: $q = \lfloor \frac{a}{b} \rfloor$.

We call $q$ the quotient of $\frac{a}{b}$, and $r$ the remainder.

Sometimes, we say $r=a~mod~b$.

[[W2Lect3 - M 1.23.23 - MATH 3003#TU Spring 2023/MATH 3003/Lecture Notes/Lecture 2. F 1-20-23 Theorem - The Division Algorithm Recall: The Division Algorithm|More on divisibility]]










