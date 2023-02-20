## $\S$ 1.1 - 3,4,5 (Use the Well-Ordering Principle to show that $\sqrt{7}$ is irrational rather than the square root of 3), 6, 7, 8, 12, and 16.
Dean Quach

![[Kenneth H. Rosen - Elementary Number Theory-Pearson (2011).pdf#page=22]]
 

--- 
### Exercise 1.1.3 - Prove that both the sum and the product of two rational numbers are rational.

#### (a) Proof of the sum of two rational numbers being a rational number.
$Proof:$
Let $a,b\in \mathbb{Q}$.
Then $\exists~x,y,~y\neq 0~ s.t.~a=\dfrac{x}{y}$, 

and $\exists~n,m,~m\neq 0~s.t.~b=\dfrac{n}{m}$.

Then $a+b=\dfrac{x}{y} + \dfrac{n}{m} = \dfrac{x}{y}\left( \dfrac{m}{m} \right) + \dfrac{n}{m} \left( \dfrac{y}{y} \right)$

$= \dfrac{xm}{ym} + \dfrac{ny}{my} = \dfrac{xm+ny}{my}.$

Notice $xm+ny \in \mathbb{Z}$, by closure. Set $xm+ny=p$.
And $my \in \mathbb{Z}$, by closure. Set $my=q$
Also notice that $m\neq 0 \land y\neq 0$, 
so $my \neq 0 \implies q\neq 0$.

Hence, $a+b=\frac{p}{q},~for~some~p,q\in \mathbb{Z}, q\neq 0$.

Therefore,
$a+b \in \mathbb{Q}.$
$q.e.d.$


#### (b) Proof of the product of two rational numbers being a rational number.
$Proof:$
Let $a,b\in \mathbb{Q}$.
Then $\exists~x,y,~y\neq 0~ s.t.~a=\dfrac{x}{y}$, 

and $\exists~n,m,~m\neq 0~s.t.~b=\dfrac{n}{m}$.

Then $a*b=\dfrac{x}{y} * \dfrac{n}{m} = \dfrac{xn}{my}$.

Notice $xn \in \mathbb{Z}$, by closure. Set $xn=p$.
And $my \in \mathbb{Z}$, by closure. Set $my=q$
Also notice that $m\neq 0 \land y\neq 0$, 
so $my \neq 0 \implies q\neq 0$.

Hence, $a*b=\frac{p}{q},~for~some~p,q\in \mathbb{Z}, q\neq 0$.

Therefore,
$a*b \in \mathbb{Q}.$
$q.e.d.$


--- 
### Exercise 1.1.4 - Prove or disprove each of the following statements.
#### (a) The sum of a rational and irrational number is irrational.
$Proof:$
Let $a\in \mathbb{Q}$ and $b\notin\mathbb{Q}$
BWOC, assume that $a+b\in \mathbb{Q}$.

Then $a=\dfrac{x}{y},~for~some~x,y\in\mathbb{Z},~y\neq 0$, and 

$a+b=\dfrac{n}{m},~for~some~n,m\in\mathbb{Z},~m\neq 0$.

Then $a+b \implies \dfrac{x}{y} + b = \dfrac{n}{m}$.

But then 
$b = \dfrac{n}{m} - \dfrac{x}{y}$, and
by closure, we know $b\in\mathbb{Q}$.
Contradiction!

Therefore $a+b\notin \mathbb{Q}$
$q.e.d.$

#### (b) The sum of two irrational numbers is irrational.
$Sol^n:$
This is false. For example, take $a=\sqrt{2}$ and $b=-\sqrt{2}$.
Then $a\notin \mathbb{Q}$. 
And $b=-(\sqrt{2}).~\sqrt{2}\notin \mathbb{Q},$ so $b\notin \mathbb{Q}$
But, $a+b=\sqrt{2} + (-\sqrt{2}) = 0 \in \mathbb{Q}$.
$q.e.d.$



#### (c) The product of a rational number and an irrational number is irrational.
$Proof:$
Let $a\in \mathbb{Q}$ and $b\notin\mathbb{Q}$
BWOC, assume that $ab\in \mathbb{Q}$.

Then $a=\dfrac{x}{y},~for~some~x,y\in\mathbb{Z},~y\neq 0$, and 

$ab=\dfrac{n}{m},~for~some~n,m\in\mathbb{Z},~m\neq 0$.

Then $ab \implies \dfrac{x}{y} * b = \dfrac{n}{m}$.

But then 
$b = \dfrac{n}{m} * \dfrac{y}{x}$, and
by closure, we know $b\in\mathbb{Q}$.
Contradiction!

Therefore $a+b\notin \mathbb{Q}$
$q.e.d.$


#### (d) The product of two irrational numbers is irrational.
$Sol^n:$ 
This is false. For example, take $a=\sqrt{2}$ and $b=\sqrt{2}$.
Then $a,b\notin \mathbb{Q}$. But, $a*b=\sqrt{2} * \sqrt{2} = 2 \in \mathbb{Q}$.
$q.e.d.$



---

### Exercise 1.1.5 Modified - Use the well-ordering property to show that $\sqrt{7}$ is irrational.

I do not know if I am allowed to assume the facts we proved in class. So I will start from the "beginning".

$Proof:$
We know $\exists~a,~s.t.~a^2=7$. Since $f(x)=x^2$ is continuous $\forall x\in\mathbb{R}$.
Notice, $f(2)=2^2=4~~~<7$
and $f(3)=3^2=9~~~>7$
and $f$ is continuous on $[2,3]$, so by [[Intermediate Value Thm (IVT)]], 
$f(x)=7$ for some $x\in(2,3)$.

<br>


Suppose (BWOC), $\sqrt{7} \in \mathbb{Q}$. 

Then $\sqrt{7}>0$ and $\sqrt{7}=\dfrac{a}{b}$, for some $a,b\in\mathbb{N}$. (we can assume $\mathbb{N}$ since $-a*-b\in\mathbb{N}$)

Then $a=b\sqrt{7}$. 

Now consider $S=\big\{ m\in\mathbb{N}: \exists ~k\in\mathbb{N}~s.t.~m=k\sqrt{7} \big\}$.

<br>

Note:
- If $x\in S$, then $x\sqrt{7}\in S$.
	- $x\in S \implies x\in\mathbb{N}$ and $\exists~y\in \mathbb{N},$
	- $s.t.~x=y\sqrt{7}$.
	- Then $x\sqrt{7}=(y\sqrt{7})\sqrt{7}=7y\in \mathbb{N}$, 
	- by closure (since we are assuming $\sqrt{7}$ is an integer, as well as by our $def^n$ of $\sqrt{7}^2=7$.
	- But then $x\in \mathbb{N}$, so $x\sqrt{7} \in S$.

Also note:
- If $x,y\in S,~x>y,$ then $x-y\in S$. 
	- Let $x,y \in S$, assume $x>y$.
	- Note $\exists~u,v \in \mathbb{N}~s.t.$
	- $x=u\sqrt{7}$ and $y=v\sqrt{7}$.
	- Also $x,y,\in \mathbb{N}$, so $x-y=u\sqrt{7}-v\sqrt{7}=(u-v)\sqrt{7}.$
	- $u,v\in \mathbb{Z},$ so $u-v\in \mathbb{Z}$ by closure.
	- Set $x-y>0$ and $x-y \in \mathbb{Z}$, then clearly $x-y \in \mathbb{N}$.
	- Since $\sqrt{7}$ and $x-y>0$, then $u-v>0$ as well.
	- So $u-v\in \mathbb{N}$ and then $x+y\in S$

<br>

Of course, $S\subseteq \mathbb{N}$
and $a\in S$, so $S\neq \emptyset$.

Now since $S\neq \emptyset \land S\subseteq \mathbb{N}$, then by WOP, $S$ has a least element. 
Say $q=min(S)$.

<br>

We know that $2<\sqrt{7}<3$ by the IVT.

So consider the number $q\sqrt{7} - 2q$.
We now know that, $q\sqrt{7}-2q\in S$. 
But also $q(\sqrt{7} -2)<q$ since $\sqrt{7}-2<2$. 

Contradiction! Since $q\neq min(S)$.

So $\therefore \sqrt{7} \in \mathbb{Q}$.
$q.e.d.$

---
### Exercise 1.1.6 - Show that every nonempty set of negative integers has a greatest element.
$Sol^n:$
Let $A\neq \emptyset$ and $A=\{x\in\mathbb{Z}~:~x<0\}$.
Then consider $B = \{-y~:~y\in A\}$.
Then by WOP, $B$ has a least element, say it is $m=min(B)$.

Since $m\in B$, we know $m=-l,~for~some~l\in A$. 
Then it follows that $-m=l\in A$.
Also we can set $l<-m$ to avoid contradiction since $l$ is arbitrary. Then $-m \geq a_i,~\forall a_i\in A$.
$q.e.d.$

--- 
### Exercise 1.1.7 - Find the following values of the greatest integer function.
#### (a) $\lfloor 1/4 \rfloor$
$sol^n:~\lfloor 1/4 \rfloor = 0.~~~\blacksquare$

#### (b) $\lfloor -3/4 \rfloor$
$sol^n:~\lfloor -3/4 \rfloor = -1.~~~\blacksquare$

#### (c) $\lfloor 22/7 \rfloor$
$sol^n:~\lfloor 22/7 \rfloor = 21/7 = 3.~~~\blacksquare$

#### (d) $\lfloor -2 \rfloor$
$sol^n:~\lfloor -2 \rfloor = -2.~~~\blacksquare$

#### (e) $\lfloor \lfloor 1/2 \rfloor + \lfloor 1/2 \rfloor\rfloor$
$sol^n:~\lfloor \lfloor 1/2 \rfloor + \lfloor 1/2 \rfloor\rfloor = \lfloor 0 + 0\rfloor = 0.~~~\blacksquare$

#### (f) $\lfloor -3 + \lfloor  -1/2 \rfloor \rfloor$
$sol^n:~\lfloor -3 + \lfloor  -1/2 \rfloor \rfloor = \lfloor -3 + -1 \rfloor = \lfloor -4 \rfloor = -4.~~~\blacksquare$





---
### Exercise 1.1.8 - Find the following values of the greatest integer function.
#### (a) $\lfloor -1/4 \rfloor$
$sol^n:~\lfloor -1/4 \rfloor = -1.~~~\blacksquare$

#### (b) $\lfloor -22/7 \rfloor$
$sol^n:~\lfloor -22/7 \rfloor= -4 .~~~\blacksquare$

#### (c) $\lfloor 5/4 \rfloor$
$sol^n:~\lfloor 5/4 \rfloor =1.~~~\blacksquare$

#### (d) $\lfloor \lfloor 1/2 \rfloor \rfloor$
$sol^n:~\lfloor \lfloor 1/2 \rfloor \rfloor = \lfloor 0 \rfloor = 0.~~~\blacksquare$

#### (e) $\lfloor \lfloor 3/2 \rfloor + \lfloor -3/2 \rfloor\rfloor$
$sol^n:~\lfloor \lfloor 3/2 \rfloor + \lfloor -3/2 \rfloor\rfloor = \lfloor 1 + -2 \rfloor = -1.~~~\blacksquare$

#### (f) $\lfloor 3 - \lfloor  1/2 \rfloor \rfloor$
$sol^n:~\lfloor 3 - \lfloor  1/2 \rfloor \rfloor= \lfloor 3 - 0 \rfloor = 3.~~~\blacksquare$



---
### Exercise 1.1.12 - Show that $\lfloor x \rfloor + \lfloor x + 1/2 \rfloor = \lfloor 2x \rfloor$ whenever $x$ is a real number.
$Sol^n:$
Notice the inside of $\lfloor x + 1/2 \rfloor$ implies we should...

Let $x=\lfloor x \rfloor + a$ where $0\leq a < 1$
Now there are two cases:

<br>

**Case I: $0\leq a <\dfrac{1}{2}$**.

Notice that $x+\dfrac{1}{2}=(\lfloor x \rfloor + a)+\dfrac{1}{2}$

$=\lfloor x \rfloor + \left(a+\dfrac{1}{2}\right) < \lfloor x \rfloor +1$, 

since $a<\dfrac{1}{2}$ and $a+\dfrac{1}{2}<1$.

So then since $x+\dfrac{1}{2} < \lfloor x \rfloor +1$
Then $\left\lfloor x+\dfrac{1}{2} \right\rfloor = \lfloor x \rfloor$.

But then $\lfloor x \rfloor + \lfloor x + 1/2 \rfloor = \lfloor x \rfloor+\lfloor x \rfloor = 2\lfloor x \rfloor$.

Also $2x=2(\lfloor x \rfloor + a) = 2\lfloor x \rfloor+2a$.
And we know 
$2\lfloor x \rfloor +2a < 2\lfloor x \rfloor +1$ since $2a<1$.

So $\lfloor 2x \rfloor=2\lfloor x \rfloor$.
Hence 
$\lfloor x \rfloor + \left\lfloor x+\dfrac{1}{2} \right\rfloor=\lfloor x \rfloor+\lfloor x \rfloor = 2\lfloor x \rfloor=\lfloor 2x \rfloor.~~~\blacksquare$ 

<br>

**Case II: $\dfrac{1}{2}\leq a <1$**.
Then notice
$x+\dfrac{1}{2}=\lfloor x \rfloor + a+\dfrac{1}{2} < \lfloor x \rfloor +2$

So then we know, 
$\left\lfloor x+\dfrac{1}{2} \right\rfloor = \lfloor x \rfloor+2-1=\lfloor x \rfloor+1$

And also
$2x=2(\lfloor x \rfloor+a)=2\lfloor x \rfloor+2a<2\lfloor x \rfloor+2$
which implies $\lfloor 2x \rfloor=2\lfloor x \rfloor +1$

Finally for this case
$\lfloor x \rfloor + \left\lfloor x+\dfrac{1}{2} \right\rfloor=\lfloor x \rfloor+\lfloor x \rfloor +1= 2\lfloor x \rfloor+1=\lfloor 2x \rfloor.~~~\blacksquare$ 

$q.e.d.$


--- 
### Exercise 1.1.16 - Show that $-\lfloor-x\rfloor$ is the least integer greater than or equal to $x$ when $x$ is a real number.
$Sol^n:$
Let $x\in\mathbb{R}.$

If also $x\in\mathbb{Z},$
then $-\lfloor -x \rfloor=-(-x)=x$.

If $x\in \mathbb{R}$ and $x\notin \mathbb{Z}$,
then set $x=a+r$, where $a\in\mathbb{Z}$ and $0<r<1$.
(splitting up the whole number and decimal part)

Then $-\lfloor -x \rfloor=-\lfloor -a \rfloor-r=-(-a+\lfloor -r \rfloor)$
$=a-\lfloor -r \rfloor=a-(-1)=a+1$,
since $0<r<1 \implies -1<-r<0 \implies \lfloor -r \rfloor=-1$.
So in this case, $-\lfloor -x \rfloor=a+1$.
$q.e.d.$

