# $\S$ 1.1 - Numbers

Recall: 
## Arithmetic Properties of [[Real Numbers]]

Let $a,b,c\in \mathbb{R}$. Then
1. $(a+b)+c=a+(b+c)$ [[additive associativity]]
2. $a+b=b+a$ [[additive commutativity]]
3. $\exists!~0\in\mathbb{R},~s.t.~\forall x\in \mathbb{R},~0+x=x+0=x$ [[additive neutral/identity]]
4. $\forall x\in\mathbb{R},~\exists!~y\in\mathbb{R},~s.t.~x+y=y+x=0~\implies (y=-x)$ [[additive inverse]]
---
5. $(ab)c=a(bc)$ [[multiplicative associativity]]
6. $ab=ba$ [[multiplicative commutativity]]
7. $\exists!~1\in\mathbb{R},~s.t.~\forall x\in \mathbb{R},~1*x=x*1=x$ [[additive neutral/identity]]
8. $\forall x\in\mathbb{R}\backslash\{0\},~\exists!~y\in\mathbb{R},~s.t.~xy=yx=1~\implies (y=\frac{1}{x}=x^{-1})$ [[additive inverse]] ^8dd19f
---
9. $a(b+c)=ab+ac$ [[distributivity over the field of integers]]
10. $(b+c)a=ba+ca=ab+ac$ [[multiplicative commutativity]]
---
But $\mathbb{R}$ is a [[field]], which makes it pretty boring (for now).
What we want to study is the [[Ring of Integers]]
$$\mathbb{Z}=\{0,\pm1, \pm2, \pm3,...\}.$$
Well, note: all [[#Arithmetic Properties of Real Numbers]] hold for $\mathbb{Z}$, except for [[#^8dd19f | 8.]]


## Closure Properties of $\mathbb{Z}$
Let $a,b\in\mathbb{Z}$
Then also $a+b,~a-b,~$and $ab$ lie in $\mathbb{Z}$. 

We can be advantageous, since we know multaplicative properties of negatives, i.e. $(++\implies+),~(+-\implies-),~(-+\implies-),~(--\implies+)$, so let's just consider the Natural Numbers $:=~~\mathbb{N}=\{1,2,3,4,...\}$.

## Well-Ordering Principle (WOP)
If $S\subseteq N$ and $S\neq \emptyset$, then $S$ has the least element. 

---
Less mentioned, the [[Rational Numbers]]
$$ \mathbb{Q}= \left\{ \frac{a}{b} ~:~ a,b,\in\mathbb{Z},~b\neq 0 \right\}, $$
where $\frac{a}{b}=a*\frac{1}{b}=a*b^{-1}$.

---

### Ex. 1: Show that $\forall x\in \mathbb{R},~0*x=0$.
$Sol^n:$
$0*x=(0+0)*x$ since $0+0=0$ by observation. 
$(0+0)*x=0*x+0*x$ by distributivity.

But note $(0*x)\in\mathbb{R}$, so an additive inverse exists, 
$\implies \exists ! ~y\in\mathbb{R},~s.t.~(0*x)+y=0 \implies y=-(0*x)$.

But then, 
$\implies (0*x)-(0*x)=((0*x)+(0*x))-(0*x)=(0*x)+((0*x)-(0*x))$ by associativity, 
$\implies 0=(0*x)+0=0*x$ since $(0*x)-(0*x)=0$ by $def^n$.

$\therefore ~ 0=0*x$. 
$q.e.d.$

<br>

### Ex. 2: Let $a,b\in\mathbb{R}$. Show that if $ab=0$, then $a=0 \lor b=0$.
$Proof:$
Either $a=0 \lor a\neq 0$. If $a=0$, then we're done!

Now, if $a\neq 0$, (WNTS $b=0$) then $a\in \mathbb{R}$ and $a$ has a multiplicative inverse $\implies a^{-1}=\frac{1}{a}$. 
So $ab=0 \implies \frac{1}{a}(ab)=0 \left( \frac{1}{a} \right)$. 

And by associativity, $\left( \frac{1}{a}a \right)b=0$ and by $def^n$. 
And by more $def^ns$, $1*b=0$. 

$\therefore ~b=0$.
$q.e.d.$

---
Note about $\mathbb{Q}$. 
If $a,b\in\mathbb{Q}$, is it true that 
1. $a+b\in\mathbb{Q}$? ^4dcd13
2. $ab\in\mathbb{Q}$?

Real quick, [[#^4dcd13| 1.]]
Well since $a\in\mathbb{Q}$, then by $def^n$, 
$\exists~x,y\in \mathbb{Z},y\neq0,~s.t.,~a=\frac{x}{y}$.

And similarly, $b\in\mathbb{Q} \implies$
$\exists~c,d\in \mathbb{Z},d\neq0,~s.t.,~b=\frac{c}{d}$.

Then $$a+b=\frac{x}{y}+\frac{c}{d}=\frac{x}{y}\frac{d}{d}+\frac{c}{d}\frac{y}{y}=\frac{xd}{yd}+\frac{cy}{dy}=\frac{xd+cy}{yd}.$$ 

Now, $x\in\mathbb{Z} \land d\in\mathbb{Z} \implies xd\in\mathbb{Z}$ by closure, and
$c\in\mathbb{Z} \land y\in\mathbb{Z} \implies cy\in\mathbb{Z}$ by closure. 

Notice that $xd+cy \in\mathbb{Z}$ by closure. 

Also $d\in\mathbb{Z} \land y\in\mathbb{Z} \implies dy\in\mathbb{Z}$.
Also also, earlier $\implies d\neq0 \land y\neq0$, so $dy\neq 0$ .

So $a+b=\frac{xd+yc}{dy}$ shows $a+b$ is a ratio of two integers with non zero denominator. 

$\therefore~a+b\in\mathbb{Q}$.
$q.e.d.$
---
Now, something different. From [[Calc I]], we know there is a positive number $\alpha,~s.t.~\alpha ^2=2$.
(note: $f(x)=x^2$ is continuous $\forall x\in\mathbb{R}$)

$Proof:$
Notice, $f(1)=1^2=1~~~<2$
and $f(2)=2^2=4~~~>2$

and $f$ is continuous on $[1,2]$, so by [[Intermediate Value Thm (IVT)]], 

$f(x)=2$ for some $x\in(1,2)$.
$q.e.d.$

<br>

But IVT is not unique, meaning "is there any other $\alpha,~s.t.~\alpha ^2=2$"?

---
### Theorem $\sqrt{2} \notin \mathbb{Q}$

$Proof:$ Suppose (BWOC), $\sqrt{2}\in\mathbb{Q}$. 

We know that $\sqrt{2}>0$ (so $a$ & $b$ have the same sign), and $\sqrt{2}=\frac{a}{b}$, for some $a,b\in\mathbb{N}$. (we can assume $\mathbb{N}$ since $-a*-b\in\mathbb{N}$)

Then $a=b\sqrt{2}$. 

Now consider $S=\left\{ m\in\mathbb{N}: \exists k\in\mathbb{N}~s.t.~m=k\sqrt{2} \right\}$.

Clearly, $S\subseteq \mathbb{N}$. 
And $a\in S$, so $S\neq \emptyset$.

Since $S\neq \emptyset \land S\subseteq \mathbb{N}$, then by WOP, $S$ has a least element. 
Say $q=min(S)$.
...
---
## Questions (for Friday)
1. If $x\in S$, is it true that $x\sqrt{2}\in S$?
2. If $x,y\in S$, is it true that $x-y\in S$?
	- Does your answer change if $x>y$.

Also read 1.1 and 1.5.

