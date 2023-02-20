## Exercises B.1-B.7
Dean Quach
![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=398]]

---
### Exercise B.1. - Let $A$, $B$ and $C$ be subsets of the set $\Omega$. 
#### (a) Let D be the set of elements that are in exactly two of the sets A, B and C. Using unions, intersections and complements express D in terms of A, B, and C. 
$Sol^n:$
So $D$ can be in $A$ and $B$, but not $C \implies$
$$D \subseteq A ~\land~ D \subseteq B ~\land~ D \subsetneq C$$
$$\implies D\subseteq ABC^\mathsf{C}.$$
Similar arguments can be made for being in $A \land C$ but not $B$, and being in $B \land C$ but not $A$.

So, 
$$D\subseteq ABC^\mathsf{C} \lor AB^\mathsf{C}C \lor A^\mathsf{C}BC $$
$$\implies D\subseteq ABC^\mathsf{C} ~\cup~ AB^\mathsf{C}C ~\cup~ A^\mathsf{C}BC.~~~~~\blacksquare$$

#### (b) Let $E$ be the set of elements that are in at least two of the sets $A$, $B$ and $C$. Using unions, intersections and complements express $E$ in terms of $A$, $B$, and $C$.
$Sol^n:$
The difference between $E$ and $D$ from part (a) is that the elements are in "at least 2", not "exactly 2/only 2" of $A,B,C$. So we know

$$E\subseteq ABC^\mathsf{C} \lor AB^\mathsf{C}C \lor A^\mathsf{C}BC $$
and also
$$E \subseteq A ~\land~ E \subseteq B ~\land~ E \subseteq C$$
$$\implies E\subseteq A\cap B\cap C \implies E\subseteq ABC$$

So consequently, from part (a) and what we know, 
$$E\subseteq (ABC^\mathsf{C} ~\cup~ AB^\mathsf{C}C ~\cup~ A^\mathsf{C}BC) ~\lor~ABC$$ 
$$\implies E\subseteq ABC^\mathsf{C} ~\cup~ AB^\mathsf{C}C ~\cup~ A^\mathsf{C}BC ~\cup~ ABC. ~~~~~\blacksquare$$

--- 

### Exercise B.2. - Let $A$, $B$ and $C$ be subsets of the set $\Omega$. Various other sets are described below in words. Use unions, intersections and complements to express these in terms of $A$, $B$ and $C$. 
#### (a) The set of elements that are in each of the three sets. 
$Sol^n:$ Let the set above be denoted by $D$.
Then 
$$D=A\cap B\cap C.~~~\blacksquare$$

#### (b) The set of elements that are in A but neither in B nor in C. 
$Sol^n:$ Let the set above be denoted by $E$.
Then $$\forall x_i\in E, ~x_i\in A, ~x_i\notin B, ~x_i\notin C.$$
So this implies
$$~x_i\in A, ~x_i\in B^\mathsf{C}, ~x_i\in C^\mathsf{C}$$
$$ \implies x_i\in A \cap B^\mathsf{C} \cap C^\mathsf{C}$$
Therefore
$$ E = A \cap B^\mathsf{C} \cap C^\mathsf{C}.~~~\blacksquare $$

#### (c) The set of elements that are in at least one of the sets A or B. 
$Sol^n:$ Let the set above be denoted by $F$.
Then $$F=A\cup B.~~~\blacksquare$$

#### (d) The set of elements that are in both A and B but not in C. 
$Sol^n:$ Let the set above be denoted by $G$.
Then $$G=A\cup B$$ 
but $$G=C^\mathsf{C}.$$
So $$G=(A\cup B)\cup C^\mathsf{C}.~~~\blacksquare$$

#### (e) The set of elements that are in A, but not in B or C or both. 
$Sol^n:$ Let the set above be denoted by $H$.
Then $$H=A ~\land~ H=B^\mathsf{C} ~\land~ H=C^\mathsf{C} $$
So $$H=A \cap B^\mathsf{C} \cap C^\mathsf{C}. ~~~\blacksquare$$

---

### Exercise B.3. - Let $\Omega$ be the set $\{1, 2, . . . , 100\}$, and let $A$,$B$ and $C$ be the following subsets of $\Omega$: $A = \{positive ~even ~numbers ~which ~are ~at ~most ~100\},$ $B = \{two-digit ~numbers ~where ~the ~digit ~5~ appears\},$ $C = \{positive~ integer ~multiples ~of ~3 ~which ~are~ at ~most~ 100\},$ $D = \{two-digit ~numbers~ such ~that ~the ~sum~ of ~the ~digits ~is ~10\}.$ List the elements of each of the following sets. 

Note:
- $A=\{ 2,4,6,...,96,98,100 \} = \big\{  n\in \mathbb{Z} ~\big|~ n=2k, ~for~ some ~k\in \mathbb{Z},~1 \leq k \leq 50 \big\}$
- $B=\{ 15,51,25,52,...,55,...,85,58,95,59 \} = \big\{ m\in \mathbb{Z} ~\big|~  m=10l+5,~for~some~l\in \mathbb{Z},~1\leq l \leq 9   \big\} \cap \big\{  p\in \mathbb{Z} ~\big|~ ,~51\leq p\leq 59  \big\}$
- $C=\{ 3,6,9,...,93,96,99 \} = \big\{  x\in \mathbb{Z} ~\big|~ x=3y, ~for~ some ~y\in \mathbb{Z},~1 \leq y \leq 33 \big\}$
- $D=\{ 19,28,37,46,64,73,82,91 \}$


#### (a) $B \backslash A$ 
$Sol^n:$
$$B\backslash A = \{ 15,51,25,52,...,55,...,85,58,95,59 \} \backslash  \{ 2,4,6,...,96,98,100 \} $$
$$= \Big(\big\{ m\in \mathbb{Z} ~\big|~  m=10l+5,~for~some~l\in \mathbb{Z},~1\leq l \leq 9   \big\} \cap \big\{  p\in \mathbb{Z} ~\big|~ ,~51\leq p\leq 59  \big\} \Big) \backslash \big\{  n\in \mathbb{Z} ~\big|~ n=2k, ~for~ some ~k\in \mathbb{Z},~1 \leq k \leq 50 \big\}$$
$$=  \{   15,51,25,35,53,45,55,65,75,57,85,95,59   \}. ~~~\blacksquare$$

#### (b) $A \cap B \cap C ^\mathsf{C}$
$$A \cap B \cap C ^\mathsf{C} = \{ 2,4,6,...,96,98,100 \} \cap \{ 15,51,25,52,...,55,...,85,58,95,59 \} \cap \{ 3,6,9,...,93,96,99 \} ^\mathsf{C}$$
$$ = \{ 2,4,6,...,96,98,100 \} \cap \{ 15,51,25,52,...,55,...,85,58,95,59 \} \cap \{ 1,2,~4,5,~7,8,...,94,95,~97,98,~100 \} $$
Notice $A\subseteq C^\mathsf{C} \implies \{ 2,4,6,...,96,98,100 \} \subseteq \{ 1,2,~4,5,~7,8,...,94,95,~97,98,~100 \}$
$$ = \{ 15,51,25,52,35,53,45,54,55,65,56,75,57,85,58,95,59 \} \cap \{ 1,2,~4,5,~7,8,...,94,95,~97,98,~100 \}. $$
And now we just need to check which elements of $B$ do not divide $3$.
So 
$$   A \cap B \cap C ^\mathsf{C} = \{50, 52, 56, 58\}.~~~\blacksquare   $$


#### (c) $((A \backslash D) \cup B) \cap (C \cap D)$
$Sol^n:$
$$((A \backslash D) \cup B) \cap (C \cap D)$$ 
$$= ((\{ 2,4,6,...,96,98,100 \} \backslash \{ 19,28,37,46,64,73,82,91 \}) \cup \{ 15,51,25,52,...,55,...,85,58,95,59 \}) \cap (\{ 3,6,9,...,93,96,99 \} \cap \{ 19,28,37,46,64,73,82,91 \}),$$
interestingly, $C\cap D = \emptyset$, since we're looking for numbers that are divisible by $3$.  But the trick of adding the digits implies $10$, but $3|10$. So no elements lie in $C\cap D$.
but this implies nothing is in the intersection between $((A \backslash D) \cup B)$ and $(C \cap D)$

So
$$((A \backslash D) \cup B) \cap (C \cap D)=\emptyset. ~~~\blacksquare$$

--- 
### Exercise B.4. - Show that identity (B.2) is true. 
#### Identity (B.2) is a the "de Morgan" Law: $\left( \bigcap\limits_i A_i\right)^\mathsf{C}=\bigcup\limits_i A_i^\mathsf{C}$
$Proof:$ 

Let $x \in \left( \bigcap\limits_i A_i\right)^\mathsf{C}$. 
Then $x \notin \bigcap\limits_i A_i$,
which implies $x \in A_i^\mathsf{C}$, for some $i\in \mathbb{Z}$.
Then $\bigcup\limits_i A_i^\mathsf{C}$
Hence, $\left( \bigcap\limits_i A_i\right)^\mathsf{C}   \subseteq  \bigcup\limits_i A_i^\mathsf{C}$
$$  ~~$$

Now let $x \in \bigcup\limits_i A_i^\mathsf{C}$. 
Then $x \in A_i^\mathsf{C}$, for some $i\in \mathbb{Z}$.
Then $x \notin A_i$, for some $i\in \mathbb{Z}$.
But then! $x \notin \bigcap\limits_i A_i$,
which implies $x \in \left( \bigcap\limits_i A_i\right)^\mathsf{C}$. 
Hence, $\bigcup\limits_i A_i^\mathsf{C} \subseteq \left( \bigcap\limits_i A_i\right)^\mathsf{C}$.

Therefore, 
$\left( \bigcap\limits_i A_i\right)^\mathsf{C}=\bigcup\limits_i A_i^\mathsf{C}$
$q.e.d.$







---
### Exercise B.5. - If $A$ and $B$ are sets then let $A\triangle B$ denote their symmetric difference: the set of elements that are in exactly one of the two sets. (In words this is “$A$ or $B$, but not both.”) 
#### (a) Express $A\triangle B$ from $A$ and $B$ using unions, intersections and complements.
$Sol^n:$
$$A\triangle B = (A \cap B^\mathsf{C}) \cup (B\cap A^\mathsf{C}). ~~~\blacksquare$$

#### (b) Show that for any three sets $A$,$B$ and $C$ we have $A\triangle (B\triangle C) = (A\triangle B)\triangle C$. 
$Proof:$
Let $x\in A\triangle (B\triangle C)$.
Then $x\in (A \cap (B\triangle C)^\mathsf{C}) \cup ((B\triangle C)\cap A^\mathsf{C})$
and $x\in (A \cap (B\triangle C)^\mathsf{C}) \cup (A^\mathsf{C} \cap ((B\cap C^\mathsf{C})\cup (B^\mathsf{C} \cap C)))$
$=(A \cap ((B\cup C) \cap (B^\mathsf{C} \cup C^\mathsf{C}))^\mathsf{C})   \cup  (A^\mathsf{C} \cap ((B\cap C^\mathsf{C})\cup (B^\mathsf{C}\cap C)))$
$=(A \cap ((B \cup C)^\mathsf{C} \cup (B^\mathsf{C} \cup C^\mathsf{C})^\mathsf{C})^\mathsf{C}) \cup (A^\mathsf{C} \cap B \cap C^\mathsf{C}) \cup (A^\mathsf{C} \cap B^\mathsf{C} \cap C)$
$=(A \cap ((B^\mathsf{C} \cap C^\mathsf{C}) \cup (B \cap C))) \cup (A^\mathsf{C} \cap B \cap C^\mathsf{C}) \cup (R^\mathsf{C} \cap B^\mathsf{C} \cap C)$
$=(A \cap B^\mathsf{C} \cap C^\mathsf{C}) \cup (A \cap B \cap C) \cup (A^\mathsf{C} \cap B \cap C^\mathsf{C}) \cup (A^\mathsf{C} \cap B^\mathsf{C} \cap C^\mathsf{C})$

$=(A \cap B^\mathsf{C} \cap C^\mathsf{C}) \cup (A^\mathsf{C} \cap B \cap C^\mathsf{C}) \cup (A^\mathsf{C} \cap B^\mathsf{C} \cap C^\mathsf{C}) \cup (A \cap B \cap C)$
$=(A\cap B^\mathsf{C} \cap C^\mathsf{C}) \cup (A^\mathsf{C}\cap B\cap C^\mathsf{C}) \cup (((A^\mathsf{C} \cap B^\mathsf{C})\cup(A\cap B))\cap C)$
$=(A\cap B^\mathsf{C} \cap C^\mathsf{C}) \cup (A^\mathsf{C} \cap B \cap C^\mathsf{C}) \cup (((A \cup B)^\mathsf{C} \cup (A^\mathsf{C} \cup B^\mathsf{C})^\mathsf{C})\cap C^\mathsf{C})$
$=(((A\cap B^\mathsf{C})\cup (A^\mathsf{C} \cap B)) \cap C^\mathsf{C}) \cup (((A \cup B) \cap (A^\mathsf{C} \cup B^\mathsf{C}))^\mathsf{C} \cap C)$
=$(((A\cap B^\mathsf{C}) \cup  (A^\mathsf{C} \cap B))\cap C^\mathsf{C})    \cup    ((A\triangle B)^\mathsf{C} \cap C)$
$=((B\triangle C)\cap A^\mathsf{C}) \cup (A \cap (B\triangle C)^\mathsf{C})$
$=(A\triangle B)\triangle C$

The converse is trivial, work backwards. 
(Although, I am very sure there is a more efficient way to proove this.)
$q.e.d.$




--- 
### Exercise B.6. - Suppose that $A$ and $B$ are subsets of $\Omega$. Let $E = A \cap B$ and $F = A \cap B^\mathsf{C}$. 
#### (a) Show that $E$ and $F$ are disjoint, i.e. that $E \cap F = \emptyset$. 
$Sol^n:$
Let $E = A \cap B$ and $F = A \cap B^\mathsf{C}$. 
Then $E \cap F = (A \cap B) \cap (A \cap B^\mathsf{C})$
$= (A \cap A) \cap (B \cap B^\mathsf{C})$
$= (A \cap A) \cap \emptyset$
$= \emptyset.$

$\therefore E \cap F = \emptyset. ~~~\blacksquare$


#### (b) Show that $A = E \cup F$.
$Sol^n:$
Let $E = A \cap B$ and $F = A \cap B^\mathsf{C}$
Then $E \cup F = (A \cap B) \cup (A \cap B^\mathsf{C})$
$=((A \cap B) \cap A) \cup ((A \cap B) \cap B^\mathsf{C})$
$=((A \cap B) \cap A) \cup A$
$=(A \cap B) \cup A$
$=A. ~~~\blacksquare$

(definetly, incorrect).

---
### Exercise B.7. - Consider the following sets: $A = \{1, 2, 3, 4, 5, 6, 7\},~ B = \{2, 4, 6, 8\}, ~C = \{1, 3, 4, 7\}.$ 
#### (a) Decide whether the set $D = \{1, 3, 7\}$ can be expressed from $A$, $B$ and $C$ using unions, intersections and complements. 
$Sol^n:$
$A \cap (A \cap B^\mathsf{C})^\mathsf{C}$
So yes. $~~~\blacksquare$

#### (b) Decide whether the set $E = \{2, 4\}$ can be expressed from $A$, $B$ and $C$ using unions, intersections and complements
$Sol^n:$
No, since no combination of $A$ and $B$ can reduce down to $\{2, 4\}. ~~~\blacksquare$










